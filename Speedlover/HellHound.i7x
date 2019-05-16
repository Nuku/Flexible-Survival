Version 2 of HellHound by Speedlover begins here.
[Version 1 by Speedlover - Creation]
[Version 2 by Tin_Can - Expansion of Church Quest]

Section 1 - Basic setup

Overgrown Area is northwest of Dirty Sheds.

Table of GameRoomIDs (continued)
Object	Name
Overgrown Area	"Overgrown Area"

Overgrown Area is a Room.
The description of Overgrown Area is "[OvergrownBlockDesc]";

to say OvergrownBlockDesc:
	if daytimer is night:	[night]
		say "     At this time of night it's far too dark to make out much of the unlit, overgrown area.";
		if houndfromhell is true and isHellhound is false:
			say "[meetHellhound]";
		if hellHoundLevel > 1:
			say "[returntoHellhound]";
	else: [day]
		say "     Tucked away behind the sheds is a vacant area. Looks like at one point, another shed stood here, but was torn down. It's mostly nondescript, though with all the wild, woody bushes and overlong grass, you probably wouldn't be able to see anything if it WAS here. There are several patches of dead grass, spots where it has just withered and formed a dead circle... Weird.";

instead of sniffing the Overgrown Area:
	if daytimer is night:	[night]
		say "     The air smells strongly of smoke and brimstone.";
	else: [day]
		say "     The area mostly smells of the sea, but there is a faint hint of brimstone in the area.";


beachrape is a truth state that varies. beachrape is usually false.
houndfromhell is a truth state that Varies. houndfromhell is usually false.

to say beachrapetoggle:
	now beachrape is True;

Section 2 - Hellhound

to say hellhoundtoggle:
	now houndfromhell is true;

isHellhound is a truth state that Varies. isHellhound is usually false.
maleHound is a truth state that Varies. maleHound is usually false.
hellHoundLevel is a number that varies. hellHoundLevel is usually 0.

to say meetHellhound:
	say "     Movement in some bushes catches your attention. A sickly green-yellow light seems to emanate from them and some kind of large hound stalks out from amongst them. Bathed in an eerie, sourceless yellow light, the beasts fur is a dirty mix of browns, tufted and mussed all over as if uncared about. It is as big as a Great Dane, but there is no recognizable breed that you can use to name it.";
	say "     The beast cocks its leg and sends a strong stream of luminescent, yellow urine splashing into the grass before it seems to notice you. The stream falters then stops as it licks its muzzle and then begins to approach. There is something about the strange monster that tells you it isn't the same as the other infected creatures. A whiff of sulfur hits you as it stalks closer.";
	say "     If you're going to escape you'd best do so now. Shall you escape back south?";
	if Player consents:
		say "     Hastily backing away, you slip back amongst the sheds. The fel hound doesn't bother to follow."; [Escape Text.]
		move player to Dirty Sheds;
	else:
		say ""; [Hellhound introduction text?]
		say "     As you glance behind at the way you came, a large wall of greenish fire leaps up, making a crackling noise as it sets the grass beneath it alight, even though you can feel no heat. A soft lusty growl drags your attention back to the infernal four-legged beast you are now trapped with.";
		say "     'Oooh, what have we here? A mortal? How delicious!'"; [Gender detect line Removed]
		say "     He licks his lips as he regards you, seeming to peer straight into your mind, if not deeper, weighing your thoughts, desires, and lusts. 'You seem like the opportunistic type. I do believe I could offer you something you'd like, a great deal even, for it is something you can obtain no other way!'";
		say "     As the beast shifts a waft of sulfur threatens to choke you, and simply being close to the creature is making your stomach churn and feel nauseous, forcing you to clutch at it as you sink to your knees while trying to avoid throwing up. The movement means that your face is level with the infernal hounds muzzle as it reaches you.";
		say "     'I can make you immune to this strange little plague that is flowing about. I must admit, it is a WONDERFUL piece of work. But I don't think most of the victims would agree with my opinion.' He seems to muse on this fact of a moment as you start to get dizzy and lightheaded. 'A shame, but no matter. I can make you immune to it. Oh! and as a side effect, you'll probably be better able to tolerate my presence. In time, perhaps even come to enjoy it.'";
		say "     'So, will you let me change you, mortal? I do promise I don't want anything foolish or incorporeal like your soul. I am just a gate keeper after all. I have no use for such things.'";
		say "     Shall you accept the Hellhound's dark offer?";
		if Player consents:
			remove "Herm Preferred" from feats of Player, if present;
			if "Male Preferred" is listed in feats of Player or "Always Cocky" is listed in feats of Player:
				now isHellhound is true;
				now maleHound is True;
				now hellHoundLevel is 1;
				Hellhound infect male;
			else if "Female Preferred" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
				now isHellhound is true;
				now maleHound is false;
				now hellHoundLevel is 1;
				Hellhound infect female;
			else if Player is herm: [ Herm ]
				say "     The hellhound seems to let out a, indecisive 'hrrm,' sitting back on his haunches. 'Well, this causes something of a dilemma. Which of your sexes do I make use of?' The beast cocks his head sideways. 'You would probably rather be a male, yes?'"; [Prompt cock or pussy]
				if Player consents:
					now isHellhound is true;
					now maleHound is True;
					now hellHoundLevel is 1;
					Hellhound infect male;
				else:
					now isHellhound is true;
					now maleHound is false;
					now hellHoundLevel is 1;
					Hellhound infect female;
			else if Player is female:	[ Female]
				now isHellhound is true;
				now maleHound is false;
				now hellHoundLevel is 1;
				Hellhound infect female;
			else if Player is male:	[ Male]
				now isHellhound is true;
				now maleHound is True;
				now hellHoundLevel is 1;
				Hellhound infect male;
			else:	[ You poor neuter]
				say "     *snorts* 'You're of no use to me, mortal.";
		else:
			say "     The hellhound's tongue lolls out of its muzzle, yellow slime dripping from it as it gives a derisive snort. 'Such self deception... oh well. I will return when you realize it is what you truly want!' With that, the green flames flicker at its paws then suddenly shoot up in a column of fel fire before vanishing. Nothing remains but an ashen circle.";

to Hellhound infect female:
	say "     As you weakly nod your head, agreeing to the offer made by the foul beast, it lets out an unholy howl. The sound sends shivers throughout your body and echoes through your mind causing disgust and fear, making it impossible to stand. The hound lick his lips and paces around you, it doesn't take him long to make good on his offer however, letting out an eager growl and rearing onto its hind legs to push you back onto the ground with its huge paws.";
	say "     As you choke on the stench of sulfur, the beast takes the opportunity to press its muzzle against your lips, its tongue delving in. Your body spasms as it exhales... something intangible... yet somehow also fills your mouth completely. The strange yellow cloud flows down your throat, entering your lungs and your stomach. It soaks through your flesh and worms its way up into your mind, causing an agonizing pain that suddenly just... stops.";
	say "     The hellhound steps off you, taking a few steps back as you cough and splutter shaking your head as everything starts to... brighten? The shadows of the block no longer seem to hide anything. The stench is gone to as well as the urge to throw up. You look at your benefactor and can see the glint of your own eyes glowing yellow reflected in his. He just pants happily, pleased with his handiwork, dragging a slimy tongue over your cheek before beginning to tug clothing. He pushes with his paws and large head, maneuvering you onto your hands and knees so that he can continue his work. You no longer have any intention or ability to object, even if you had intended to originally. Even as you hear the tearing of fabric and cool air wash between your legs as he rips out the crotch of your pants deftly and moves to cover you, you accept it and wait. The canine's dirty fur drags against your cloths and his wet, piss-soaked sheath jerks and rubs over your exposed sex.";
	say "     'Give yourself to me, bitch. Seal your fate as one of my children and sluts.' You shiver as he pants hotly in your ear, mockingly issuing the order. And even as your mind babbles that you can't really mean to give into the demonic being, you feel your hips twitch back, your cunt lips spreading and pushing the beast's sheath back. The dirty, foul length starting to enter your passage.";
	say "     'Stop!' he orders, grasping your hips with his forelimbs and panting happily. A soft grunt then a happy whine heard from the infernal canine and then a flood of hot, liquid foulness starts to run down into you. The demon dog's paws shifting and pushing on your shoulders, making you lower your chest into the ground as his piss flows into you. Burning horribly, destroying your mortal flesh and leaving an unholy taint as he as he lets out a hiss of pleasure. 'Oh YESSSSSS!' His head tilts back, tongue lolling out of his muzzle and you feel a strange tightness start to form around your neck, growing firmer the longer you submit to this infernal hound. You don't get a chance to determine what it is however before the beast snarls and drives his cock home. His foul urine gushing out from around his cock, soaking your legs and forcing you to kneel in the growing puddle even as you feel his cock engorge and swell, filling your sex completely. With a final howl, he grinds his shaft into your cunt, rubbing the bunched up sheath against your cunt lips. With the length spasming inside you, you get a single rush of unimaginable, painful heat before blacking out.";
	WaitLineBreak;
	say "     You wake up several hours later with your clothing torn to ribbons and slimy, yellow-tinged seed forming a puddle between your legs. Feeling your neck, there is a seamless leather collar, engraved with strange infernal characters tightly wrapped around it. Somehow you've been brought back to the bunker, and true to the demon dog's words, you no longer show any signs of the infection. You seem to have been completely restored to a human form... except for one place. Between your legs is a lewd dripping demon bitch twat, swollen and puffy, leaking the hellhound's piss and cum as you hear a chuckle in your mind. 'Such a pretty bitch you are. Please, go out and enjoy yourself. You are now immune to the changes, just as I promised, as one of us. You will easily return to the form you want to hold, with one or two things that can't be hidden. Such are the rules, there must always be SOME kind visible proof or our infernal origins. Return to me once you a properly... ready,' the voice says, fading out and leaving you alone with your thoughts in the bunker.";
	say "     Your insides clench with a fiery heat, longing to have a litter of hellhound pups gestating inside you.";
	if Humanity of Player > 50, now humanity of Player is 50;
	now skin of Player is "smooth";
	now face of Player is "leather dog collar around your neck, and a charmingly human";
	now tail of Player is "";
	now Cock of Player is "";
	now body of Player is "appears perfectly human at first, but on your belly there are six nipples, and between your legs rests a swollen, permanently in-heat Hellhound twat";
	now bodyname of Player is "Hellhound";
	now facename of Player is "Hellhound";
	now skinname of Player is "human";
	now cockname of Player is "Hellhound";
	now tailname of Player is "human";
	now scalevalue of Player is 3;
	now bodydesc of Player is "[one of]average[or]normal[or]unchanged[at random]";
	now bodytype of Player is "human";
	now SleepRhythm of Player is 0;
	now Cunt Count of Player is 1;
	now Cunt Depth of Player is 6;
	now Cunt Tightness of Player is 4;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 2;
	now Libido of Player is 100;
	now hellHoundLevel is 1;
	move player to Bunker, without printing a room description;
	follow turnpass rule;

to Hellhound infect male:
	say "     As you weakly nod your head, agreeing to the offer made by the foul beast, it lets out an unholy howl. It sends shivers throughout your body and echoes through your mind causing disgust and fear, making it impossible to stand. The hound lick his lips and paces around you. It doesn't take him long to come to a rather surprising decision. 'Hrm... I think this will work better if I look like... this.' The hellhound's form ripples and seems to blur in front of you, its shoulders becoming rounder, lines softer as it shifts to become a she as you watch.";
	say "     'Yes, I think this will work MUCH better for dealing with you.' She seems to smirk as she saunters over, rearing up on her hind legs and resting the large, wickedly clawed paws on your shoulders, touching her nose against yours as her foul, sulfurous breath washes over your face, making you choke and gag. As soon as your mouth opens she pushes her bestial lips against yours, forcing your mouth open wider and sliding her tongue in. Something else enters you at the same time, locking your jaw open as what seems to be yellow mist fills your mouth, then slides down your throat and into your lungs. It seeps up into your mind, the last causing agonizing pain for a brief moment before it... stops? You fall onto your back, gasping and spluttering as an unnatural heat seeming to wash over your entire body, burning out the infectious nanites and seeming to meld your flesh back into a human form. Eventually it all comes to an end, giving you the opportunity to sit back up with a pained groan and to blink away the tears.";
	say "     A happy rumble draws your attention, lying on her side, in the puddle of piss made back when she was a he, the hellhound bitch lounges. With a coy wink, she lifts a hind leg, rolling onto her back and exposing her sickeningly dirty, swollen, and leaking sex. The sight of it makes your member feel tight... wait tight? Glancing into your pants you find that between your legs you are NOT human. You possess a hellhound's sheath tight around the swelling, canine cock, yellowish seed leaking from your cock tip as the bitch talks seductively.";
	say "     'Now then handsome, how about you make good use of that wonderful length of yours, hrrm?' Lust surges through you, crawling on your hands and knees you ignore your jabbering mind as it tries to stop you, coming to kneel over the infernal bitch as she coyly licks your face. You reach back and grab your foul canine cock, pulling the sheath back and pushing your tip just inside the bitch, rubbing it back and forth as she lets out a lusty growl and tries to wriggle back onto the member. While keeping yourself from sliding any deeper, you slip both hands behind her head and hold her ears, squeezing and stroking them. You let out a feral growl from your human throat, then begin to flood her with your piss. The flow seems to come from a bottomless pit inside you, washing down and filling her, making her arch and whine in ecstatic pleasure as it floods in, then gushes back out from around your cock tip.";
	say "     After a few moments, you take her in earnest, pushing your cock right up in, feeling her tense then howl. Her sex spasming as her cum and her piss mix with your as you feel the unnatural canine lock around your knot. From nowhere you feel your own climax building, and a tightness around your neck start to constrict. Before you can move a hand to check what the tightness is, the hell bitch howls and jerks, leaning up and burying her fangs into your neck as you let out a startled howl of climax as well. Everything blurs in a haze of pain and pleasure before you black out as your knot swells and ties inside the fel hound.";
	WaitLineBreak;
	say "     You wake up several hours later, your clothing torn to ribbons. Feeling your neck, there is a seamless leather collar, engraved with strange infernal characters tightly wrapped around it. Somehow you've been brought back to the bunker, and true to the demon-dog's words, you no longer show any signs of the infection. You seem to have been completely restored to a human form... except for one place. Glancing down, you have the dirty and fouled hellhound shaft from the night before, dried up cum peeling from your skin and making the fur clump together. As you try and take this development in, you hear a chuckle in your mind 'Mmmmmmm, that WAS an enjoyable night, puppy. But you're not quite up to the task yet. You are not ready to be a male in my pack. Return to me once you have a little more... experience,' the voice fades away, leaving you alone with your thoughts in the bunker.";
	say "     An unholy urge fills you as rub at yourself through your pants. Females, bitches - you need to fill them with your seed.";
	if Humanity of Player > 50, now humanity of Player is 50;
	now skin of Player is "smooth";
	now face of Player is "leather dog collar around your neck, and a charmingly human";
	now tail of Player is "";
	now Cock of Player is "";
	now body of Player is "appears perfectly human at first, but sprouting between your legs is sheath and coarse fur that remains dirty no matter how much you attempt to clean yourself";
	now bodyname of Player is "Hellhound";
	now facename of Player is "Hellhound";
	now skinname of Player is "human";
	now cockname of Player is "Hellhound";
	now tailname of Player is "human";
	now scalevalue of Player is 3;
	now bodydesc of Player is "[one of]average[or]normal[or]unchanged[at random]";
	now bodytype of Player is "human";
	now SleepRhythm of Player is 0;
	now Cock Count of Player is 1;
	now Cock Length of Player is 6;
	now the Ball Size of the player is 4;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 0;
	now Libido of Player is 100;
	now hellHoundLevel is 1;
	move player to Bunker, without printing a room description;
	follow turnpass rule;

[***]
to say returntoHellhound:
	say "     As you approach the vacant block where you initially encountered the Hellhound, a sick feeling starts to grow in your gut. There is something inside you wrestling with the infernal infection as you approach the scorched line on the ground where the wall of fire had blocked your passage the night before. Lounging in the grass at the center of the clearing are three hellhounds. One is watching you, licking his lips as he waits for you to approach the line burnt in the grass.";
	say "     Hesitating at the threshold, you get a sense that this is your last chance to turn back. Continue?";
	if Player consents:
		if maleHound is true:	[if the player is male]
			say "     Stepping over the line causes the one watching to lift its head, a lusty growl escaping its throat as it bounds over. Wagging its tail as it heads towards you, the other two seems to start paying attention, heads coming up to regard you with interest in their eyes. 'Ooh you finally came back! We've been waiting! Yes, we have!'";
			say "     She rears up onto her hind legs, paws resting on your shoulders as she eagerly licks your face, before grabbing the cloth at your shoulder with a mischievous grin and pulling. The fabric tears easily, coming apart as if it's starting to rot and decay. The other two bitches take this as a signal and soon they to have their fangs and claws buried in your clothing. They shred and destroy it until you're standing naked in the clearing, your twisted and tainted body visible for all three to appreciate.";
			say "     'Oh I think you're right, big sister. He WILL make a nice change from the four-leggers!'";
			say "     The first bitch just smirks before letting out a playful mock-growl and tackling you. As you are pinned to the ground, she draws her hot wet tongue across your throat while another bitch takes the opportunity to press her hot, dry nose under your dangling canine balls, slowly dragging it across them and working up towards the top of your sheath. As you groan and shiver in pleasure, the bitch atop you smirks and turns around, dropping her swollen, oozing, slimy, canine twat in your face. The reek of infernal bitch overpowers your senses and the scent digs its claws into your tainted mind. You press your lips against the bitch's twat, slowly sliding your tongue into her heated depths while the bitch at your sheath begins to slide her tongue down inside, stroking and suckling at your canine cock before it even manages to slip free of its home.";
			say "     Groaning into the bitches swollen, leaking mound, you can't help but hump into the muzzle wrapped around your tainted, hellhound length. Your tongue works eagerly into female atop you as the bitch whines and grinds her rear back against you before letting out a bark and yelp of pleasure, your face suddenly covered in a sticky, yellow-stained fluid as the bitch cums.";
			WaitLineBreak;
			say "     As both of the bitches that you have been pleasuring pull away grinning, your attention moves to the third. She stands with her rear presented to you, sex swollen and oozing. The puddle at her hind legs is so large she's forced to stand in it. The grass in that puddle has already withered from the tainted fluid. With your shaft bobbing eagerly in the air, mostly free of its home, and drugged on the other bitch's cum, you don't even hesitate. You release a low growl as you move over on your knees, grip the fel animal's hips, and drive yourself into her smoldering depths.";
			say "     The bitch lets out a bark and then a howl! She eagerly grinds back against you as you eagerly hump her four-legged form, your sheath and thighs coated in the bitch's slimy fluids in seconds. Soon your knot swells and locks within, cutting your movement down, eliciting a happy whine for the bitch, and causing you to slump over her back and moan in ecstasy as your member twitches and pulses, pumping your tainted load into her depths.";
			say "     Half an hour later, you're still tied within the hell bitch, your cock still twitching and seeping inside her. The hellhound's belly is obviously swollen, and the other bitches are nuzzling and licking at it, complimenting her on such a large litter of pups. Hearing a crunch in the grass behind you, you move to try and lift your head and look back, but you are stopped as a large, clawed hand wraps around your neck and pushes your face into the bitch's dirty fur.";
			say "     'Stay, mutt! You're not done with her yet.' The bitches bark enthusiastically and the two that are free bound over to nuzzle and press against the newcomer. 'Oh, so you approve of the new male, girls? Good! It's time we took him home then. He's got a lot of bitches to serve after all.'";
			say "     The clawed hand grabs your collar and effortlessly lifts you, making the bitch and yourself yelp in pain and shock as the tie is pulled on. After a few seconds, the bitch lets out a whuff, and from around your knot the fel bitch's piss gushes, soaking your crotch and seeping up to your belly fur as it runs down your thighs. Your sheath is continually flushed out by her urine as you feel the tightness around your knot fade as she seems to get looser and looser before finally popping free.";
			say "     You are then hoisted fully to your feet and allowed to gain your footing, though you are still kept from turning around.";
			WaitLineBreak;
			end the story saying "Your soul is consumed by your hellish lusts.";
		else:	[if the player is female.]
			say "     Stepping over the line and causing the watching hound to grin at you, his tongue lolling out of his muzzle and he prods his pack mates to get their attention. 'Our bitch is finally here.' You shiver at the words... but the slimy mess running down your leg makes it clear no matter what you think you want, your body craves exactly what they want to do to you. As you approach, they casually get to their feet, stretching and yawning, smirking at you as they pad over, then start to circle around. After a few seconds of study, they grab and tear at your clothes, growling happily as they expose your dirty, furred body. One of them drags his tongue over your tailhole while another presses his hot, dry nose against your oozing, lewd, hellhound twat and inhales your scent before dragging his tongue across the swollen, leaking opening.";
			say "     The sensations from all this make you groan and shudder, dropping onto all fours as you feel your sex throb. The third hellhound, the one who initially corrupted you, snickers at your expression. He rolls onto his back, hind legs spread with the tip of his foul length poking from his sheath and oozing yellow cream into his belly fur. 'Come, bitch, it's time to accept your new place.'";
			say "     The two other hellhounds nudge and push you, moving you into position above the hound on his back. As he licks at your muzzle, you can't help but let out a soft whimper. Unable to hold yourself back any longer, you let your knees slide out, arms slipping around the fel animal's shoulders, pressing your belly up against his as he eagerly laps at the coarse, dirty fur of your neck. The penetration is slow, the beast taking its time. The insidious, throbbing organ slides up into your aching sex, sinking in until you feel his tip pressing firmly against your cervix and his bunched up sheath grinding against your swollen, lewd, hellhound spade.";
			say "     The other canines growl lustily, licking and nipping at your body before joining in. A heavy weight settles on your back and paws hook around your hips as one growls and positions himself. And then, in one smooth motion, he slides himself under your tail, deep into your exposed rump. As the feeling of both passages being filled makes you moan, the third hound rears up, placing his paws on your shoulder and hunching forward. The slimy, yellow coated hellhound cock pokes free and pushes into your muzzle until your lips are pressed against his sheath.";
			WaitLineBreak;
			say "The three hounds screw you with feral abandon, panting, growling and yelping their pleasure as they use your body eagerly. The one using your mouth peaks first, his body tensing as his humping becoming erratic for a few moments before he freezes and shudders. He lets out a howl and his cock throbs in your muzzle as he cums. The slimy ooze runs straight down our throat until he pulls himself free, cock still twitching and pulsing as he lets it rest atop your muzzle. Tainted, yellow seed oozes from its tip, soaking into your facial fur. The other two didn't slow down however, the first hound's climax only seemed to drive them harder. Harsh panting fills in your ears as both of your passages slurped lewdly from the vigorous fucking. Eventually, they too began to buck more erratically until both tensed, grabbing at you however they could with their animalistic paws before driving themselves as deep into your body as they possibly could.";
			say "     As both of your infernal lovers howl, you feel the final thrust of the one in your sex breach your cervix. The demon dog's cocktip buries itself in your womb as the knot at the base of his length swells and locks him within. Torrents of hot, fel seed pulses into your body from both of them, filling both your eager, needy holes.";
			say "     After several blissful minutes with the infernal dogs['] cocks throbbing and oozing into your body, a crunching of grass can be heard. As you groggily lift your head, your vision is filled with a hoof - jet black with a blood red [']sock[']. Your mind seems to be running slowly. This should mean something to you, but you can't quite...";
			say "     'Hurry up, you mutts. It is time we returned.' You feel a jerk on your collar, lifting your head up, startling a whine from your muzzle as the two engorged knots buried inside pull painfully. 'Enough, flood the bitch and let us be gone!'";
			say "     You can't make yourself look at the demon. His voice alone make your ears flatten against your skull and fills you with the urge to slink to him on your belly in submission, but your four-legged lovers back happily at his instructions then grunt softly. Their piss begins to gush into you, both dogs whining happily as they empty themselves inside you. The tainted and foul liquid causes your muscles to relax as the clawed hand pulls at your collar, drawing you up until both dog cocks pop free with a fetid gush of cum and piss. This flow washes back down onto both hounds, running down your legs and staining your fur.";
			WaitLineBreak;
			end the story saying "Your soul is consumed by your hellish lusts.";
	else:
		say "     Shuddering, you manage and turn and walk away despite the unholy urge to join the hellhounds in the clearing.";
		move player to Dirty Sheds;


to say hellhoundheat:
	[Couldn't use this to check in male case, replaces with an every turn prompt.]
	say "";

[Below this point is the mechanics to 'remove' the infection nanites.]
every turn (This is the check Hellhound rule):
	if isHellhound is true:
		if cockname of Player is not "Hellhound":
			now cockname of Player is "Hellhound";
			if maleHound is True:
				say "     Almost immediately after the infection alters your maleness, the Hellhound's [']gift['] makes your groin throb and shift back, tip dribbling a bit in arousal.";
				now Cock of Player is "[if looknow is 1]encased in a dirty furred sheath, with dried up seed peeling off, rests your slimy, foul, Hellhound[else]foul, Hellhound[end if]";
			else:
				say "     Almost immediately after the infection alters your sex, the Hellhound's [']gift['] makes your groin throb and shift back, spade loose and oozing lubricants.";
				now Cock of Player is "";
		if humanity of Player > 33:	[Initial Hellhound Infection]
			if skinname of Player is not "human":
				LineBreak;
				now skinname of Player is "human";
				now skin of Player is "smooth";
				say "     You feel your skin heat, a flush running back over you as the Hellhound's [']gift['] effortlessly destroys the infection, returning your smooth, human skin.";
			if tailname of Player is not "human":	[Leave this human so that there's no desc text.]
				LineBreak;
				now tailname of Player is "human";
				now tail of Player is "";
				say "     You feel a sharp pain at the end of your spine and then, with no further warning, your tail simply drops off, leaving no sign you ever had one.";
			if facename of Player is not "Hellhound":
				LineBreak;
				now facename of Player is "Hellhound";
				now face of Player is "leather dog collar around your neck, and a charmingly human";
				say "     Your face seems to heat up, and feel like soft putty for a few moments as the Hellhound's [']gift['] returns your face to its original, human configuration.";
			if bodyname of Player is not "Hellhound":
				LineBreak;
				now bodyname of Player is "Hellhound";
				if maleHound is True:
					now body of Player is "appears perfectly human at first. But sprouting between your legs is a sheath and coarse fur that remains dirty no matter how much you attempt to clean yourself";
					now scalevalue of Player is 3;
					now bodydesc of Player is "[one of]average[or]normal[or]unchanged[at random]";
					now bodytype of Player is "human";
					now SleepRhythm of Player is 0;
				else:
					now body of Player is "appears perfectly human at first. But on your belly there are six nipples, and between your legs rests a swollen, permanently in-heat Hellhound twat";
					now scalevalue of Player is 3;
					now bodydesc of Player is "[one of]average[or]normal[or]unchanged[at random]";
					now bodytype of Player is "human";
					now SleepRhythm of Player is 0;
				say "     Your body doubles over, not in pain, but simply as muscles spasm and reshape. Your form returns to the human body you were born with, plus the additions you sport due to the Hellhound's [']gift['].";
			if maleHound is True:
				if Player is female:
					LineBreak;
					say "     Your newly-formed sex throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to normal.";
				now Cunt Count of Player is 0;
				now Cock Count of Player is 1;
				now Cock Length of Player is 6;
				now the Ball Size of the player is 4;
				now Cunt Depth of Player is 0;
				now Cunt Tightness of Player is 0;
				now Nipple Count of Player is 2;
				now Breast Size of Player is 0;
			else:
				if Player is male:
					LineBreak;
					say "     Your newly-formed shaft throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to normal.";
				now Cock Count of Player is 0;
				now Cunt Count of Player is 1;
				now Cunt Depth of Player is 6;
				now Cunt Tightness of Player is 4;
				now Nipple Count of Player is 2;
				now Breast Size of Player is 2;
			if Libido of Player < 90, now Libido of Player is 90;
		else if humanity of Player > 15:	[Bipedal Hellhound]
			if hellHoundLevel < 2:
				now hellHoundLevel is 2;
				say "     As you surrender your humanity, the hellhound's [']gift['] starts to manifest as the curse it truly is. Your mind starts to embrace the perverted and foul nature that the infernal mutt inflicted upon you. A soft chuckle echoes through your mind and, in your backpack, your journal turns to dust.";
				say "     You also get an unsettling urge to return to where you first encountered the infernal hound.";
				delete journal;
			if skinname of Player is not "Hellhound":
				LineBreak;
				now skinname of Player is "Hellhound";
				now skin of Player is "coarse, dirty fur covering your";
				say "     You feel your skin heat, a flush running back over you as the Hellhound's [']gift['] effortlessly destroys the infection. But with what little humanity you are left, a pelt of coarse, dirty dog fur grows over you.";
			if tailname of Player is not "Hellhound":
				LineBreak;
				now tailname of Player is "Hellhound";
				now tail of Player is "Extending from your spine is a slender canine tail. Strangely, you don't seem to be able to lower it, exposing yourself to all who may look.";
				say "     You feel a sharp pain at the end of your spine, then with no further warning you feel something writhe and reshape back there, a hellhound's tail forming.";
			if facename of Player is not "Hellhound":
				LineBreak;
				now facename of Player is "Hellhound";
				now face of Player is "leather dog collar around your neck and a yellow eyed, canine";
				say "     Your face seems to heat up, and feel like soft putty for a few moments as the Hellhound's [']gift['] reveals itself for the curse it truly is, pulling your nose out, your mouth filling with canine teeth as your develop a scraggly, dirty furred canine head.";
			if bodyname of Player is not "Hellhound":
				LineBreak;
				now bodyname of Player is "Hellhound";
				if maleHound is True:
					now body of Player is "that of a bipedal dog, paw-like feet, and stubby fingered hands with pawpads and dull black claws.";
					now scalevalue of Player is 3;
					now bodydesc of Player is "[one of]bipedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of Player is "[one of]canine[or]dog-like[at random]";
					now SleepRhythm of Player is 0;
				else:
					now body of Player is "that of a bipedal dog, paw-like feet, and stubby-fingered hands with pawpads and dull black claws.";
					now scalevalue of Player is 3;
					now bodydesc of Player is "[one of]bipedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of Player is "[one of]canine[or]dog-like[at random]";
					now SleepRhythm of Player is 0;
				say "     Your body doubles over, not in pain but simply because you can't remain upright as muscles spasm and reshape, your body reforming into a bipedal version of the infernal mutt you submitted to.";
			if maleHound is True:
				if Player is female:
					LineBreak;
					say "     Your newly-formed sex throbs, then rapidly ceases to be as the Hellhound's [']gift['] removes the female organs the nanites attempted to inflict upon you.";
				now Cunt Count of Player is 0;
				now Cock Count of Player is 1;
				now Cock Length of Player is 6;
				now the Ball Size of the player is 4;
				now Cunt Depth of Player is 0;
				now Cunt Tightness of Player is 0;
				now Nipple Count of Player is 2;
				now Breast Size of Player is 0;
			else:
				if Player is male:
					LineBreak;
					say "     Your newly-formed shaft throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to your cursed, hellhound state.";
				now Cock Count of Player is 0;
				now Cunt Count of Player is 1;
				now Cunt Depth of Player is 6;
				now Cunt Tightness of Player is 4;
				now Nipple Count of Player is 8;
				now Breast Size of Player is 4;
		else: [quad Hell Doggy ^.^]
			if hellHoundLevel < 3:
				now hellHoundLevel is 3;
				say "     You surrender completely, abandoning your humanity and embracing your infernal nature. Nothing matters to you any more besides pleasure and breeding, spawning as many of your kind as possible.";
				delete journal;
			if skinname of Player is not "Hellhound":
				LineBreak;
				now skinname of Player is "Hellhound";
				now skin of Player is "coarse, dirty fur covering your";
				say "     You feel your skin heat, a flush running back over you as the Hellhound's [']gift['] effortlessly destroys the infection. But with what little humanity you are left, a pelt of coarse, dirty dog fur grows over you.";
			if tailname of Player is not "Hellhound":
				LineBreak;
				now tailname of Player is "Hellhound";
				now tail of Player is "Extending from your spine is a slender canine tail. Strangely, you don't seem to be able to lower it, exposing yourself to all who may look.";
				say "     You feel a sharp pain at the end of your spine, then with no further warning you feel something writhe and reshape back there, a hellhound's tail forming.";
			if facename of Player is not "Hellhound":
				LineBreak;
				now facename of Player is "Hellhound";
				now face of Player is "leather dog collar around your neck and a yellow eyed, canine";
				say "     Your face seems to heat up, and feel like soft putty for a few moments as the Hellhound's [']gift['] reveals itself for the curse it truly is, pulling your nose out, your mouth filling with canine teeth as your develop a scraggly, dirty furred canine head.";
			if bodyname of Player is not "Hellhound":
				LineBreak;
				now bodyname of Player is "Hellhound";
				if maleHound is True:
					now body of Player is "that of an uncommon mutt, four paw-like feet with wicked black claws, and no hands";
					now scalevalue of Player is 3;
					now bodydesc of Player is "[one of]quadrupedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of Player is "[one of]canine[or]dog-like[at random]";
					now SleepRhythm of Player is 2;
				else:
					now body of Player is "that of an uncommon mutt, four paw-like feet with wicked black claws, and no hands";
					now scalevalue of Player is 3;
					now bodydesc of Player is "[one of]quadrupedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of Player is "[one of]canine[or]dog-like[at random]";
					now SleepRhythm of Player is 2;
				say "     Your bones seem to heat and grow soft, the action making you collapse onto the ground as they no longer seem to be able to bear your weight. You are forced to lie there for a few minutes as muscles shift and joints pop. Eventually, the changes seem to complete and you're able to pull yourself to your feet, all four feet. You now wear the form of the foul demonic hound that tainted you.";
			if maleHound is True:
				if Player is female:
					LineBreak;
					say "     Your newly-formed sex throbs, then rapidly ceases to be as the Hellhound's [']gift['] removes the female organs the nanites attempted to inflict upon you.";
				now Cunt Count of Player is 0;
				now Cock Count of Player is 1;
				now Cock Length of Player is 6;
				now the Ball Size of the player is 4;
				now Cunt Depth of Player is 0;
				now Cunt Tightness of Player is 0;
				now Nipple Count of Player is 2;
				now Breast Size of Player is 0;
			else:
				if Player is male:
					LineBreak;
					say "     Your newly-formed shaft throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to your cursed, hellhound state.";
				now Cock Count of Player is 0;
				now Cunt Count of Player is 1;
				now Cunt Depth of Player is 6;
				now Cunt Tightness of Player is 4;
				now Nipple Count of Player is 8;
				now Breast Size of Player is 4;
		if Libido of Player < 90, now Libido of Player is 90;


Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Hellhound";
	now heat cycle entry is 7;
	now heat duration entry is 7;
	now trigger text entry is "     You feel pressure build between your legs, then a wet gush.. You immediately lose control of your bladder as well, a fetid mix of piss and cum running down your legs, as you permanently enter a Hellhound's eternal heat.";
	now description text entry is "[if Player is not male]your sex is dirty and oozing, peeling, dried up seed coating the outer lips and matting up the coarse dirty fur that sprouts around it[else]the fur of your sheath if musky and dirty, no matter how much you try to clean it. A permanent sign of your infernal taint[end if]";
	now inheat entry is "[defaultheat]";
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "     Your [if Player is male]shaft throbs, tip poking free of your sheath, foul yellow cream oozing from the tip as your balls seem to endlessly churn in an infernal rut your member oozes cum constantly. Your bowels quiver and ache with a foul need, a musky scent laced with pheromones and brimstone seeping from it as your tainted body longs to be bred. These desires war inside you, driving you mad with the urge to bury your cock in someone or something, or to have your bowels[else]bowels quiver and ache with a foul need, a musky scent laced with pheromones and brimstone seeping from it as your tainted body longs to be bred. These infernal desires feel like they might overwhelm you, your tainted body longing to be[end if] bred full of some hellish spawn.";


Section 3 - Return to the Church

churchenter is a number that varies.
lastchurchattempt is a number that varies. lastchurchattempt is usually 248.
churchangelfriend is a truth state that varies. churchangelfriend is usually false.
churchangelprisoner is a truth state that varies. churchangelprisoner is usually false.

instead of going north from the Beach Plaza while hellhoundlevel > 0 and churchangelfriend is false:
	if churchenter is 0:
		say "     You move to enter the church, but you find it increasingly difficult to move closer to it as you approach. Stubbornly, you try to advance, but are filled with increasing pain as you press onwards. Eventually, you reach a point where the pain is unbearable and you aren't moving a centimeter closer despite pushing with all your might. Exhausted and frustrated, you howl like a beast and leap back. Clearly something, or someone, is preventing you from entering this holy place. Perhaps you should try again later to enter.";
		now HP of Player is HP of Player / 3;
		now churchenter is 1;
	else if churchenter is 1:
		say "     As you growl in frustration, trying to fight your way to the steps of the church, the doors open and the Priestess is there. She is an angelic figure with white wings and a beautiful, human face. Her ears are those of a rabbit, but with golden fur like her long, flowing hair. She has a feline tail, also golden, emerging from her loose robes. Her body has silvery, scaled skin that starts below her neck, covering her slender arms as well as her taloned hands. Her feet are fluffy rabbit's feet. It takes you a moment to notice that they're not touching the ground, instead hovering lightly over the marble steps. There is a faint glow all about her, yellow and blue, as if the air surrounding her is radiant with energy.";
		say "     'You are not permitted here,' she says, her voice booming with strength. 'You received warning and you disregarded it. You were offered an opportunity to leave and you did not take it. You chose to accept the foul beast's dark gift of your own free will. Your taint is your own made manifest. This house will not welcome one such as you into it.'";
		say "     And with those words, you are pushed steadily away from the church as the glow around her increases. You are driven back, howling in pain. You curse and snap at her, covering your eyes against her radiant light. It is warm and giving and accepting, while your heart is tainted with coldness, selfishness and fear. You cannot stand before it and slink away. Once you reach the far edge of the plaza, the angelic mutant floats back effortlessly and the church doors slam shut of their own accord with a resounding, stern BOOM!";
		now HP of Player is HP of Player / 3;
		WaitLineBreak;
		say "     Waiting at the steps down to the beach, you see the hellhound, growling at the doors of the church. 'Do not let it fool you as it has many others. The mortal is deluded; their power is from the infection and nothing more.' Part of you wants to accept that the priestess is something more, something greater, but your tainted heart wants to believe the hellhound's words. 'It treats us poorly. Bars us from that place. Something should be done about it,' he says is a soft, insidious growl to you.";
		say "     You find yourself agreeing with the hellhound, wanting that fool and its painful light to be extinguished. You are free now to do as you wish and it bars your way. You are strong, yet it hurt you and it should pay for that. A seething, unreasoning hatred of that church and its priestess well up in you.";
		now churchenter is 2;
	else if churchenter is 2:
		say "     Returning to the steps of the church you find one the hellhounds waiting in the brush. Though its body is obscured, their eyes glowing with a demonic aura as it watches you approach. It sticks its neck out and with a tilt of its head asks you to join it under the foliage, leading you under a few nearby palm trees that adorn the grassy section of the beach.";
		if maleHound is true:
			say "     Upon entering the private clearing you see the two other hellhound bitches waiting, a gleeful grin breaking out on both of their faces as they see you. Quickly hands reach out to yours and you are pulled down to the ground, finding yourself once again discarded of your clothes and surrounded by the hellish canines. A whiff of the surrounding air tells you they are quite happy to see you again. One straddles you, her dripping cunt oozing against your sheath and quickly coaxing your knotted cock out to full mast.";
			say "     'My sisters and I are glad to see you again stud, and hopefully this time you are here to help us take vengeance for what that so-called angel has done, to you, and to us.' As the hellhound speaks your hands unconsciously gravitate towards the bitch's hips, guiding her slowly gyrating form until you've sunk your dirty canine shaft deep into her pussy with a strained groan, eliciting a bark of approval from the bitch riding you. Though despite you beginning to thrust into your she seems to be able to keep calm, her voice continuing with devilish slyness. 'Our master has granted us some power that will help us bypass the barrier, though once inside we will need your help to subdue the false angel. If... you are willing to lend us your aid that is.' Her hands press against your shoulders as she leans forwards, her acid breath wafting over you while she speaks.";
		else:
			say "     Upon entering the private clearing you see the two other hellhounds waiting, an eager grin breaking out on both of their muzzles as they see their favorite bitch return. From behind you suddenly feel a sharp bump in the back that sends you sprawling forwards. 'Well well, looks like our bitch is back, and eager to see us'. You can't help but shiver at his words, your hellhound cunt already dripping as your clothes are roughly torn from your body, exposing you to your hellhound masters once again.";
			say "     'It's nice to see you again bitch, and this time hopefully you can help us out with that so-called angel that hurt you last time.' As the hellhound speaks the one behind you plants its paws on your shoulders, unceremoniously lining up his messy shaft with your cunt before driving in with a single thrust. 'You see our boss gave us an opportunity to put that bitch in her place, assuming we can get your help of course.'";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Agree to help the hellhound take down the priestess.";
		say "     ([link]N[as]n[end link]) - Refuse to help the hellhound, at least for now...";
		if Player consents: [Agree to take down the priestess]
			LineBreak;
			if maleHound is true:
				say "     The hellhound growls in appreciation, her hips starting to move in earnest after you agree to go along with whatever they have planned. 'Mmh, we were right to have chosen you.' You can only so much as moan back in response as the added feeling of a wet tongue lapping at your hanging balls mix with the pleasure of fucking that tight hellhound pussy. They make sure to take their time with you, edging out your climax until your hips jerk forwards to pour your demonic seed into her womb, your knot ensuring no drop of seed is wasted. Resting against your chest the bitch pants softly, 'Return to us at night, and be sure you are amply prepared. Our master has given us only shot at this and we fear the false angel may have enough strength to purge us all if we do not act carefully.' (Skillchecks ahead!)";
			else:
				say "     Upon your moan of agreement the hellhound fucking you howls in approval, his hips beginning to rut in in earnest as his knot starts to knock at the entrance of your cunt. 'That's a good bitch... We'll reward you nice and good after all of this is over.' Happy that you're on board the second hellhound pads forward, his tongue lolling while his swaying cock slaps against your face, waiting for you to service him. 'After we're done with you here make sure to back at night. And get yourself ready in case anything goes south. She's no real angel, but she's not weak either.' As you open your mouth to reply the other hellhound takes it as an invitation to shove his cock down your throat, effectively spitroasting you. This goes on until they've all had a turn with you, pumping you full of cum and piss before sending you staggering on your way. (Skillchecks ahead!)";
			now churchenter is 3;
		else:
			if maleHound is true:
				say "     The hellhound does not show any sense of disapproval, though you sense that it wasn't what she was expecting to hear. Despite that her hips begin to rock back in earnest, your cock slamming back against her cervix over and over, until you can't hold it any longer and fill her with demonic seed. 'It is regrettable that you wish to turn down such an opportunity. As much as we'd love to take that bitch down a knot we need your help. So whenever you feel like you're able, return to us. In the meantime, I believe you owe us our fill.' The hellhound bitch chuckles, tugging painfully at your knot until with a grunt she pulls free, both cum and piss spilling from her gaping hole. Once she gets up another takes her place, taking turns riding you until you pass out and find yourself alone at the steps of the beach.";
			else:
				say "     The hellhound growls with disapproval, possessively biting at your scruff as he begins to rut you harder, pounding you into the dirt with new strength. 'That's not exactly the answer we were hoping for bitch, especially since we wanna take this fake angel down a notch. But we can wait.' The hound growls into your ear, a fresh dose of piss emptying out into your pussy even as the hound continues to rut you. 'We can wait until your ready, but I think you owe us in the meantime.' And with that the other hellhound takes its place in front of you, erect cock slapping against your face before it thrusts into your moaning maw. They take turns filling you up until every hole is leaking with their piss and cum, and you awake later to find yourself alone on the steps leading to the beach.";
			LineBreak;
			now churchenter is 99;
	else if churchenter is 3 and daytimer is night:
		say "[hellhoundplan]";
	else if churchenter is 98:
		say "     The church now lays barren, a neglected shell of what it once was. There isn't much reason to go here anymore besides recalling the satisfying deed you once did.";
	else if churchenter is 99:
		say "     As you approach the steps of the church you pause, recalling the painful barrier that barred your way. While you look menacingly at the structure a sense of hate begins to fill you and you remember the offer the hellhounds told you about, maybe you should return here later and take them up on it...";
		now churchenter is 2;
	else:
		say "     You try to advance into the church, but are again met with great resistance. You push against it, hoping it will fail, but stop when you can sense no weakness from it. You don't want to pointlessly hurt yourself again. You growl angrily at the church doors and step away.";
		if churchenter is 3:
			say "     As you pace in front of the church you recall the agreement you made with the hellhound to return once the sun set. For now all you can do is glare at the holy structure from afar with hate in your eyes.";

Section 4 - Enter the Church

to say hellhoundplan:
	say "     Upon returning to the church's front steps you are greeted by the trio of hellhounds, all happy to see that you've come. They explain that they have the power to dispel the holy barrier protecting the church for a few minutes and enable them to slip inside with you. With that taken care of they have a few ideas on how you could approach the situation.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Charge In";
	now sortorder entry is 1;
	now description entry is "use brute strength to charge the preist";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sneak in Through the Roof";
	now sortorder entry is 2;
	now description entry is "sneak in through the roof and take the priestess by surprise";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pose as a Soul in Need";
	now sortorder entry is 3;
	now description entry is "masquerade as someone looking for help";
	[]
	say "[link]0 - Discuss options[as]0[end link][line break]";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	[]
	say "[link]99 - Maybe later[as]99[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Attempt to [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Charge In"):
					say "[strength_church_hellhound_route]";
				else if (nam is "Sneak in Through the Roof"):
					say "[dexterity_church_hellhound_route]";
				else if (nam is "Pose as a Soul in Need"):
					say "[charisma_church_hellhound_route]";
		else if calcnumber is 0:
			say "     Taking a moment you ask the hellhounds to explain of the plans they had in mind.";
			say "     The first one seems to be the most simple and relies on you taking the brunt force of the priestess's power while they flank. You'll probably need a good amount of strength to stand up to the priestess's power.";
			say "     The second plan they had involves you climbing up the roof of the church and entering one of the open windows they have at the top. You'd have to quietly climb back down once you're inside while the hellhounds distact the priestess from the front.";
			say "     Their last plan involves you posing as someone in need of guidance. One of the hellhounds nods towards a ragged cloak they happened across on the beach and suggests you drape it over yourself, though you'd probaly need a good amount of charisma to sell your story to the priestess. At least until you can get close enough to pounce on her.";
		else if calcnumber is 99:
			say "     At the last moment you shake your head, abruptly asking the hellhounds to call off the plan and wait for a better oppurtunity. The canines look among themselves obviously disgrunted, but agree that if you don't feel prepared than they should return at a later time.";
			now sextablerun is 1;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 99 to exit.";
	clear the screen and hyperlink list;

to say strength_church_hellhound_route:
	say "     With a nod you agree to charge in while the hellhounds flank. Taking a deep breath you await the hellhounds signal before running up the steps. When you pass the threshhold into the church you wince, expecting to feel the sharp pain of the barrier, but instead only a slight tingle runs down your body. From there you throw the doors of the chruch open and barge inside. You find the priestess kneeling next to the main altar, her body jerking as she stands now alert. Much like before a radiant aura seems to eminate from her being. 'You again!' Her voice booms in your ear before she raises a hand, a bright light shining from it. You don't give her any more time as you charge, trying to close the distance as the ball of light head straight towards you.";
	let playernum be strength of Player + (level of Player / 2);
	let monsternum be 1;
	let playernum be a random number between 1 and playernum;
	say "     Strength - [special-style-1][playernum][roman type] vs [special-style-2][monsternum][roman type]:[line break]";
	if Playernum >= monsternum:
		say "     With a painful grunt you muscle through the force of the bright ball, continuing your charge towards a now wide-eyed priestess. Behind her you already see the hellhounds closing in. Arms stretched out you tackle her to the ground, her frail body easily pinned below yours desipte her struggles. Smiling you can hear the hellhounds howl in triumph.";
		say "[church_hellhound_win]";
	else:
		say "     With a cry of pain you find yourself sent flying back against the stone wall of the church, the breath knocked out of you as you sink to the ground, too stunned to do anything else. With you taken care of the priestess easier dispatches the other hellhounds one by one, all of them vanishing in a puff of dark smoke. It's only then does she advance on you, her soft footsteps getting closer, step by step.";
		say "[church_hellhound_lose]";

to say dexterity_church_hellhound_route:
	say "     With a nod you agree to try and scale the roof. Taking a deep breath you await the hellhounds signal before running up the steps of the church. When you pass the threshhold leading into the chruchgrounds you wince, expecting to feel the sharp pain of the barrier that once kept you out, but instead only a slight tingle runs through your body. From there you quietly make your way to the side of the church before making your ascent upwards. As your climbing you can hear the hellhounds below barking, keeping the priestess's attention as continue to sneak.";
	let playernum be dexterity of Player + (level of Player / 2);
	let monsternum be 1;
	let playernum be a random number between 1 and playernum;
	say "     Dexterity - [special-style-1][playernum][roman type] vs [special-style-2][monsternum][roman type]:[line break]";
	if Playernum >= monsternum:
		say "     Once you slip through the open window you can see the priestess below clearly occupied with keeping the hellhounds at bay. Quietly you make your way down, creeping with predatory precision before you pounce on the woman from behind. She only has a moment to cry out in surpirse before she's tackled to the ground, her bright aura muck dimmer as she is surrounded by the trio of yipping and howling hellhounds. ";
		say "[church_hellhound_win]";
	else:
		say "     Once you slip through the open window you can see the priestess below clearly occupied with keeping the hellhoudns at bay. Quietly you try to make your way down, but as you do your hands slips, sending you spawling to the church floor with a loud thud. Winded by the fall, you're unable to help the hellhounds as the priestess begins to dispatch them one by one, making the dispapper in a puff of smoke before slowly approaching you.";
		say "[church_hellhound_lose]";

to say charisma_church_hellhound_route:
	say "     With a nod you take the large cloak and dawn it over yourself, making sure to hide your face or any distinguishing features that may link you to the hellhounds. The cloak itself has a strong salty smell, enough to possibly mask the taint put upon you by your hellhound compatriots. Slowly you make your way up the steps, wincing as you pass the threshhold leading into the churchgrounds, expecting to feel the sharp pain of the barrier that once kept you out. But instead only a slight tingle runs through your body. From there the hellhounds follow quietly behind, making sure to keep a safe distance as you open the doors to the church and step inside.";
	say "     Upon entering you see the priestess kneeling in front of the main altar, her bunny ears twitching as she turns and stands to greet you. 'Hello there? How can I help you?' She smiles warmly, hands at her sides as you approach.";
	let playernum be charisma of Player + (level of Player / 2);
	let monsternum be 1;
	let playernum be a random number between 1 and playernum;
	say "     Charisma - [special-style-1][playernum][roman type] vs [special-style-2][monsternum][roman type]:[line break]";
	if Playernum >= monsternum:
		say "     Walking towards her you explain your plight. The infection has taken ahold of you and feel yourself starting to give in to you carnal desires. Her warm smile changes to one of concern as you plead your case, asking for guidance. Once you're a few steps away from her you sudddenly lunge, taking the priestess off guard as you tackle her to the ground. Behind you you can hear the hellhounds yipping and howling in triumph as they surround you both, the priestess struggling in vain as you pin her frail body to the ground.";
		say "[church_hellhound_win]";
	else:
		say "     Walking towards her you explain your plight. The infection has taken ahold of you and feel yourself starting to give in to you carnal desires. Her warm smile changes to one of concern as you plead your case, asking for guidance. But as you approach she takes a guarded step back, one of her taloned hands out in front of her. 'You attempt to deceive me!? One tainted such as yourself should learn your place!' With the jig up you attempt to rush you down but a bright light flashes and fills the room, enveloping your vision and knocking you off your feet. Still in a daze you hear the yelps of your hellhound companions as one by one they are destoryed and sent back to the underworld, as you attempt to move the soft sound of bunny footsteps get closer and closer.";
		say "[church_hellhound_lose]";

to say church_hellhound_win:
	say "     The priestess can barely put up a fight without her radiant magic to help her, her muscles straining in vain as you easier hold her down. 'Wait!  Please!' She begs, her eyes darting as the hellhounds circle the two of you like sharks in bloody water. 'You! I can see within you still!  A seed of light! Just please, please... let me go and I can help you.' As the priestess speaks you suddenly begin to question your motives here in the church. Being in direct contact with the celestial being your tainted mind finds some clarity, and maybe some truth to her words. But as quickly as the priestess speaks the leader of the hellhound snarls back, 'Lies! You think you can trick us with your holy deception! We will show you just exactly how much of angel you really are, and soon you will enjoy the pleasure of being under us and our master!' It seems the choice is up to you, will you free the priestess in an attempt to get rid of the hellhound's curse?";
	WaitLineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		say "     In your moment of clarity you realize how strong the curse the hellhounds have put on you is, and how tainted your mind has become. Your hands release the fallen priestess and in that moment she raises a talon and a bright light fills the room. You pick up the putrid smell of burning fur and piss all around you as the hellhounds cry out in pain. When the last remnants of their being turn to whisps of smoke you can hear them whisper in your ears, 'We will remember this', making you give a final shudder before they are gone completely. With the immediate threat gone the priestess stands up, brushing the dust off her wings and clothes.";
		say "     'Thank you very much, your change or heart shows that there is hope for you yet.' With the hellhound's protection now gone you suddenly feel yourself weak. Upon realizing your struggle to stand the woman quickly waves a taloned hand and you find the extra weight gone in an instant. 'Apologies, your body is still tainted by the hellhounds. We must get you treated quickly before you are completely consumed! My name is Cassiel by the way, I'll have to go through some of the holy texts to see what I can do, but please speak to me again once you want the process to begin.' And with a smile and a bow she walks to the back of the church, beginning to rummage through the bookshelves and paging through holy text.";
		now HP of Cassiel is 1;
		now churchangelfriend is true;
		move Cassiel to Church Hall;
		wait for any key;
	else:
		say "     Whether or not the priestess is telling the truth you're not gonna pass up a chance to take vengence back for what she did. As you tighten your grip her her eyes go wide, realizing your decision.";
		if maleHound is true:
			say "     The other hellhounds don't waste their time, descending like a murder of crows they tear at her vestments until her body is fully exposed. Her scaled form is a sight to behold, and arguably a sin of its own. Laid out on her back two of the hellhounds pin her arms down while the other grabs her legs. Already your hands reach down to release your dirty hellhound shaft from the confines of your clothes, already out of it's sheath at full mast. The priestess looks with wide eyes as you kneel between her legs, taking your time to line up your cock to her virgin cunt before thrusting inside. A single cry rings through the church, followed by restrained grunts and heavy pants.";
			say "     The priestess looks up at you, eyes filled with hate, but she can't help but moan as thrust after thrust you wear her down, her soft pants turning to low cries of pleasure. 'You see? This mortal who claims to be angel has fallen so quickly' The lead hellhound jeers at the priestess, and once in seems like she is not resisting as much straddles the woman's face and grinds her hellhound cunt messily against it. 'Soon she will be just like us.' As you continue to drive into her you notice the wings on the priestess slowly begin to darken, fading from a pure white into a darkish grey. Looking down at the fallen angel you can barely tell if she can breath with the hellhound grinding against her in such a manner. Inevitably you hilt your shaft inside her, pumping her full of hellhound cum and shoving the last of your knot into her.";
			WaitLineBreak;
			say "     The priestess has since given up fighting, and you can barely tell if she's still concious. With a soft sigh you relieve yourself inside her once holy cunt, flooding her completely before popping out and letting the mixed juices pool between her legs. Pulling back the lead hellhound grins down at a dazed angel, now marked and tainted with hellhound fluids. 'You have been of much help to us. We'll take her down to hell to see our master, and eternity of pleasure should have her changing her mind.' Still recovering from your lastest climax you watch as a dark portal opens up and the hellhounds drag the unconcious angel through, never to be seen again.";
			now churchenter is 98;
		else:
			say "     The other hellhounds don't waste their time, descending like a murder of crows they tear at her vestments until her body is fully exposed. Her scaled form is a sight to behold, and arguably a sin of its own. Shoving you aside the lead hellhound takes his place between the woman's legs before uncerimoniously shoving his canine shaft inside her virgin cunt. A single cry echoes through the church, quickly silenced as another takes its place filling her mouth. The two rut the fall angel mercilessly, panting like dogs as they quickly corrupt the once holy figure. 'She's a bitch like all the rest! So quick to fall.' You are quickly thrown into the festivites as the third noses your clothes off before directing you to get down on your hands and knees. The air is soon filled with the sounds of wet slaps as three knotted cocks ram against their perspective holes.";
			say "     The one in the priestess maw is the first to finish, cumming down her throat as his knot inflates, stretching the poor angel's jaw wide. The one ramming into her cunt is quick to follow, both reliving themselves inside her before marking her body down with their rancid piss. They each take turns, fucking both of you until you're both limp on the ground, barely concious. As you watch the angel slowly her wings begin to turn blacker, going from pure white to a dark shade of grey. 'We'll take her down to hell to see our master, and eternity of pleasure should have her changing her mind.' Still recovering from your lastest climax you watch as a dark portal opens up and the hellhounds drag the unconcious angel through, never to be seen again.";
			now churchenter is 98;

to say church_hellhound_lose:
	say "     A sharp pain is the last thing you feel before you pass out. When you wake up you find yourself void of any equipment and the inability to move your arms or legs! Looking around you find your arms spread out and strapped down in a T position with leather belts. Your body has been placed on some sort of vertical cross, though you can't remember seeing anything of the like when you looked around the church previously. Upon closer inspection of your surroundings you find yourself in some kind of basement. Did the church have some sort of lower level? Your theory is confirmed when you hear soft footsteps coming down and you turn to see the priestess coming down the stairs.";
	say "     'Ah, so you're awake now'. The priestess kept her expression neutral as she approached you, your body now struggling, hackles raised, straining against the bonds that stopped you from tearing this bitch apart. 'You've caused many problems for this holy and place and I have decided that you are too dangerous to let go. You will stay down here until the day of Judgement arises.' Eyes wide you begin to realize your predicament, and it doesn't help that between your legs your loins start to burn with pent up desire you feel you won't get the chance to quench it in awhile.";
	now churchangelprisoner is true;
	WaitLineBreak;
	end the story saying "You have been captured by the church priestess, denied of all carnal pleasures.";

Section 5 - Endings

When play ends:
	if hellHoundLevel > 0:
		Let T be 0;
		if bodyname of Player is "Reindeer" and facename of Player is "Reindeer" and cockname of Player is "Reindeer" and skinname of Player is "Reindeer" and tailname of Player is "Reindeer":									[gave into the holiday spirit]
			say "     Having given in to the magic of the holidays, you are freed from the Hellhound's curse.";
		else if bodyname of Player is "Bottlenose Toy" and facename of Player is "Bottlenose Toy" and cockname of Player is "Bottlenose Toy" and skinname of Player is "Bottlenose Toy" and tailname of Player is "Bottlenose Toy":			[gave into fun in the sun]
			say "     Having become an innocent creature living only for happiness and playtime breaks the Hellhound's curse upon you.";
		else if bodyname of Player is "Wolverine Guard" and facename of Player is "Wolverine Guard" and cockname of Player is "Wolverine Guard" and skinname of Player is "Wolverine Guard" and tailname of Player is "Wolverine Guard":		[succumbed to wolverine sex]
			say "     Your bond as guardian to the Central Library and to your new mate is too strong for the Hellhound's curse, breaking it and allowing you to become a new protector for the library.";
		else if bodyname of Player is "Tigress Hooker" and facename of Player is "Tigress Hooker" and cockname of Player is "Tigress Hooker" and skinname of Player is "Tigress Hooker" and tailname of Player is "Tigress Hooker":			[claimed at the tigress motel]
			now T is 0; [do nothing statement]
		else if bodyname of Player is "Big Tiger" and facename of Player is "Big Tiger" and cockname of Player is "Big Tiger" and skinname of Player is "Big Tiger" and tailname of Player is "Big Tiger":							[victory at tigress motel]
			now T is 0; [do nothing statement]
		else if bodyname of Player is "Big Tigress" and facename of Player is "Big Tigress" and cockname of Player is "Big Tigress" and skinname of Player is "Big Tigress" and tailname of Player is "Big Tigress":					[victory at tigress motel]
			now T is 0; [do nothing statement]
		else if bodyname of Player is "Chocolate Lab" and facename of Player is "Chocolate Lab" and cockname of Player is "Chocolate Lab" and skinname of Player is "Chocolate Lab" and tailname of Player is "Chocolate Lab":				[made into Chocolate Lab]
			now T is 0; [do nothing statement]
		else if vinetrapped is 1 or vinetrapped is 2:						[full plant TF]
			now T is 0; [do nothing statement]
		else if foodvendor is 4:											[food vendor's sex slave]
			now T is 0; [do nothing statement]
		else if centrallib is 7:											[captured by librarian harpies]
			now T is 0; [do nothing statement]
		else if skunkbeaststatus is 2:										[lost to Skunkbeast Lord]
			now T is 0; [do nothing statement]
		else if mousecurse is 1:											[chosen by the mouse-collective]
			say "     As your mind fades, more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body. But then Rachel is there, holding you tightly in her small arms, somehow her weak arms able to hold back the powerful force of your infernal pact. As your mate clutches to you, you can feel her mind pushing against that dark power. Soon you can feel somewhere above her mind, greater than it, the collective hive-mind of all the mice, focused on this. Your body starts changing again, becoming more mouse-like this time until you are fully a mouse like your loving mate and the other mice of the collective, though of the same gender as you were before. The darkness fades as the bond of the dark pact is shattered by their mental might, freeing you to become fully one of them instead.";
			say "[fullmousification]";
		else if HP of the player > 0:
			follow the check hellhound rule;
			if maleHound is true:
				if churchangelprisoner is true:
					say "     During your imprisonment the angel makes sure to keep you fed and nursed, though despite how much you beg and plead you are unable to convince her to let you give into your carnal urges, not even once. When you're not strung up on the cross the priestess summons holy manacles to keep your limbs in check, the radiant power robbing you of your strength as she leads you on walks around the church. Maybe it's just you, but sometimes it seems like she treats you like a misbehaving mutt. It's only in your dreams that you are able to live out your debauchy to an extent, screwing shadowy figures that often begin to take the shape of the priestess herself, but everyday you wake up to the sight of your knotted cock twitching at full mast, pre dribbling on the floor with no way to truly give yourself release.";
					say "     Weeks pass by like this, and one day you find yourself awakening to a bright light and a change of scenery. It almost looks like there are clouds everywhere... A sense of foreboding begins to fill your mind, and your turn your head to see a figure approaching you, surrounded in blinding light.";
				else if humanity of Player < 1:
					say "     As your mind fades, more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body. Eventually, you're so far gone that you start to couple with common animals without hesitation, and it's when you are tied in a feral mutt you discovered wandering the streets that a green, flickering glow appears behind you.";
					say "     The rough grip on your collar startles you enough to let out a surprised yelp, but the huge, clawed, red hand rubs your ears. 'Easy, mutt! It's just time to go home, that is all. You've had enough fun in the mortal realm.' You let out a disappointed whine, bones melting and reforming as your body alters further to suit your mindless nature. Now you are nothing more than a mindless hellhound, incapable of reasoned thought or speech, unlike the beast that initially corrupted you. 'Come, boy! There's a gate for you to help guard and bitches to breed. If you're good, I may let you out to play with the mortals again someday.'"; [Rutting beast, loyal demon, or resisting mortal.]
				else if humanity of Player < 33:
					say "     Suddenly, the air in front of you shimmers, giving off a sickly yellow light. A single point seems to hang there for a few moments before it begins to - well, the only word you can use to describe what happens is the air seems to [']tear[']. Furnace-like heat hits you in the face from the black, lightless void. The edges of the ever-growing hole are rimmed in luminescent yellow. Every now and again, a drop seems to fall to the ground from the edge of the growing portal, hissing and leaving a scorch mark.";
					say "     'Time to go home, BITCH!' you hear from behind you before being shoved into the blackened void of the hellgate. As you start to plummet, you let out a startled scream. The darkness is so complete, you cannot even see yourself as the impossible heat steals the air from your lungs. After a few moments, you sink into an unconsciousness as black as your surroundings.";
					say "     Groggily, you feel yourself come to and there is a soft, metallic chink as you shift. Opening your eyes, you find heavy, iron manacles wrapped around your wrists. A similar weight on your ankles tell you those are also restrained. Around you stand hundreds of infernal hounds. The demonic dogs pant quietly, some licking their chops, some letting out soft eager growls and all of them showing some signs of arousal. As they begin to close in, you let out a shiver at the perverse hunger in all of the bitches['] eyes. You know they will keep you rutting from now until eternity, only allowed to rest while collapsed on their backs, your member twitching and pulsing within.";
					say "     Hellish or heavenly? Well, I suppose that's up to you.";
				else: [Male Tainted Human]
					say "     Your demonic [']luck['] holds and, as the whole city dissolves in chaos, you manage to escape. Weeks later, you stumble into an uninfected location, find a job, and try to return to the life you once had. But the longer you go without... indulging yourself, the harder and tighter your hellhound shaft becomes. It's probably only a matter of time before you end up doing your demonic master's bidding... or in escaping, perhaps you already are.";
			else:
				if churchangelprisoner is true:
					say "     During your imprisonment the angel makes sure to keep you fed and nursed, though despite how much you beg and plead you are unable to convince her to let you give into your carnal urges, not even once. When you're not strung up on the cross the priestess summons holy manacles to keep your limbs in check, the radiant power robbing you of your strength as she leads you on walks around the church. Maybe it's just you, but sometimes it seems like she treats you like a misbehaving mutt. It's only in your dreams that you are able to live out your debauchy to an extent, screwing shadowy figures fucking every hole you have to offer, but everyday you wake up to the sight of your wet and dripping cunt, begging to be filled with no way to truly give yourself release.";
					say "     Weeks pass by like this, and one day you find yourself awakening to a bright light and a change of scenery. It almost looks like there are clouds everywhere... A sense of foreboding begins to fill your mind, and your turn your head to see a figure approaching you, surrounded in blinding light.";
				else if humanity of Player < 1:	[Female animal]
					say "     As your mind fades, more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body. Eventually, you're so far gone that you start to couple with common animals without hesitation, and it's when you are tied beneath a feral mutt you discovered wandering the streets that a green, flickering glow appears behind you.";
					say "     The rough grip on your collar startles you enough to let out a surprised yelp, but the huge, clawed, red hand rubs your ears. 'Easy, bitch! It's just time to go home, that is all. You've had enough fun in the mortal realm.' You let out a disappointed whine, bones melting and reforming as your body alters further to suit your mindless nature. Now you are nothing more than a mindless hellhound, incapable of reasoned thought or speech, unlike the beast that initially corrupted you. 'Come, girl. There's a gate for you to help guard and plenty of males waiting to make sure you remain heavy with pups. If you're good, I may let you out to play with the mortals again someday.'";
				else if humanity of Player < 33:	[Female bipedal demon Dog]
					say "     Suddenly, the air in front of you shimmers, giving off a sickly yellow light. A single point seems to hang there for a few moments before it begins to - well, the only word you can use to describe what happens is the air seems to [']tear[']. Furnace-like heat hits you in the face from the black, lightless void. The edges of the ever-growing hole are rimmed in luminescent yellow. Every now and again, a drop seems to fall to the ground from the edge of the growing portal, hissing and leaving a scorch mark.";
					say "     'Time to go home, BITCH!' you hear from behind you before being shoved into the blackened void of the hellgate. As you start to plummet, you let out a startled scream. The darkness is so complete, you cannot even see yourself as the impossible heat steals the air from your lungs. After a few moments, you sink into an unconsciousness as black as your surroundings.";
					say "     Groggily, you feel yourself come to and there is a soft metallic chink as you shift. Opening your eyes, you find heavy, iron manacles wrapped around your wrists. A similar weight on your ankles tell you those are also restrained. Around you stand hundreds of infernal hounds. The demonic dogs pant quietly, some licking their chops, some letting out soft eager growls and all of them showing some signs of arousal. As they begin to close in, you let out a shiver and run a paw over your belly, knowing it will soon be swollen and heavy with their demonic spawn, doomed to an eternity as a bitch whelping litter after litter.";
					say "     Hellish or heavenly? Well, I suppose that's up to you.";
				else:	[Female Tainted Human]
					say "     Your demonic [']luck['] holds and, as the whole city dissolves in chaos, you manage to escape. Weeks later, you stumble into an uninfected location, find a job, and try to return to the life you once had. But the longer you go without... indulging yourself, the hotter and wetter your hellhound sex throbs and leaks. It's probably only a matter of time before you end up doing your demonic master's bidding... or in escaping, perhaps you already are.";

HellHound ends here.
