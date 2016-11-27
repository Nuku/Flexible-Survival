Version 2 of Korvin by Stripes begins here.
[Version 2 - Separated out Korvin into his own file]

"Adds character specific info for Korvin the GSD pet."


Section 0 - GShep Pet

gshep is a pet.  gshep is a part of the player.
The description of gshep is "[Korvin_desc]".
The conversation of gshep is { "Bark!" }.
The weapon damage of gshep is 5.
The level of gshep is 3.
The Dexterity of gshep is 13.
The summondesc of gshep is "Calling for Korvin, the German Shepherd joins you at your side.  He seems excited at the prospect of busting some heads.".
The assault of gshep is "[gshep_attack]".
the scent of the gshep is "Korvin has a masculine scent of canine arousal.".
The fuckscene of gshep is "[korvinsexmenu]".
gshep has a number called lastscene.  lastscene is usually 255.

gshep_fights is a number that varies.
gshep_postfight is a number that varies.	[post-fight argument]
gshep_sexscene is a number that varies.		[sex-role argument]
gshep_bed_scene is a number that varies.	[discipline argument]
gshep_inactive is a number that varies.		[inactivity argument]


understand "Korvin" as gshep.

to say Korvin_desc:
	if gsd_pet < 20:
		say "     Korvin, the anthro German Shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face.  He's got the typical brown and black coat of the breed.  He's buff and well-built, though not overly so.  His most distinguishing feature is the ragged scar that runs along his cheek and muzzle.  Such marks are rare, even with the amount of fighting between mutants in the city.  He's also nude, wearing nothing save for the rope leash you've put around his neck.  Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life.  Having put him in his place, he's come to accept you as his master and will follow your orders, even if does retain quite an independent streak.";
	otherwise if gsd_pet >= 20 and gsd_pet < 60:	[***]
		say "     Korvin, the anthro German Shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face.  He's got the typical brown and black coat of the breed.  He's buff and well-built, though not overly so.  His most distinguishing feature is the ragged scar that runs along his cheek and muzzle.  Such marks are rare, even with the amount of fighting between mutants in the city.  He's also nude, wearing nothing save for the rope leash you've put around his neck.  Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life.  Having put him in his place, he's come to accept you as his master and will follow your orders, even if does retain a bit of an independent streak.";
	otherwise:	[***]
		say "     Korvin, the anthro German Shepherd you've trained to be your dog, stands nearby with his arms crossed and a stern look on his canine face.  He's got the typical brown and black coat of the breed.  He's buff and well-built, though not overly so.  His most distinguishing feature is the ragged scar that runs along his cheek and muzzle.  Such marks are rare, even with the amount of fighting between mutants in the city.  He's also nude, wearing nothing save for the rope leash you've put around his neck.  Despite being tamed, his mind is definitely more corrupted than human, clearly only retaining shreds of his past life.  Having put him in his place, he's come to accept you as his master and will follow your orders, even if does retain a bit of an independent streak.";
	

to say gshep_attack:
	choose row monster from the table of random critters;
	say "[one of]Your dog[or]Korvin[or]Your German Shepherd[at random] [one of]growls and swipes at your enemy with an open paw-like hand, leaving scratching with his dull claws[or]clamps down with his teeth on your foe with a growl[or]charges at your foe, bashing into [ghim][or]lands a fast punch on the [name entry][or]barks and growls at your opponent while taking swings at them[at random].".

Section 1 - Dialog

Instead of conversing the gshep:
	if gshep is not tamed:
		say "Who do you want to talk to?";
	otherwise if gshep is not companion of player:
		say "I don't see him around right now.  You'll have to call him over first.";
	otherwise:
		say "     [one of]'What do you want, [if cunts of player > 0]Mistress[otherwise]Master[end if]?'[or]The muzzle-scarred G-Shep scratches himself behind the ear with a foot.  Noticing you watching him, he stops and tries to look more dignified.[or]'Where to now, oh wise and powerful Alpha?' he asks, rolling his eyes.  A glare from you gets him to stop and hang his head.[or]'I can't wait for our next scrap, [if cunts of player > 0]Mistress[otherwise]Master[end if].  It'll feel good to smack some fools around with you.'[or]The G-Shep consents to let you pet and scritch him, he grumbles a little, but you can tell from the way his tail wags that he enjoys the attention from his alpha.[or]'You're my alpha now, so I'll follow you.'[at random]";


Section 2 - Sexy Times

to say korvinsexmenu:
	if cocks of player is 0 and cunts of player is 0:
		say "     Given your lack of gender, you don't see much point in that.";
	otherwise if lastfuck of gshep - turns < 6:
		say "     You fooled around not too long ago with the German Shepherd.  Perhaps you should give him a bit of a break before having sex with him again.";
	otherwise if gsd_pet is 12:
		say "     Your gaze shifts to the German Shepherd and you feel a growing arousal.  You run your eyes up and down the buff male.  Deciding he should provide some relief for the state of arousal he's put you in, you call him over and tell him to put his muzzle to work [if cocks of player > 0]sucking you off[otherwise]eating you out[end if].";
		say "     He pauses and looks at you.  'So that's how it's going to be, is it?' he says before kneeling and nosing into your crotch.  Despite that bit of grumbling, he sets himself to task with enthusiasm.  His tongue lashes across [if cocks of player > 0 and cunts of player > 0]your cock[smn] and cunt[sfn][otherwise if cocks of player > 0]your cock[smn][otherwise]your cunt[sfn][end if] several times before [if cocks of player > 0]taking your manhood into his warm maw[otherwise]wriggling that doggy tongue into your cunny[end if].  You place a hand on his head, petting him lightly.  He growls a bit at this and dips his ears, but doesn't stop - also wagging his tail a bit at the touch.";
		if cocks of player > 0:
			say "     You let him go to town on your cock[smn] for a while[if cocks of player > 1], enjoying it as he swaps between them periodically[end if].  His slathering tongue and sucking muzzle are very nice, building your arousal higher.  Eventually though, as your climax approaches, you're ready to set the pace.  Grabbing his head with both hands now, you hold it steady and start thrusting.  You rock your hips with increasing speed.  Your [cock of player] manhood throbs in his [if cock length of player > 24]stretched muzzle and throat[otherwise if cock length of player > 12]muzzle and throat[otherwise]muzzle[end if] as precum leaks messily from your shaft.  With a groan of release, your shaft is driven fully in and your [cum load size of player] load is [if cock width of player > 16]blasted[otherwise if cock width of player > 8]shot[otherwise]spurted[end if] into him[if cocks of player > 2].  Your additional cocks splatter semen onto him as well[otherwise if cocks of player is 2].  Your additional cock splatters semen onto him as well[end if].  Once he's been fed your seed, you pull out and wipe your cock across his muzzle.  He seems a bit grumpy about the rough treatment, but licks his dripping muzzle and wags his tail all the same.";
		otherwise:
			say "    You let him go to town at your snatch[esfn] for a while[if cunts of player > 1], enjoying it as he swaps between them periodically[end if].  That lapping tongue of his is very enjoyable, building your arousal higher.  Eventually though, as your climax is approaching, you're ready to set the pace and direct his actions.  Pushing him back onto the ground, you kneel over his head and ride his face, grinding firmly.  You hot juices leak messily onto his muzzle as you tell him to lick deeper, or harder, or over your clit, as your quivering cunn[yfn] demand[sfv].  With a moan of release, you cum hard, soaking his lapping tongue and canine muzzle with your feminine fluids.  Once he's been made to lick you clean, you climb off of him.  He seems a bit grumpy about the rough treatment, but licks his wet muzzle and wags his tail all the same.";
		now gsd_pet is 13;
		now lastfuck of gshep is turns;
	otherwise if gsd_pet is 13:
		say "[gshep_sexargue]";
		now gsd_pet is 14;
		now lastfuck of gshep is turns;
	otherwise if gsd_pet is 14:
		say "<***repeats for now>";
		now lastfuck of gshep is turns;
	otherwise if gsd_pet is 15:
		say "<***you should get his collar (and put him in his place/to placate him?)>";


Section 3 - Learning his Place

to say gshep_postfightargue:		[Post-fight argument]
	say "     Korvin comes up to you after the fight, clearly upset [if fightoutcome >= 10 and fightoutcome <= 19]despite the victory[otherwise]with the way it went[end if].  'What was that?  You kept getting in my way out there.  You're such a sloppy fighter that I'm surprised you've even lasted this long.  You should know by now how I fight and be able to let me do my thing.'  He's growls and grumbles as he continues into what you're doing wrong.  How do you respond to this, by [link]disciplining him (Y)[as]y[end link] for his attitude or [link]taking his feedback (N)[as]n[end link]?";
	if the player consents:
		say "     Deciding you don't want to take more of his backtalk, you surprise him by grappling his arm and pinning it behind his back.  Within moments, he's face first on the ground.  'How's that for sloppy fighting, you cur?  You've got to get it in that thick head of yours that I'm the alpha, I'm in charge and if anyone's got to adjust their fighting style, it's you to work with mine.  I beat the stuffing out of you plenty, so you'd best pull your head out of your ass before I shove my [if cocks of player > 0]cock[smn] it[otherwise]boot[end if] in there beside it.'";
		say "     He struggles at first, but has to relent as you keep the dog pinned.  Eventually you let the cowed dog up.  Taking advantage of having him intimidated, you decide to give him some training of your own.  He's right that the two of you should be able to better coordinate, but he'll be taking his queues from you.  In addition to drilling several signals and fighting patterns into him, you add in more mundane dog obedience.  He's demeaned as you make him sit, beg, roll over, bark or fetch on command.  And while he clearly rankles at this, he cannot object lest he face harsher punishment from you.  Only once you're satisfied that he understands and will follow your instructions, as well as his doggy training, do you end the session.  Having made sure he'll coordinate with you, Korvin will now be able to work more effectively with you in combat.";
		increase lastfuck of gshep by 2;
		now gshep_postfight is 2;
	otherwise:
		say "     As he's revving up to go on about your faults as a fighter, you tell him that you'll listen if he cans the attitude.  Your firm response and stance cause him to check himself for a moment.  Remembering who's in charge, he tones it back while giving you his feedback on your recent battles together.  There's plenty of good points mixed in there with his bluster and, with some changes from you, the two of you are able to work out some techniques and patterns that compliment your strengths and cover for your weaknesses.";
		say "     By the time you're done, Korvin seems better behaved.  The opportunity to be heard and work with you seems to have helped him learn to be a bit more stable as well.  This has been another step on his road to recovery as well as improving your ability to fight together in the future.";
		now gshep_postfight is 1;
	increase dexterity of gshep by 1;
	increase weapon damage of gshep by 1;
	now lastscene of gshep is turns;
	if gsd_pet is 12 or gsd_pet is 13 or gsd_pet is 14:
		if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 ) or ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_inactive > 0 ) or ( gshep_postfight > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ) or ( gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
			say "[gshep_collar_prompt]";
	attempttowait;

to say gshep_sexargue:				[Sex role argument]
	say "     Feeling a rush of arousal, you decide to have Korvin help you deal with it  You run your eyes appreciatively over the German Shepherd's studly body and lick your lips.  Setting aside your gear, you prop one leg up on [if location of player is bunker or location of player is grey abbey library or location of player is grey abbey 2F]a chair[otherwise]some debris[end if] with your thighs spread.  With a come-hither motion, you tell him to put that [if cocks of player > 0]fine muzzle[otherwise]doggy tongue[end if] of his to work.  He eyes your crotch with some interest, but manages to pull his eyes away and glare at you defiantly.";
	say "     'Why don't you try and make me, jerkface?  I'm not just some silly lapdog to [if cocks of player > 0]suck you off[otherwise]lick your snatch[end if] whenever you want.  What am I getting out of it and when do I get my turn?  I got plenty of tail out there on my own!' he responds even as he strides towards you.";
	say "     How shall you react to this insubordination from him?  Perhaps he's got a point or maybe he needs to be reminded of who's in charge.  Shall you [link]put him in his place (y)[as]y[end link] or [link]opt for some mutual fun (n)[as]n[end link]?";
	if the player consents:
		say "     Rather than tolerate his lip, you step off your perch and advance on him.  He makes a grab for you, but you've fought him enough to see it coming.  Grabbing his arm as he swings it, you [if cocks of player > 0]trip him down to the ground[otherwise]flip him onto his back[end if] - hard.  Briefly stunned by the hard fall you pin him down and snag his collar.  Twisting the rope in you grip tightens it, keeping him down.";
		say "     'I'm the [if cocks of player > 0]master[otherwise]mistress[end if], the alpha, the boss here.  You'll get your turn when I say you'll get it and not before.'  You speak firmly to him as you hold him down.  At first he remains defiant, but soon enough he dips his ears with a doggy whimper of submission.  'That's better.'";
		attempttowait;
		if cocks of player > 0:
			say "     With him pinned beneath you like this, you decide you'd prefer to take advantage of the situation and grind your crotch against his butt.  He gives another whimper, but his rear raises what little it can and his doggy tail flips up.  Having already freed your cock, you grind it against his rear a few times before lining it up with that crinkled hole of his.  You prod it a few times, allowing your pre to leak out to slicken it up.  As it relaxes, you work it open a little more until you're able to thrust into the buff dog's ass.";
			say "     As you begin thrusting into him, he starts to pant with arousal even as he tries to stay tough.  You spot one of Korvin's paws moves toward his crotch.  You push it away even as you shove your hips hard against his own, drilling your cock firmly against his prostate.  'None of that, dog.  You're being punished for talking back to your alpha.'";
			attempttowait;
			say "     You ride his ass hard and fast, always working for your own pleasure over his.  He's clearly enjoying it as well, but soon you're rushing toward your release while he's only about halfway there.  By this point, he's moaning with need as his butt squeezes and tugs at your [cock of player] cock.  You grin at the sight of him reduced to such a state and bury your meat in him one last time before releasing your hot load into his clenching bowels.";
			say "     With his [if cock width of player > 30]belly bloated by your [cum load size of player] output[otherwise if cock width of player > 20]belly visibly plumped by your [cum load size of player] output[otherwise if cock width of player > 11]bowels stuffed by your [cum load size of player] output[otherwise]bowels marked by your sticky output[end if], you pull out and use his fluffy tail to wipe your dick off.  Your semen [if cock width of player > 16]flows[otherwise]leaks[end if] from his well-fucked hole, sticking to the fur of his thighs.  Getting off him, you pull Korvin to his knees.  His doggy dick is rock hard and drooling precum steadily after the rough and rapid fucking he's received.";
			say "     'Now you go off and take care of that yourself.  And maybe next time you'll be more respectful of your master.'  You give his messy butt a light swat, sending the cowed dog off.  He gives a last light whimper of need, but makes no further protest, rushing off to get his much-needed release.";
		otherwise:
			say "     With him pinned under you like this, you decide you'd prefer to take advantage of the situation and grind your crotch down onto his.  He pants softly as his dick, already semi-hard, emerges further from its sheath.  Having already bared your snatch, you grind it across his stiffening rod, getting it slick with your juices before lining up with its glans.  You tease him, only allowing the barest tip of his dick into your vagina for several rolls of your hips before finally sinking down onto it.";
			say "     As you begin to ride him, he starts to pant with arousal even as he tries to stay tough.  The moment he goes to grab your ass and moves to thrust up into you though, you pull off, denying him your hot pussy.  'None of that, dog.  You're being punished for talking back to your alpha.'";
			attempttowait;
			say "     You sink back down onto him slowly, drawing it out and getting a whimper of need from him.  You set yourself back to riding his thick dog dick.  There a couple more false starts like this where he tries to thrust up into your snatch.  You keep pulling off when he does and add a tug on his collar, and soon enough he's cowed into letting you use his cock like a dildo.";
			say "     You slide your cunt up and down that pulsing rod of his at your own pace, shifting speed and position as you desire.  You always work it for your own pleasure over his.  He's clearly enjoying it as well, but soon you're rushing toward your release while he's only about halfway there.  By this point, he's moaning with need as his canine cock throbs.  His knot is full and you can feel its heat eat time your wet lips press against it, but you stay off of it, denying the tie he clearly desires, but is not allowed to take.  You grin at the sight of him reduced to such a state and clench firmly around his pole as you soak it with your orgasmic juices.";
			say "     You ride out your orgasm on his throbbing rod.  Your feminine juices run down his pole, over his knot and balls as your hot cunny quivers on his cock.  Feeling you cumming on his pole's gotten him close, but without the tie, it's not enough, leaving him blue-balled.  Once you've had your fun, you rise slowly off of him and make a show of spreading your folds to show off your recently-fucked cunt and its not messy with any of his sloppy seed.";
			say "     'Now you go off and take care of that yourself.  And maybe next time you'll be more respectful of your master.'  You give his messy butt a light swat, sending the cowed dog off.  He gives a last light whimper of need, but makes no further protest, rushing off to get his much-needed release.";
		now gshep_sexscene is 2;
	otherwise:
		say "     Rather than wait for him, you step off your perch and advance on him.  When you meet, you derail his attempt to start a fight with a kiss.  The two of you lock lips and soon you're groping and fondling one another.  It's not long after that before you end up on the floor together.  Still lusting for that [if cocks of player > 0]muzzle[otherwise]tongue[end if] of his, you shift around to bring your crotch to his face.  This comes with the added perk of putting his rising cock right within reach of your mouth.";
		say "     'You're right.  I think you deserve a bit of a treat in return for your service.'  You give his dick a slow lick.  'Just be more respectful of your alpha next time, or I won't be so forgiving.'  You then envelop his hard meat in your mouth and start sucking on it.";
		say "     Korvin gives a soft moan.  'Yes, [if cocks of player > 0]master[otherwise]mistress[end if],' he replies before setting his muzzle to task licking your waiting loins.  His long tongue slides over you, slathering your crotch with doggy drool.";
		attempttowait;
		if cocks of player > 0:
			say "     The dog's tongue plays across your [cock size desc of player] shaft, working it over with increasing eagerness.  And when he takes it into his muzzle to blow you, you reach down and the dog an ear scritch and suck his cock harder in return.  The two of you go at it, blowing each other with growing vigour.";
			say "     In addition to how good it feels to have that tongue and muzzle of his working you over, sucking him off reminds of just how fine of a cock he's got.  You lap up his precum, savouring the taste of his musky pre before swallowing it down.  You do your best to get the shepherd off, working to get a nice, big load from him as he does the same to you in return[if cocks of player > 2].  He even makes sure to swap occasionally between your shafts, sucking one while using his paw on the others[otherwise if cocks of player is 2].  He even makes sure to swap occasionally between your shafts, sucking one while using his paw on the other[end if][if cunts of player > 1].  Your cunts aren't left out either, getting fingered by the lustful canine[otherwise if cunts of player is 1].  Your cunts aren't left out either, getting fingered by the lustful canine[end if].";
			attempttowait;
			say "     After working each other over for quite a while, you're both about ready to pop.  Sucking firmly on his meat, you fondle his balls, urging him to feed you his hot load.  His rod pulses in your mouth before sending spurt after spurt of gooey seed across your tongue.  The taste of the musky treat is that last bit you need to get yourself off and you pump your [cum load size of player] load down his throat in return.";
			say "     You lick each other's cock clean before separating and getting up.  You give the g-shep's ass a light swat and his tail gives a happy wag, sending him on his way.  You take your time gathering up your clothes and equipment, enjoying the blissful afterglow.";
		otherwise if cunts of player > 0:
			say "     The dog's tongue plays across your juicy snatch, working it over with obvious eagerness.  Bending one leg to better spread your thighs allows him to dive deeper and wriggle that slobbery tongue into your cunt.  As reward, you reach down and the dog an ear scritch and suck his cock harder in return.  The two of you go at it, both orally pleasing the other with growing vigour.";
			say "     In addition to how good it feels to have that tongue lashing about inside you, sucking him off reminds of just how fine of a cock he's got.  You lap up his precum, savouring the taste of his musky pre before swallowing it down.  You do your best to get the shepherd off, working to get a nice, big load from him as he pushes you to several small climaxes in return[if cunts of player > 2].  He even makes sure to swap occasionally between your cunts, lapping into one while using his paw on the others[otherwise if cocks of player is 2].  He even makes sure to swap occasionally between your cunts, lapping into one while using his paw on the other[end if].";
			attempttowait;
			say "     After working each other over for quite a while, you're both about ready to pop.  Sucking firmly on his meat, you fondle his balls, urging him to feed you his hot load.  His rod pulses in your mouth before sending spurt after spurt of gooey seed across your tongue.  The taste of the musky treat is that last bit you need to drive you to a powerful final orgasm that has your cunt quivering around his tongue, soaking it in your femmecum.";
			say "     You lick each other's loins clean before separating and getting up.  You give the g-shep's ass a light swat and his tail gives a happy wag, sending him on his way.  You take your time gathering up your clothes and equipment, enjoying the blissful afterglow.";
		now gshep_sexscene is 1;
		now lastscene of gshep is turns;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 ) or ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_inactive > 0 ) or ( gshep_postfight > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ) or ( gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		say "[gshep_collar_prompt]";

after going to Bunker while gshep is tamed:			[Discipline argument / inactivity argument]
	if ( gsd_pet is 12 or gsd_pet is 13 or gsd_pet is 14 ) and lastscene of gshep - turns >= 4 and ( cocks of player > 0 or cunts of player > 0 ):
		if a random chance of 2 in 3 succeeds:
			if gshep_bed_scene is 0 and lastfuck of gshep - turns >= 4 and ( a random chance of 1 in 2 succeeds or gshep_inactive > 0 ):
				say "[gshep_bedcrumbs]";
			otherwise if gshep_inactive is 0 and lastfight of gshep - turns >= 12:
				say "[gshep_inactive_scene]";
			
to say gshep_bedcrumbs:
	say "     Stepping back into the bunker, you notice that Korvin is already in there.  He's munching on some dog biscuits and, giving you a quick glance, plops himself down on your bunk.  He continues to munch away on his crunchy treats, getting crumbs on your bed.  You need to decide how to deal with this behaviour.  Shall you [link]put him on the floor (Y)[end link] like the dog he is or [link]playfully tussle with him (N)[end link]?";
	if the player consents:
		say "     As you stomp over to your bunk, he tries to remain nonchalant, but you can see his ears dip.  Grabbing him by the rope collar, you yank him off the bed and push him down to the floor.  His box of dog treats spills and, as he reaches for one of them, you just stomp on it.";
		say "     'Bad dog!' you growl.  'You're not allowed up on my bed unless I say so... and that's only so I can fuck you.'  Through this, you've kept a tight grip on his collar, preventing him from raising his head off the ground.  'Is that what you're really looking for?'  He glances away, ashamed to meet your gaze.  'You naughty pup,' you laugh.  'Well, too bad.  You've been a bad dog, so no [if cocks of player > 0]bone[otherwise]boning[end if] for you.'";
		say "     What form shall his disciplining take - [link]foot licking (Y)[end link] or [link]oral (N)[end link]?";
		if the player consents:
			say "     Removing any covering from it, you very deliberately grind your bare foot down onto the dog treat fragments on the floor.  You then press your crumb-encrusted foot upon his muzzle.  'Look at this mess you've made.  And now I've stepped on some of them, too.  Someone's going to have to clean up this mess.'  You press your foot to his muzzle again, reinforcing which of of them you mean for him to clean.";
			say "     His ears dip and he gives a little whimper, but his tongue comes out and starts lapping at your foot.  His long, slobbery tongue slides all over, chasing after those biscuit fragments.  As his tongue cleans you, you casually [if cocks of player > 0]stroke your cock[smn][otherwise]finger your puss[yfn][end if].  His eyes are drawn to this and his tongue gets wetter with drool at the appetizing sight, but you keep him licking at your foot until you're ready to cum.  Taking your well-licked foot away, you ";
			if cocks of player > 0:
				say "aim your cock[smn] down at him and [if cock width of player > 24]hose him down with your copious seed[otherwise if cock width of player > 12]spray your load across his head and upper body[otherwise]spray your load across his face and muzzle[end if].  He's left on the messy floor, sticking with your cum and littered with spilt dog treats - several of which have now been flavoured by your semen.";
			otherwise:
				say "pull his head closer as you cum.  Your puss[yfn] squirt[sfv], spraying musky femmecum across his muzzle.  He's left on the messy floor, sticky with your juices and littered with spilt dog treats - several of which have now been flavoured by your splattered juices.";
		otherwise:
			say "     Stripping any obstructing coverings from it, you bare your crotch and take a seat at the edge of the bed.  With a firm hand on his rope collar, you pull his muzzle between your legs and order him to lick you like the dog he is.  His ears dip and he gives a little whimper, but his tongue comes out and starts lapping at your [if cocks of player > 0 and cunts of player > 0]dick[smn] and cunt[sfn][otherwise if cocks of player > 0]cock[smn][otherwise]cunt[sfn][end if] with an eagerness that makes you wonder just how much the tough dog is enjoying being put in his place.  But you don't have a chance to dwell on that further as his tonguework quickly gets you [if cocks of player > 0 and cunts of player > 0]hard and wet[otherwise if cocks of player > 0]hard[otherwise]wet[end if].  Keeping a firm hold on him, you have him lick you until you're ready to cum before ";
			if cocks of player > 0:
				say "pushing him back with your foot.  You aim your cock[smn] down at him and [if cock width of player > 24]hose him down with your copious seed[otherwise if cock width of player > 12]spray your load across his head and upper body[otherwise]spray your load across his face and muzzle[end if].  He's left on the messy floor, sticking with your cum and littered with spilt dog treats - several of which have now been flavoured by your semen.";
			otherwise:
				say "tug his head back a few inches from his prize while fingering yourself quickly to finish.  Your puss[yfn] squirt[sfv], spraying musky femmecum across his muzzle.  He's left on the messy floor, sticky with your juices and littered with spilt dog treats - several of which have now been flavoured by your splattered juices.";
		now gshep_bed_scene is 2;
	otherwise:
		say "     Seeing a playful defiance in his attitude, you approach the bed and point to the floor.  'Hey!  Get off my bed.  You're getting crumbs everywhere.'";
		say "     Korvin meets your glare with one of his own.  'Why don't you make me?' he says, exaggeratedly chomping on another dog treat while leaning back.";
		say "     Seeing how it's going to be, you shove him back onto the bunk and hold him down.  This knocks the box of dog biscuits from his hand, spilling several on the floor.  He gives a little growl at his.  'Oh.  It. is. on!' he states and pushes you off of him.  Soon the two of you are wrestling and play-fighting on and around your bed with the occasional snarl and snap from the defiant canine.";
		attempttowait;
		if cocks of player > 0:
			say "     You've proven yourself his better in the past and now is no different.  In the end, he can't beat you and ends up pinned face down beneath you.  You hold him with one hand on his shoulder and the other around that snapping muzzle.  During the playful struggle, your gear and clothes have ended up being removed as well, leaving you free to grind your now stiff cock against his rear.  With the excitement of the mock-fight to get his blood pumping, his tail raises out of the way as your dick prods his rear and even wags a little.";
			say "     You can't help but grin at the moan the tough dog tries to muffle as your [cock of player] cock sinks into his butt.  'I think the naughty doggy likes that.  I'd almost think this is what you wanted in the first place.'  His ears dip at the teasing, blushing and unable to meet your gaze.  And with your hand clamped around his muzzle, he can't bluster or deny it either.  'Yeah.  I can tell this is the dog bone you really wanted,' you tease, grinding your hips to his as you bury your cock in him, eliciting another needy moan.";
			attempttowait;
			say "     While you may have started slow, you end up giving him the rough pounding he seems to desire.  By the point you release his muzzle to better support yourself on the mattress for hard thrusting, he can only pant, whimper and moan like the horny hound he is.  He pushes back into your thrusts, grinding his dick against the bedding and you know he must be rock hard.  He even ends up cumming shortly before you, blushing all the more as you taunt the tough guy about it.";
			say "     After shooting your load into his clenching hole, he's left sticky with cum both on his front and his behind and your bunk is even more the mess.  Giving his rope collar a tug, you order him to clean up the mess he's made of your bed when he's recovered.  'And no more getting crumbs on my bed.  When I want to fuck you, you'll know it, you slut,' you add with a light slap to his well-pounded rear.  Korvin climbs out of the bed and obediently cleans up your bunk and the floor around it without delay or backtalk[if cock width of player > 24].  For a while he ends up making more mess on the floor behind himself than he's cleaning up, as he leaves frequent dribbles of your semen behind himself as he goes[otherwise if cock width of player > 12], though he does have to go over some spots twice as he leaks semen from his well-used bottom for a time[end if].";
		otherwise:
			say "     You've proven yourself his better in the past and now is no different.  In the end, he can't beat you and ends up pinned on his back beneath you.  You hold him with one hand on his shoulder and the other around that snapping muzzle.  During the playful struggle, your gear and clothes have ended up being removed as well, leaving you free to grind your now wet pussy against canine shaft.  With the excitement of the mock-fight to get his blood pumping, his dick's emerged and throbs harder as you press down onto it.";
			say "     You can't help but grin at the needy whimper the tough dog tries to muffle as your juicy cunt grinds against his shaft.  'I think the naughty doggy likes being put in his place.  Is this what you wanted all along?'  His ears dip at the teasing, blushing and unable to meet your gaze.  And with your hand clamped around his muzzle, he can't bluster or deny it either.  'Yeah.  I can tell this is the treat you really cared about,' you tease, shifting your hips to slide across his shaft again, eliciting another needy moan.";
			attempttowait;
			say "     While you may have started with just the teasing grinding, you soon move to give his pulsing rod entry and start riding him hard.  By the point you release his muzzle to better support yourself on his strong chest, he can only pant, whimper and moan like the horny hound he is.  He thrusts up into you as you slam down, finally pressing his knot into your juicy cunt.  Grabbing him by the rope collar, you order him to cum and, already at the edge of release, his body obeys.  Feeling his hot load shooting into your cunt, you orgasm after the first few spurts and end up milking on his pulsing rod for all he's got.";
			say "     As soon as you're able to pull free from the knot, you pull off of the dog's dick.  The excess semen flows out, much of it making a mess on and between his thighs as well as your bunk.  Giving his rope collar a tug, you order him to clean up the mess he's made of your bed when he's recovered.  'And no more getting crumbs on my bed.  When I want to fuck you, you'll know it, you slut,' you add with a light bap on his nose.  Korvin climbs out of the bed and obediently cleans up your bunk and the floor around it without delay or backtalk.";
		now gshep_bed_scene is 1;
	now lastscene of gshep is turns;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 ) or ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_inactive > 0 ) or ( gshep_postfight > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ) or ( gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		say "[gshep_collar_prompt]";

to say gshep_inactive_scene:
	now lastscene of gshep is turns;
	say "     Korvin had been staring out a window in the library, but rushes over to you as you enter the bunker.  Grabbing your shoulder as you step onto the stairwell landing, he turns you around.  'What do you think you're doing going inside?  The action's out there,' he growls, pointing toward the exit to the outdoors.  'Look!  I agreed to this because I thought I'd get some action - and not just sex.  I want a fight.  My talents are wasted just sitting around.'";
	say "     Shall you will you make him [link]cool his jets (Y)[as]y[end link] or accept his request and take him out to [link]find a fight (N)[as]n[end link]?";
	if the player consents:
		say "     Rather than take his guff, you grab him by his rope collar and slam him back against the concrete wall.  You can hear the old paint flaking from the wall as it gets caught in his fur.  He seems about ready to fight you, but you glare at him hard and tighten your grip.";
		say "     'I'm in charge and I say when we go out and when we don't.  You aren't going to be worth anything to me if you can't go more than a day without a fight.  You think that attitude's going to fly when we get out of this city?'  You give him a firm shake before tossing him to the floor.  'But if you really want a fight, you can fight me - right here and right now.  We both know how well that turned out for you before.'";
		say "     Faced with the rage of his alpha, he has to back down.  He slinks back on all fours, head down and tail between his legs.  He edges slowly out of the bunker as you stomp towards him.  'You're my DOG and you'll obey ME!  You're my attack dog when I tell you to fight.  You're my pet when I tell you to fetch my slippers.  And you're my BITCH when I want to fuck your brains out, you ass.'  You let that sink in for a few seconds before turning away, going back into my bunker.  'Now, I have my own shit to do... and it ain't you.'";
		now gshep_inactive is 2;
	otherwise:
		say "     Seeing the way his paws are clenching into fists and how he's fidgeting from foot to foot, you decide he could use a chance to blow off some steam.  You pause a bit to remind him that it's your decision before nodding and telling him to get ready.  He gives a growl of anticipation and smacks a fist into his palm a few times.  'I've been ready all day.'  You add that you'll agree this one time, but that he'll have to be more self-controlled in the future - he's not a wild dog anymore.  He nods and takes a breath, settling down a little before fist-pumping.  'Come on!  Let's do this thing!'";
		if the player is not lonely and companion of player is not gshep:
			say "     Your current companion backs off at a glare from Korvin, leaving him to accompany you instead.  The German Shepherd clearly wants to go out and fight alongside his alpha - just the two of you against the city.";
		now companion of player is gshep;
		now battleground is "Outside";
		say "     Once outside, the dog goes sniffing for a fight, chasing after the first interesting trail he comes across.  You follow him as he soon leads you to an encounter with a roaming denizen of the city.";
		attempttowait;
		fight;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Korvin seems quite pleased now that he's gotten out.  The fight's taken the edge off that pent of energy of his and satisfied his aggressive streak for the moment.  'That was great, chief.  It feels good to go out and bust some heads every now and again.'  You remind him again that if he's going to be your dog, he's got to be able to rein that in... at least until you need to call on it.  Once you're rescued, he'll be no good to you or anyone if he can't.";
			say "     'Right, boss.  Gotta save the fight for when it counts.  Gotcha.'  He seems to take your feedback to heart, recovering a bit of self-control over his infection's urges.";
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:
			say "     Korvin, driven back as the fight was lost, comes back to rejoin you.  He helps you up and seems uncharacteristically nice.  You have to guess he feels a bit guilty for getting you into a losing battle.  You also suspect he'll keep a tighter rein on those aggressive urges from now on.  You give him a soft pat on the back and ruffle his headfur and ears.  He gives a laughing growl and elbows you in the ribs.";
		otherwise:
			say "     When you fall back, Korvin's forced to flee as well.  He seems upset about you running away and is about to snap at you when you just glare at him.  It's his fault you ended up in that fight in the first place and he knows it.  In the end, his ears drop and he lowers his head in hangdog expression.  It's clear he knows he'll have to show more self-control over his aggressive urges if he's going to be of use to you.";
			decrease morale of player by 5;
		say "     When the two of you return to the library, he goes to find somewhere to curl up.  You know he won't always do so patiently, but you're confident he'll wait until called upon from now on.  You continue on into the bunker, getting back to what you were doing before.";
		now gshep_inactive is 1;
	if ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_bed_scene > 0 ) or ( gshep_postfight > 0 and gshep_sexscene > 0 and gshep_inactive > 0 ) or ( gshep_postfight > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ) or ( gshep_sexscene > 0 and gshep_bed_scene > 0 and gshep_inactive > 0 ):
		say "[gshep_collar_prompt]";


to say gshep_collar_prompt:
	if ( gshep_postfight + gshep_sexscene + gshep_bed_scene + gshep_inactive ) > 5:
		say "***";
	otherwise:
		say "***";
	now gsd_pet is 15;

[ *** notes ]
[
Post-fight (2nd or 3rd fight)
Korvin bad-mouths the player, criticizing their fighting style/skill, kept getting in his way, glory hound
- Player can put him back in his place - "I beat you", pin him down and so on.  Fuck him, maybe minor stat upgrade to K.
- Player listens to his feedback, maybe a bit of xp for player

Growls wants to go out and fight (if no combat in several rounds)
---- what are you doing coming in here?  I want to go out and fight. ----
- Player can put in his place & set schedule
- Player can be understanding and go out for a fight - letting him get it out of his system. - Random fight

]


[ *** DEBUGGER ]


Section 8 - Debugger - Not for release

gsdpettesting is an action applying to nothing.
understand "gsdpettest" as gsdpettesting.

carry out gsdpettesting:
	now gsd_pet is 12;
	now gshep is tamed;
	now weapon damage of gshep is 5;
	now level of gshep is 3;
	now dexterity of gshep is 13;
	now lastfight of gshep is turns;
	now lastscene of gshep is turns;
	now lastfuck of gshep is turns + 6;
	now gshep_fights is 0;
	now gshep_postfight is 0;		[post-fight argument]
	now gshep_sexscene is 0;		[sex-role argument]
	now gshep_bed_scene is 0;		[discipline argument]
	now gshep_inactive is 0;		[inactivity argument]


[        gsd_pet        ]
[ 0 = not met           ]
[ 1 = met him           ]
[ 2 = player lost       ]
[ 3 = lost again        ]
[ 4 = player locked     ]
[ 10 = player won       ]
[ 11 = won again        ]
[ 12 = recruited        ]
[ 13 = sexed up			]
[ 14 = sexed up	again   ]
[ 15 = pending collar   ]
[ 20-59 - trained       ]

[ 60-99 - enslaved      ]

[ 100 = banished        ]



Korvin ends here.
