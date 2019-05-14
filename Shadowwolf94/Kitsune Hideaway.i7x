Kitsune Hideaway by Shadowwolf94 begins here.
[original by Kaleem Mcintyre]
[1.1 - Moved to Shadowwolf94's folder]
[1.2 - Player Dominant scenes added - Prometheus]

"Adds a Foxy Hideaway"

Section 1 - Foxy Hideaway

Table of GameRoomIDs (continued)
Object	Name
Foxy Hideaway	"Foxy Hideaway"

Foxy Hideaway is a room. It is fasttravel. It is private.

The description of Foxy Hideaway is "All around you the scents of flora and fauna surround the small, enclosed area kept hidden behind a single door. The smells of the various plants range from jasmine, to lavender, to roses, to honeysuckles, filling up the silver vulpine's den. From what you can see, Kitsune has placed a large four-poster bed in the middle of his hideaway - strange considering that there is grass growing from the floor around the feet of the plush sleeping pallet. There are also two nightstands on either side of the room with elegant lamps dominating the top of said stand; both are on, but running at a low lighting. On both the left and right sides of the walls are tapestries with silver and white nine-tailed kitsunes standing regal in place, almost as though they were watching the room for intruders. Besides the flowers growing throughout the room, there are small ornaments, such as vases and other assorted pottery, placed onto the floor with incense sticks burning within them. With all of this grandiose ensemble collected together, the room should feel oppressive, but it instead feels... open, for some reason.".

instead of sniffing Foxy Hideaway:
	say "The scent of a male vulpine wafts gently throughout the room. This pleasant smell is chased by the strong musk of incense endlessly burning away inside of small ornamental jars.";

Section 2 - Kitsune

Table of GameCharacterIDs (continued)
object	name
Kitsune	"Kitsune"

Kitsune is a man.
[Physical details as of game start]
ScaleValue of Kitsune is 3. [human sized]
SleepRhythm of Kitsune is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Kitsune is 1. [X cock]
Cock Length of Kitsune is 11. [X Inches]
Ball Size of Kitsune is 7.
Ball Count of Kitsune is 2. [X balls]
Cunt Count of Kitsune is 0. [X pussy]
Cunt Length of Kitsune is 0. [X Cunt]
Cunt Tightness of Kitsune is 0. [X Cunt]
Nipple Count of Kitsune is 2. [X nipples]
Breast Size of Kitsune is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Kitsune is true. [can take oversized members without pain]
Sterile of Kitsune is false.
PlayerMet of Kitsune is false.
PlayerRomanced of Kitsune is false.
PlayerFriended of Kitsune is false.
PlayerControlled of Kitsune is false.
PlayerFucked of Kitsune is false.
OralVirgin of Kitsune is false.
Virgin of Kitsune is false.
AnalVirgin of Kitsune is false.
PenileVirgin of Kitsune is false.
SexuallyExperienced of Kitsune is true.
MainInfection of Kitsune is "Kitsune".
The description of Kitsune is "A beautiful silver vulpine stands on two digitigrade legs while looking at you with heated, but controlled eyes. Nine tails dance teasingly behind the fox-man's back as he smiles at you good-naturedly. His long and lithe form seems to almost sway slightly with the subtle motions of Kitsune rocking his hips from side to side. His smile soon turns saucy as Kitsune looks you up and down, his eyes lingering a particularly long time on your groin as though studying a tempting morsel, before he looks up to your face once again. With a predatory grin crossing his muzzle, you can't help but feel slightly on edge as the feral nature of the other shines through the graceful visage that the vulpine puts on for you. Though somewhat human-like in appearance, there is no doubt of the fox-man's animal nature as Kitsune stares at you with a growing hunger. A slow sweep of a red tongue along full and pale lips lets you know not to forget this.".
The conversation of Kitsune is { "Hmmm!" }.
Kitsune is in Foxy Hideaway.

Kitsunetalk is a number that varies.
Kitsunearoused is a number that varies.

[
instead of linkactioning Kitsune when kitsunetalk > 0:
	say "Possible Actions: [link]talk[as]talk Kitsune[end link], [link]smell[as]smell Kitsune[end link], [link]fuck[as]fuck Kitsune[end link][if Kitsunefood < 5], [link]food[as]ask for food[end link][end if][if Kitsunewater < 5], [link]water[as]ask for water[end link][end if][line break]";
]

instead of sniffing Kitsune:
	say "Kitsune smells somewhat otherworldly, sweetly masculine and yet dangerous at the same time. The odor makes you wonder about the other's true nature.";

instead of conversing the Kitsune:
	if Kitsunetalk is 0: [first time you encounter the NPC text]
		say "     'I've been waiting for you, little mortal. I'm so glad you've finally decided to come and claim your reward. The question next, however, is what will you claim exactly?' Kitsune looks at you with a predatory smile before winking knowingly in your direction. You swallow thickly as you wonder that yourself.";
		say "     'You've done such a wonderful job at entertaining me that I think I'll stick around on this world to enjoy it some more. If you just so happen to come by every once in a while to visit, then that would make things all the better for both of us, don't you think?' Kitsune winks at you before licking his lips playfully.";
		increase Kitsunetalk by 1;
	else if Kitsunetalk is 1:
		say "     [one of]'Hello little mortal, come to visit me today?'[or]'Believe it or not, I was actually waiting for you.'[or]'I keep wondering, but I'm just not sure of how you'd turn out if you became a kitsune.'[or]'This world is such a mess - always has been and will be, in my opinion, but you seem to be trying to make it a better place.'[or]'I thank you for the time you have given to me by associating with me.'[or]'This world... or the other... which one indeed.'[or]'All the world is made of but fools, animals, and men... and now, sadly enough, a mixture of all three.'[or]'Should I try and play some music for you? I think I have a flute around here... somewhere.'[or]'Have you ever heard of the Japanese legend about Inari? He's a rice deity in Asian lore, but really he's more of a grandfather figure to us kitsunes.'[or]'For every one hundred years that a kitsune ages he or she gains an additional tail. Care to guess how old I am? Hint: I'm not one thousand, yet.'[or]'Back home there aren't really that many of us kitsunes. Perhaps you would like to change that by becoming one of our numbers?' Kitsune says with a sly smile on his devious face.[or]'Falderal and fiddle dee dee... what a droll thing the human world can be sometimes. Will you make it more interesting for me, little one?'[at random]";


Section 3 - Kitsune requests

[This is blocked for the moment, as it conflicts with the same request from Steven]
[
kitfoodrequest is an action applying to nothing.
Understand "ask for food" as kitfoodrequest.
kitwaterrequest is an action applying to nothing.
Understand "ask for water" as kitwaterrequest.

Lastfoodrun is a number that varies.[@Tag:NotSaved] Lastfoodrun is usually 250.
Kitsunefood is a number that varies.[@Tag:NotSaved]
Lastwaterrun is a number that varies.[@Tag:NotSaved] Lastwaterrun is usually 250.
Kitsunewater is a number that varies.[@Tag:NotSaved]

Check kitfoodrequest:
	if Kitsune is not visible:
		say "From whom?" instead;
	else if Kitsunefood is 5:
		say "'Forgive me, little one, but I'm afraid that I've been able to find in the area for you. You'll have to look elsewhere for more,' Kitsune bows low at this." instead;
	else if lastfoodrun - turns < 8:
		say "'I'm afraid you'll have to be patient. I need to make a run to see if there is any more food left in this city.'" instead;

Carry out kitfoodrequest:
	say "Kitsune smirks at you before going off... somewhere... and then returning with a bit of food for you. 'Please, take this and take care.'";
	increase carried of food by 1;
	now lastfoodrun is turns;
	increase Kitsunefood by 1;

Check kitwaterrequest:
	if Kitsune is not visible:
		say "From whom?" instead;
	else if Kitsunewater is 5:
		say "'Forgive me, little one, but I'm afraid that's all I've been able to find in the area for you. You'll have to look elsewhere for more,' Kitsune bows low at this." instead;
	else if lastwaterrun - turns < 8:
		say "Water, water everywhere, but not a drop to drink.' Kitsune chuckles at this before waving a hand in front of you. 'Forgive me, but I have always liked that verse more than I should. I have no water for you at this moment, little one.'" instead;

Carry out kitwaterrequest:
	say "Kitsune nods to you and then goes about his way to collect some water. It takes a minute but soon the other returns to gracefully hand you a bottle of water. 'May this help you on your journey, little one.'";
	increase carried of water bottle by 1;
	now lastwaterrun is turns;
	increase Kitsunewater by 1;
]

Section 4 - Fucking Kitsune

Instead of fucking Kitsune:
	setmonster "Kitsune";
	if lastfuck of Kitsune - turns < 4:
		say "     'Forgive me little one, but I'm afraid my energy reserves are a bit low at the moment.' Kitsune bows to you somewhat sadly. 'If you'll come back, then I'll be ready to [']wrestle['] under the covers with you again.' A devious smile plays out across the handsome kitsune's face, and you get the feeling that something is going on behind those azure eyes of his. 'Perhaps when we do, I can give you a more suitable form to play with?' A slow caress of one of the silver vulpine's tails across your shoulder lets you know what the other means by this.";
	else if Kitsunearoused is 0:
		say "     Seeing you seeing him aroused must be doing something to Kitsune because without too much warning, save a quick flick of his numerous tails, the other is moving over to kiss you fully on the lips. The vulpine man seems to be either very pent up or just very happy to have you in his arms because he quickly begins to slip his tongue into your mouth to wrestle your tongue into submission. Not wanting to completely give in to the other you fight back as best you can with your own rampant organ thrusting forward into Kitsune's tender maw. Your hands come up to massage the strong backside of your vulpine lover and quickly you can tell that you are doing something right as the lithe frame of Kitsune shudders and then pushes forward into you. As the moment between the two of you stretches out into endless seeming minutes you no longer find yourself caring about anything else happening in the world outside as you exchange both breath and tastes with your kitsune lover. The fact that the heavy fullness of the fox-man's sex is pushing up deeply into your front only serves to drown out your senses as all that you are wraps around all that Kitsune is. From what you can feel it would seem that it won't be much longer before the vulpine is taking you under him like the willing vixen he probably hopes you'll want to become... or vice versa.";
		say "     Pulling back from the other, you can see that Kitsune's muzzle is slightly matted down with the leftover drool of your shared kiss, and without thinking, you find your lips and tongue ghosting along the side of the vulpine's snout to clean him up. A happy whimper comes from the other at this and on the inside you feel as though you've done a good thing.";
		now Kitsunearoused is 1;
	else if Kitsunearoused >= 1:
		say "     'Well, I see that someone has gotten a little feisty at the moment,' Kitsune snickers as he looks at you with smoldering azure eyes, glowing with lustful intent.";
		say "     [bold type]'How would you like to play with me today?'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Kitsune Submissive.";
		say "     ([link]N[as]n[end link]) - Kitsune Dominant.";
		if Player consents:
			LineBreak;
			say "[PlayerDominant_Kitsune Scenes]";
		else:
			LineBreak;
			say "[Kitsune_NewMaleDomScenes]";

to say PlayerDominant_Kitsune Scenes:
	say "     [if Player is dominant]With a lascivious grin, you tell the kitsune that you're feeling horny and that he is going to help you remedy this.[else]Asking the silver fox to allow you to be dominant today, you realize you should let the vulpine know what you want.[end if] He responds with a suggestive growl and licks his lips tauntingly before lying on his side, revealing his body to you for your approval. [if Player is dominant]You smirk at the vulpine baring all before you and envision how he shall sate you.[else if Player is submissive]Unused to being the dominant partner but curious to try it out in a safe environment, you shyly look at your partner and think of what you want to do.[else]You gaze appreciatevely over the kitsune's pleasing form, from his elegant muzzle, over his firm chest, and giving a glance at his stirring sheath, the tip of his cock easing its way out. What are you going to do with your foxy mate?[end if]";
	blank out the whole of table of fucking options;
	now sextablerun is 0;
	choose a blank row from table of fucking options;
	now title entry is "Service each other orally";
	now sortorder entry is 1;
	now description entry is "Have him lie on his back to service each other and see where things go";
	[]
	if Player is male:
		choose a blank row from table of fucking options;
		now title entry is "Ride him anally";
		now sortorder entry is 2;
		now description entry is "Ride him while he lies on his back";
	[]
	if Player is male:
		choose a blank row from table of fucking options;
		now title entry is "Mount him anally";
		now sortorder entry is 3;
		now description entry is "Mount the Kitsune doggystyle and penetrate his anus";
	[]
	if Player is female:
		choose a blank row from table of fucking options;
		now title entry is "Ride him vaginally";
		now sortorder entry is 4;
		now description entry is "Ride the Kitsune while he lies on his back";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows from table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[line break][link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows from table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber from table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is:
					-- "Service each other orally":
						say "[Kitsune_DomMutualServicing]";
					-- "Ride him anally":
						say "[Kitsune_DomRidingAnal]";
					-- "Mount him anally":
						say "[Kitsune_DomDoggystyleAnal]";
					-- "Ride him vaginally":
						say "[Kitsune_DomRidingVag]";
		else if calcnumber is 0:
			say "     Kitsune is wagging his tails with a sly smile.";
			now sextablerun is 1;
			wait for any key;
		else:
			say "Invalid selection made. Please pick an option from 0 to [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Kitsune_DomMutualServicing:
	say "     [if Player is dominant]Leering at him, [else if Player is submissive]With a timid smile, [else]Licking your lips in anticipation, [end if]you push the Kitsune on his back and straddle his groin, his stirring shaft brushing against your [if Player is male]own, the flesh throbbing against the other. [else if Player is female]pussy, juices trickling down your thighs. [else]featureless crotch, your partner raising his head for a moment with a questioning eyebrow raised. [end if]You lean forward and begin to caress his sides, firmly squeezing his hips to your own remind him that you are in charge and to allow you your fun. A quiet whine issues from his mouth, but you ignore it, contenting yourself with teasing him. As your hands get higher up his body, you begin to grind lightly against his stiffening cock, feeling its warmth against your skin, a heated moan escapes your throat. Caught in the moment, you ignore the world around you, focusing on how he makes you feel and the sensations that you are providing him in return.";
	say "     Eventually, your hands reach his shoulders and you meet his lips in a searing kiss, your eyes gazing into his as you brush your tongue over his fangs. You feel his tongue try and invade your mouth in return, but you are determined to maintain the control that you currently have. Nipping his lip in reprimand as you pull away, you stare [if Player is submissive]accusingly [else if Player is dominant]contemplatively [else]pointedly [end if]at the Kitsune, the vulpine letting out a sigh before relenting his attempt at becoming a more dominant partner. Crisis averted, you commence kissing him again, brushing your hands over his cheek and holding his face firmly against your own. You are sure that you can feel him chuckling, but when you lean back to look at him, he looks confused as to why you have stopped again. Deciding that you've interrupted your making out enough as it is, you resume making out with gusto, compensating for lost time.";
	WaitLineBreak;
	say "     You vigorously connect your lips with his, possessively grasping the back of his head so as to deepen the kiss. You can feel his hands running over your back, wandering where they please from your backside to your shoulders with no regular pattern. As it feels nice and doesn't challenge your dominance over him, you decide to allow him to continue, even grinding yourself back against his paw appreciatively. Breaking the kiss to take a deep breath, the Kitsune speaks, 'Perhaps I could slip into something more comfortable for such a primal show of lust?' Confused by his request, you [if Player is submissive]hesitantly nod[else if Player is dominant]allow him to continue[else]patiently wait[end if], curious to see what he means when he doesn't appear to be wearing anything. A soft light emanates from his body, but rapidly brightens, forcing you to avert your eyes. When you can look again, your partner looks more feral in form. Whereas he used to be humanoid and lithe, now he looks more suited to standing on four paws and is the size of a direwolf.";
	say "     'Do you like it? I thought you might appreciate the chance to display your dominance over this beast,' the vulpine seductively asks, flagging his tail to the side, displaying his backside and dripping foxhood. You have to admit that his new form evokes certain lustful desires within you and you grin, telling him that his instincts were correct and that you're going to tame him. Instructing him to lie on his back, you straddle his chest so that his erect cock is twitching in front of you, pre spilling down the side to mat the soft fur of his groin. [if Player is male]Between your own legs, your maleness shows its appreciation of the view, pulsing against the Kitsune's chest and slickening the fur beneath you. [else if Player is female]You can feel the fur beneath you dampening as your pussy reacts to the sight in front of you, copious juices seeping out to slicken the Kitsune's fur. [else]While you lack the genitals to outwardly show your appreciation for the view before you, there is a certain tenseness inside of you that begs to be sated. [end if]Wanting to reward the large fox beneath you, you dive forward to begin licking his enticing shaft, pushing your groin back against his face so that he can pleasure you at the same time. He gives an eager moan before his tongue starts to slide up your thigh.";
	WaitLineBreak;
	if Player is neuter: [No Genitals]
		say "     The Kitsune seems unperturbed by your lack of genitalia, his tongue flicking over your featureless groin before settling on the flesh of your derriere, writhing beside your anus but not slipping inside. You take a break from licking his length to glare between your bodies at him, the large fox winking cheekily as he circles the tip of his tongue around the clenching hole. Deciding that he has teased you enough and needs to be taught the error of his ways, you push your body back against his muzzle, his cool nose being pressed against the base of your spine while his tongue finally squeezes inside of you. Considering how much he has mocked you and been generally difficult, you decide to focus exclusively on your own pleasure for now, lightly gyrating against the Kitsune's muzzle and leaving his saliva-coated cock to cool in the air. Your partner's dexterous tongue caresses the inner walls of your ass, making you shiver and spasm, the feelings no less intense despite your lack of sex organs.";
		say "     The Kitsune lets out a soft whine and humps pitifully at the air, begging you to return to pleasuring him, his apology for teasing you remaining unspoken but unquestionably clear. Relenting, and eager to taste his cock properly, you spear your face on his turgid flesh, eagerly slavering it and tasting his unique flavor. The act of leaning forward again causes the vulpine's whiskers to tickle your anus, making it clench in response and squeezing his tongue deep within your passage. However, it does not stop moving, fluttering within your bowels. A moment later you are able to relax your instinctual reaction, allowing the both of you to continue pleasuring each other. You must look a sight, with a direwolf-sized fox lying on his back thrusting his tongue into your rear while you return the favor by repeatedly bobbing your head on his shaft, both emitting sounds of satisfaction and eagerness.";
		WaitLineBreak;
		say "     The Kitsune's pre coats his length and your tongue as it slides between your lips and into your throat. Fresh spurts help to ease its passage and to goad you into trying to earn more, the flavor of it different to what you have experienced before. You try to time your bobbing with the strokes of the fox's tongue as he vigorously rims you, gulping noises squeezing from your mouth as he thrusts as deep as he can, his climax approaching. You doubt that your equivalent will be far behind, the cocky vulpine seemingly well practiced at anal play, simultaneously stimulating your prostate, the rim, and deeper within your bowels with his talented tongue. You realize that you have been neglecting his knot and begin to rub it with your hands even as you press your head further down his length so that your lips can kiss at it too. You hear an appreciative murmur behind you and redouble your efforts, determined to prove yourself a fair master over the experienced fox.";
		say "     The sensations becoming too much, the Kitsune sits up, his tongue still rhythmically darting into your anus as you begin to get folded in half. As he places his forepaws on the back of your head, you allow him to hammer his cock down your throat, knot popping in and out from between your lips as you moan ecstatically, gaining pleasure from what you have driven him to. His howl of climax is muffled by your backside, sending his tongue flailing without control inside you and bringing you to orgasm as well. Pulling your head back to avoid him knotting your mouth, thick jets of cum spurt directly down your throat, the back wash allowing you a better taste as it spills over your tongue and past your lips. You shudder against his warm fur, your own more discrete climax no less intense for you, the muscles inside of you clenching and releasing, especially the walls of your anus around the slick organ that is fluttering within you. The both of you cling to each other as you wait for your orgasms to relent, the escaped semen pooling on the ground beside you after spilling over the fox's fur.";
	else: [Has Genitals]
		if (scalevalue of Player > 3) or "Less Anal" is listed in feats of Player: [Blowjob or Cunnilingus]
			if Player is male:
				say "     The Kitsune's tongue flicks over your twitching shaft, the warm and dexterous muscle circling the head of your cock causing you to elicit a heated moan, the fox grinning in response. For a moment, you forget about reciprocating the pleasure, your focus being directed entirely at thrusting down into the embrace of his maw. Your partner continues on regardless, slurping enthusiastically and savoring how your cock tastes, saliva dribbling from his mouth accompanied by your precum, the mess trickling over his snout before pooling on the ground beside his head. Feeling that you have neglected the vulpine for long enough, you begin to treat his erection with equal fervor, occasionally letting out a soft grunt as you lose yourself in your task. You tune out the sounds of the city, listening only to the slurps, murmurs, and pops of your mutual pleasuring, chuckling at one point when the Kitsune inadvertently starts to wag his tail against the floor[if Player is dominant], an action you encourage to establish your control over him.[else if Player is submissive] the appendage moving in time with his mouth on your cock.[else], an action you encourage, whispering what a good boy he is.[end if]";
				say "     Over time, you begin to press your head further down the fox's shaft, the tip reaching deeper into your throat as he thrusts in time with you. Miraculously, you don't choke despite the impressive size of it, and you wonder whether he is perhaps using magic to allow this. This thought is quickly brushed from your mind as the Kitsune completely hilts you in his mouth, encircling his tongue around your girth and squeezing. Your gasp is stifled by the cock in your throat, but the vibrations that you send through his flesh causes his breath to quicken and his paws to peddle futilely in the air. You smirk to yourself as you repeat this treatment intermittently, rewarding him when he succeeds in giving you similar stimulation. You must look a sight, with a bear-sized fox lying on his back swallowing your length while you return the favor, both of emitting sounds of satisfaction and eagerness.";
				WaitLineBreak;
				say "     As your coupling progresses, the pre coating the Kitsune's length becomes more copious, allowing you to more easily slide it into your throat. You begin to experiment with ways to further excite him, a fresh spurt of pre rewarding you each time you do, the flavor different to any that you have experienced before. The two of you begin to sync your head movements, gulping noises squeezing from your mouth as he thrusts as deep as he can, his climax approaching. You doubt that your own will be far behind, the cocky vulpine seemingly well practiced at orally pleasuring his partners, simultaneously stimulating your [if Player is knotted]knot, [end if]shaft, tip, and balls with his talented tongue. Realizing that you have been neglecting his [if Player is knotted]own [end if]knot, you begin to rub it with your fingers even as you press your head further down his length so that your lips can kiss at it too. You hear an appreciative murmur behind you and redouble your efforts, determined to prove yourself a fair master over the experienced fox.";
				say "     The sensations becoming too much, the Kitsune starts to quiver as his climax approaches, the suction on your shaft becoming increasingly frantic. As he places his forepaws on the back of your head, you allow him to hammer his cock down your throat, knot popping in and out from between your lips as you moan ecstatically, gaining pleasure from what you have driven him to. His howl of climax is muffled by your backside, sending his tongue flailing without control inside you and bringing you to orgasm as well. Pulling your head back to avoid him knotting your mouth, thick jets of cum spurt directly down your throat, the back wash allowing you a better taste as it spills over your tongue and past your lips. You shudder against his warm fur, your own semen spurting over his tongue and down his greedy gullet, the both of you clinging to each other as you wait for your orgasms to relent, the mess from your union pooling on the ground beside you after spilling over the fox's fur.";
			else:
				say "     The Kitsune's tongue flicks over your wet cunt, the warm and dexterous muscle parting your lips and tickling your clit, evoking a soft moan from you, the fox grinning in response. For a moment, you forget about reciprocating the pleasure, your focus being directed entirely at grinding your quim against his thirsty maw. Your partner continues on regardless, slurping enthusiastically and savoring how your pussy tastes, saliva dribbling from his mouth accompanied by your juices, the mess trickling over his snout before pooling on the ground beside his head. Feeling that you have neglected the vulpine for long enough, you begin to treat his erection with equal fervor, occasionally letting out a soft grunt as you lose yourself in your task. You tune out the sounds of the city, listening only to the slurps, murmurs, and pops of your mutual pleasuring, chuckling at one point when the Kitsune inadvertently starts to wag his tail against the floor[if Player is dominant], an action you encourage to establish your control over him.[else if Player is submissive] the appendage moving in sync with his tongue in your slit.[else], an action you encourage, whispering what a good boy he is.[end if]";
				say "     Over time, you begin to press your head further down the fox's shaft, the tip reaching deeper into your throat as he thrusts in time with licking you. Miraculously, you don't choke despite the impressive size of it, and you wonder whether he is perhaps using magic to allow this. This thought is quickly brushed from your mind as the Kitsune penetrates you with his tongue, sending it spearing deep inside of you. Your gasp is stifled by the cock in your throat, but the vibrations that you send through his flesh causes his breath to quicken and his paws to peddle futilely in the air. You smirk to yourself as you repeat this treatment intermittently, rewarding him when he succeeds in giving you similar stimulation. You must look a sight, with a bear-sized fox lying on his back with his tongue deep in your pussy while you return the favor by repeatedly bobbing your head on his shaft, both of emitting sounds of satisfaction and eagerness.";
				WaitLineBreak;
				say "     As your coupling progresses, the pre coating the Kitsune's length becomes more copious, allowing you to more easily slide it into your throat. You begin to experiment with ways to further excite him, a fresh spurt of pre rewarding you each time you do, the flavor different to any that you have experienced before. The two of you begin to sync your head movements, gulping noises squeezing from your mouth as he thrusts as deep as he can, his climax approaching. You doubt that your own will be far behind, the cocky vulpine seemingly well practiced at orally pleasuring his partners, simultaneously stimulating your clitoris, vaginal walls, and vulva with his talented tongue. Realising that you have been neglecting his knot, you begin to rub it with your fingers even as you press your head further down his length so that your lips can kiss at it too. You hear an appreciative murmur behind you and redouble your efforts, determined to prove yourself a fair master over the experienced fox.";
				say "     The sensations becoming too much, the Kitsune starts to quiver as his climax approaches, his tongue still rhythmically darting into your pussy, even managing to brush against your cervix. Placing his forepaws on the back of your head, he really begins to hammer his cock down your throat, knot popping in and out from between your lips as you moan ecstatically, gaining pleasure from what you have driven him to. His howl of climax is muffled by your cunt over his mouth, the vibrations of his howl sending you over the edge just after him. Thick jets of cum spurt directly towards your stomach, the back wash allowing you a better taste as it spills over your tongue and out of your unknotted mouth, your partner kind enough to refrain from tying with your face. You shudder against his warm fur, fem-cum splashing over his face and into his mouth. The both of you cling to each other as you wait for your orgasms to relent, the mess from your union pooling on the ground beneath you after spilling over the fox's fur.";
		else: [Rimming]
			if Player is male:
				say "     The Kitsune's tongue flicks over your twitching shaft before settling on the flesh of your derriere, writhing beside your anus but not slipping inside. You take a break from licking his length to glare between your bodies at him, the large fox winking cheekily as he circles the tip of his tongue around the clenching hole. Deciding that he has teased you enough and needs to be taught the error of his ways, you push your body back against his muzzle, his cool nose being pressed against the base of your spine while his tongue finally squeezes inside of you. Considering how much he has mocked you and been generally difficult, you decide to focus exclusively on your own pleasure for now, lightly gyrating against the Kitsune's muzzle and leaving his saliva-coated cock to cool in the air. Your partner's dexterous tongue caresses the inner walls of your ass, making you shiver and spasm as sensations stiffen your shaft even further.";
				say "     The Kitsune lets out a soft whine and humps pitifully at the air, begging you to return to pleasuring him, his apology for teasing you remaining unspoken but unquestionably clear. Relenting, and eager to taste his cock properly, you spear your face on his turgid flesh, eagerly slavering it and tasting his unique flavor. The act of leaning forward again causes the vulpine's whiskers to tickle your anus, making it clench in response and squeezing his tongue deep within your passage. However, it does not stop moving, fluttering within your bowels. A moment later you are able to relax your instinctual reaction, allowing the both of you to continue pleasuring each other. You must look a sight, with a direwolf-sized fox lying on his back thrusting his tongue into your rear while you return the favor by repeatedly bobbing your head on his shaft, both emitting sounds of satisfaction and eagerness.";
				WaitLineBreak;
				say "     The Kitsune's pre coats his length and your tongue as it slides between your lips and into your throat. Fresh spurts help to ease its passage and to goad you into trying to earn more, the flavor of it different to what you have experienced before. You try to time your bobbing with the strokes of the fox's tongue as he vigorously rims you, gulping noises squeezing from your mouth as he thrusts as deep as he can, his climax approaching. You doubt that your own will be far behind, the cocky vulpine seemingly well practiced at anal play, simultaneously stimulating your prostate, the rim, and deeper within your bowels with his talented tongue. You realize that you have been neglecting his knot and begin to rub it with your hands even as you press your head further down his length so that your lips can kiss at it too. You hear an appreciative murmur behind you and redouble your efforts, determined to prove yourself a fair master over the experienced fox.";
				say "     The sensations becoming too much, the Kitsune sits up, his tongue still rhythmically darting into your anus as you begin to get folded in half. As he places his forepaws on the back of your head, you allow him to hammer his cock down your throat, knot popping in and out from between your lips as you moan ecstatically, gaining pleasure from what you have driven him to. His howl of climax is muffled by your backside, sending his tongue flailing without control inside you and bringing you to orgasm as well. Pulling your head back to avoid him knotting your mouth, thick jets of cum spurt directly down your throat, the back wash allowing you a better taste as it spills over your tongue and past your lips. You shudder against his warm fur, semen spurting onto his chest before making a sticky trail as it oozes towards the ground while the walls of your anus clench around the slick organ that is fluttering within you. The both of you cling to each other as you wait for your orgasms to relent, the mess from your union pooling on the ground beside you after spilling over the fox's fur.";
			else:
				say "     The Kitsune's tongue flicks over your moist slit before settling on the flesh of your derriere, writhing beside your anus but not slipping inside. You take a break from licking his length to glare between your bodies at him, the large fox winking cheekily as he circles the tip of his tongue around the clenching hole. Deciding that he has teased you enough and needs to be taught the error of his ways, you push your body back against his muzzle, his cool nose being pressed against the base of your spine while his tongue finally squeezes inside of you. Considering how much he has mocked you and been generally difficult, you decide to focus exclusively on your own pleasure for now, lightly gyrating against the Kitsune's muzzle and leaving his saliva-coated cock to cool in the air. Your partner's dexterous tongue caresses the inner walls of your ass, making you shiver and spasm as sensations moisten your pussy even further.";
				say "     The Kitsune lets out a soft whine and humps pitifully at the air, begging you to return to pleasuring him, his apology for teasing you remaining unspoken but unquestionably clear. Relenting, and eager to taste his cock properly, you spear your face on his turgid flesh, eagerly slavering it and tasting his unique flavor. The act of leaning forward again causes the vulpine's whiskers to tickle your anus, making it clench in response and squeezing his tongue deep within your passage. However, it does not stop moving, fluttering within your bowels. A moment later you are able to relax your instinctual reaction, allowing the both of you to continue pleasuring each other. You must look a sight, with a direwolf-sized fox lying on his back thrusting his tongue into your rear while you return the favor by repeatedly bobbing your head on his shaft, both emitting sounds of satisfaction and eagerness.";
				WaitLineBreak;
				say "     The Kitsune's pre coats his length and your tongue as it slides between your lips and into your throat. Fresh spurts help to ease its passage and to goad you into trying to earn more, the flavor of it different to what you have experienced before. You try to time your bobbing with the strokes of the fox's tongue as he vigorously rims you, gulping noises squeezing from your mouth as he thrusts as deep as he can, his climax approaching. You doubt that your own will be far behind, the cocky vulpine seemingly well practiced at anal play, simultaneously stimulating the back of your clitoris, the rim, and deeper within your bowels with his talented tongue. You realize that you have been neglecting his knot and begin to rub it with your hands even as you press your head further down his length so that your lips can kiss at it too. You hear an appreciative murmur behind you and redouble your efforts, determined to prove yourself a fair master over the experienced fox.";
				say "     The sensations becoming too much, the Kitsune sits up, his tongue still rhythmically darting into your anus as you begin to get folded in half. As he places his forepaws on the back of your head, you allow him to hammer his cock down your throat, knot popping in and out from between your lips as you moan ecstatically, gaining pleasure from what you have driven him to. His howl of climax is muffled by your backside, sending his tongue flailing without control inside you and bringing you to orgasm as well. Pulling your head back to avoid him knotting your mouth, thick jets of cum spurt directly down your throat, the back wash allowing you a better taste as it spills over your tongue and past your lips. You shudder against his warm fur, your pussy and ass squeezing and spasming, the walls of your anus clenching against the slick organ that is fluttering within you. The both of you cling to each other as you wait for your orgasms to relent, the mess from your union pooling on the ground beside you after spilling over the fox's fur.";
	WaitLineBreak;
	say "     As your dual climaxes eventually come to an end, the Kitsune slumps back against the floor, his energy momentarily depleted. You yourself feel exhausted, lacking the otherworldly stamina of the silver-furred vulpine, and collapse atop him, his shaft slipping from your mouth, softened but still dribbling semen. Light emanates from behind you and you can feel the Kitsune shifting back to a more humanoid form, your coupling over. 'I'm not sure whether I'll let you have control like that again. It's really taken a lot out of me. I'm going to take at least thirty seconds to recover from this,' he teases you affectionately as he gives your ear a lick. 'But I suppose that you have places to be so I won't keep you. Let me re-energize you. I wouldn't want you to become some monster's sex toy just because I tired you out. They should at least have to fight for it.' You begin to feel your weariness fade away and clamber to your feet again. Ruffling the Kitsune's fur, you express your gratitude before preparing to return to the outside world.";
	PlayerEat 15;
	PlayerDrink 15;
	now Kitsunearoused is 2;
	kitsuneinfect;
	now lastfuck of Kitsune is turns;

to say Kitsune_DomRidingAnal:
	say "     [if Player is dominant]With a cocksure grin, [else if Player is submissive]Slightly unsure, [else]Licking your lips in anticipation, [end if]you push the Kitsune onto his back, a faint look of surprise on his face. Straddling his groin, you press your stirring shaft against his erect cock, the vulpine apparently quicker to reach full-mast, [if Cock Length of Player > 21]though your own is about double the size of his. [else if Cock Length of Player > 15]though your own looks distinctly large beside his. [else if Cock Length of Player > 11]both of you of similar length, yours maybe slightly longer. [else if Cock Length of Player > 9]both of you of similar length, the otherworldly being's maybe slightly longer. [else if Cock Length of Player > 5]your shaft reaching about halfway along his length. [else]his length an impressive eleven inches. [end if]Pressing a hand against his chest, you begin to firmly grind against him, slickening flesh rubbing against heated loins sending shivers through your body. You feel the Kitsune start to caress your waist, his paws occasionally dipping down to brush over your buttocks, an action which you respond to by pressing down on his torso to remind him that you are in charge, though his touch isn't unappreciated. After all, he is trying to please you.";
	say "     Remaining in the fox's lap and without halting your steady grinding, you gesture for him to sit up to face you, allowing you to look into each other's eyes. He dips his muzzle to meet your mouth, the kiss starting sweet but rapidly becoming more sensuous, tongues sliding against one another while your hands roam up and down each other's backs, exploring increasingly intimate areas. As your fingers clasp around the Kitsune's shaft, the two of you break your kiss and simultaneously look down at his groin. 'If you would be willing, a little lubrication might be a good idea before you ride me, perhaps suck me for a bit, then I'll lube up your ass. Please?' the vulpine begs, his eyes round as you meet them. Deciding that you'll enjoy it anyway and feeling that refusing him would be heartless, [if Player is submissive]especially when he is letting you be in charge,[end if]you give him a nod before crawling backwards so that his twitching shaft is in front of your nose.";
	WaitLineBreak;
	say "     You give a deep inhale of his cock, the distinctly male smell layered over the Kitsune's otherworldly scent filling your lungs and encouraging you to give it a taste. Leaning forward to take his member in your mouth, you meet the fox's eager gaze, his eyes slowly closing as his tip enters the warm wetness of your mouth, a sigh issuing from his muzzle. With a smirk, you take his shaft deeper into your mouth, making sure to coat his length with copious amounts of saliva, mindful of what your goal is. By the time your lips meet with his knot, several inches of his cock have squeezed down your throat, throbbing against the walls of your squeezing esophagus, a prelude of what is to come. For several minutes, the only sound in the room are slurps and sighs, the two of you focused entirely on giving or receiving oral satisfaction, until your partner warns, 'If I remain in your mouth much longer, I shall end up shooting, and I don't think that that is your goal,' as he slowly withdraws his shaft, the entire length wet and slippery. You clamber to your feet, and the Kitsune slinking forth on all fours, a lustful look plastered on his face as he circles around to your rear.";
	say "     The tickle of his tongue across the back of your thigh makes you shiver in anticipation, the dexterous organ getting closer to its destination with each lick. Finally, it passes over your anus, the tip slipping inside for part of a second, making you twitch. The fox intensifies his attentions on your ass, his tongue alternating between penetrating you and merely dancing across your flesh. His hands lightly grasp the backs of your legs, and you can feel his paws tighten in time with the motions of his tongue, the feeling strangely relaxing and in contrast to the raw sexual sensations of being rimmed. A particularly forceful penetration causes you to gasp as his tongue thrusts past your prostate and lubricates deep inside of you. When you feel his tongue withdraw from your rear, you look over your shoulder and down at your partner who sits back on his haunches, giving you a wide smile. 'I'm ready if you are,' he cheerfully exclaims, sliding back against a wall to give himself some support for you to ride him. Judging from how slick your back passage feels, you have to agree with him and approach his prone form, his erect shaft glistening.";
	WaitLineBreak;
	say "     Facing the Kitsune and supporting yourself on his shoulders, you carefully crouch above his rampant erection, its crimson tip steadily approaching your waiting anus as you lower yourself. Feeling the sticky pre against the curve of your backside, you realign yourself before sinking down on his shaft, your sphincter being spread open as his penis pushes inside of you with precision. The both of you let out heated grunts in response to the stimulation, waves of pleasure surging through your body from the point of contact, urging you to surrender to your urges and impale yourself, a desire that you give in to. With a whorish moan, you ram yourself down with enough force that even his knot sinks into you, the vulpine matching your exclamation with equal enthusiasm. Like a rutting animal, you almost hurl yourself up and down his cock, slapping sounds echoing from the walls to accompany your groans and gasps, the Kitsune equally vocal in his expression of ecstasy.";
	say "     Pounding your rear against your partner, your shaft slaps against the fox's tummy, dribbling your pre into his fur and ensuring that your scent will remain with him even after you leave. As your coupling progresses, the Kitsune begins to thrust to meet you, his knot pummelling at your entrance but failing to obtain access after your initial impalement. This failure goads him into putting more force behind his thrusts as he attempts to ram it past your sphincter. However, you still aren't ready, tightening your muscles to refuse him entry and inadvertently increasing the pressure on your prostate, causing your penis to give a large twitch and shoot pre over your chest. To your surprise, the Kitsune leans forth and licks it off, such a submissive act igniting a deeper passion within you and convincing you to embrace your more carnal instincts.";
	WaitLineBreak;
	say "     Deserting any facade of civility, you both focus entirely on demonstrating your more primal sides, pounding against one another and letting out moans, grunts, and encouragement without any concern for being heard, perhaps even hoping that someone will hear and witness the Kitsune at your mercy. Spittle drips from the corner of the fox's mouth, his decorum shattered as he hammers his cock into you, muttering, 'Take my knot, master. Take all of me.' Desperate to feel his knot inside of you before he climaxes, you synchronize your efforts, and with a mighty effort, squeeze the bulb of flesh into the wet warmth of your anus. Achieving full penetration doesn't diminish the speed of the Kitsune's thrusts, his knot pulling against your sphincter but remaining sealed inside to throb rapidly against the walls of your rectum. Pain and pleasure mix to send euphoric jolts through your body as you realize that you are about to orgasm.";
	say "     With a heated yell, you ejaculate between your bodies, cum splattering across your chest, the bottom of the Kitsune's chin, and raining down over the both of you. The strong scent of semen permeates the room and fills your nostrils, mixing with the vulpine's unique aroma, and the sweat of your exertion. A moment later, you feel the liquid warmth of the Kitsune's own climax fill your bowels, his cum trapped inside of you by his swollen knot, the bulge of which you are sure you can see distending your tummy. Rubbing your gut with one hand, you wonder how large his shaft currently is and whether he has any limit at all. Joined together for now, the Kitsune contents himself by resting his head on your shoulder and lightly licking your neck as he waits for his knot to shrink again. Apparently he, like every other canine to your knowledge, can't deflate his knot any faster than normal, and you wait for at least half an hour before you are able to separate from him, a veritable sea of cum spilling from your gaping anus and puddling on the floor. 'Don't worry. I'll clean it up. I'm sure you have places to be in order to save the city,' the vulpine reassures you. Accepting his offer, you hastily tidy up before considering what to do next.[mimpregchance]";
	now Kitsunearoused is 2;
	kitsuneinfect;
	now lastfuck of Kitsune is turns;

to say Kitsune_DomDoggystyleAnal:
	say "     After taking your hand into his own, Kitsune leads you back to his four-poster bed with a sly smile. The silver vulpine seems to exude an air of submission about himself as he slowly strips himself of his loincloth and then proceeds to crawl onto his mattress on all fours. Quickly all nine of his tails spread out for into a wide fan to reveal the other's pink puckered tailhole and from what you can see, the vulpine has already oiled himself in preparedness for his encounter with you. Not seeing any reason to delay in giving the willing fox-man what he obviously desires, you hurriedly strip your clothes off and then casually kick them to the side before pouncing on your lover. Crawling over onto Kitsune's backside, you waste little time in lining your rigid cock up with the other's tailstar and then once you have a clear aim you slowly press your hips forward so as to stretch the vulpine open with your hard [cockname of Player] dick. A quiet hiss makes you look up at your lover, but a slow shake of the fox-man's head lets you know that the other is okay, or at least making a good pretense of the situation.";
	say "     Not wanting to bring the other man any undue pain you still your hips for a moment and allow Kitsune the time needed to adjust. It takes almost a minute before the vulpine is ready, but once he is you can almost not believe how tight and warm Kitsune is as he thrusts himself back onto you. Taking you all the way to the hilt the fox-man is quick to show you how submissive he is not as he pounds himself back and forth over you with growing abandon. Quickly seeing that the other is trying to control the situation between you two you grab Kitsune around the waist to hold him steady before showing him exactly who is in charge here. A quiet keen from the other has the silver vulpine submitting himself to you and then going still slightly as he allows you to fully dominate his body. Grunting and groaning with restless desire you slide your eager cock back and forth inside of Kitsune's vice tight fuckhole, loving the feel of his warmth and tightness, while at the same time leaning over him to brush your front against his back. Panting heavily into the vulpine's ears you take one of his pointed appendages in your mouth and then nibble on it playfully before reaching a hand down to stroke the fox-man's twitching cock.";
	WaitLineBreak;
	say "     A yelp of praise goes through Kitsune as he had not been expecting that; however, the vulpine takes it with growing adoration for you as his insides clamp down almost painfully tight onto your length. Moaning and gasping as the heat and feel of your lover overcomes your senses, you can feel that you'll explode inside of him soon as you hammer inside of Kitsune's ass with increasing force. The bed beneath the two of you beats against the wall like a war drum before battle as you continue to thrust both fast and furious inside of your lover. Kitsune lets out wailing howl when he feels you pull on one of his tails, your twitching hands having felt the plush appendage and grabbed onto it before you could stop yourself. The yowl seems to be more of excitement than of pain and in your sex-addled mind you can't help but tug just a little harder on the fluffy attachment to coax more cries from your partner.";
	say "     Muzzle panting, tails waving, and body growing heady with the pleasant scent of both sweat and sex mingling into his fur, you soon find Kitsune becoming an incarnation of ecstasy as he gives himself over to the passion of the moment. You smile predatorily as you release the other's now soggy ear in favor of biting down onto the fox-man's nape in a dominating hold. That seems to do it for Kitsune because just as soon as your teeth clamp down onto the vulpine's tender neck the other yelps, freezes, and then lifts his head to let out a howl so loud that you're sure someone outside must be hearing it. Though your concern for the outside world is almost moot at this point as you feel the vulpine splatter the hand you have stroking his cock with his cum. At the same time the fox-man is releasing himself into your palm the muscles of Kitsune's rear lock up so tight onto you that your orgasm can't help but discharge itself inside of the depths of the other's heated rump. Yelping in time with Kitsune's yowl you both find your climaxes coming together with the same intense force just as shudders rack up and down the sides of both of your spines.";
	WaitLineBreak;
	say "     By the time the two of you come down from your respective sexual highs, both of you can't help but pant and shiver as the pure ecstasy of the moment caresses itself up and down your bodies. Kitsune whines as you pull your hand out from under him - his cock is still shooting cum after all - and upon looking at the mess the other has made you find yourself smiling in perverted delight right as you lift your wet hand up to lick Kitsune's seed up from off of your fingers.";
	now Kitsunearoused is 2;
	kitsuneinfect;
	now lastfuck of Kitsune is turns;

to say Kitsune_DomRidingVag:
	say "     Growling in a somewhat feral-like manner, you strip out of your clothing and then pounce on top the silver vulpine. Kitsune meeps slightly as his back hits the mattress of his four-poster bed; thankfully he was so near to it at the time, but the fox-man soon can't think about his luck as you restlessly tear his loincloth off from around his waist and then proceed to pump the other's hard cock from out of his silver furred sheath. A hiss goes through Kitsune as your fingers quickly bring him to full arousal within seconds. Azure eyes narrowing slightly as he slides his eyelids to half mast, the pleasure of being touched in such a manner finds itself getting to the vulpine on a whole other level, though maybe because it's you who's pumping him and not some random stranger. Grunting and groaning, the fox-man has little time to appreciate your hand maneuvers because just as soon as his tapered red rocket is standing up to its full eleven inch length, you are mounting him with your wet puss.";
	say "     Grunting as your cunt flutters opens to accept the vulpine's hard canine-like dick into your body, you don't spend long in waiting to grow accustomed to the other's length as you pull yourself up to slide Kitsune out of you. The vulpine croons as your juice box pulls away from him even as his legs, arms and tails are all madly twitching from the exquisite feel of your depths drawing away from him. However his moans quickly turn to gasps as you thrust yourself back down onto him. Feeling the fox-man's cock hitting up on well past your clitoris on up into your cervix, you reach out to grab hold of the covers of the bed as pure electric pleasure dances up your spine. Taking a moment to adjust to such powerfully pleasurable feelings, you growl in a true canine manner before lifting yourself up off of Kitsune again, only to slam down onto the other for a second time. An unsteady rhythm starts before long as you repeat these motions again and again and again as you hurriedly begin to fuck your lover.";
	WaitLineBreak;
	say "     For his part Kitsune seems to be taking things rather well. With his cock being massaged by your tender insides the fox-man finds himself falling into the arms of absolute bliss as you continue to dance on top of his lap. Though not exactly what he would have expected, the vulpine is quick to get into the groove of things as he counterbalances your thrusts with his own upward thrusts of his hips. A yip pours out from both of you as the vulpine pushes deeper into your cervix - your tender insides are almost unprepared for the girth that is the fullness of the vulpine's cock as his knot soon begins to inflate just outside of you. Licking your lips at the thought of being filled so properly by the other, you lean your head down to breathe deeply into Kitsune's face, startling the other somewhat as he blinks confused blue eyes up at you. This confusion is soon cast away in favor of you licking the underside of his neck in a submissive gesture that you can't figure out right at the moment.";
	say "     It doesn't matter though, because soon the fox-man has you by the waist and is growling at you passionately while pricking his claws into your sides. You're almost not ready for the vulpine to slam you down onto his half-hard bulb of flesh when he does so, but thankfully you're a seasoned pro at handling this sort of thing. And yet, your fluttering netherlips seem to be quite shocked by the press of the round bulge against them as they are forced to spread to newer dimensions. However, this soon turns to a twisted kind of pleasure for you as Kitsune continues to stuff you full while at the same time pumping you steadily up and down his leaking cock. Grunts spill out from both of your lips just the same as precum and honey ooze down the both of your legs. Rocking the bed with enough force to make the headboard slam into the back wall, you don't pay any attention to anything else going on around you as you spread your legs wide and then hammer yourself fully onto your silver vulpine lover's knot. A yelp comes from Kitsune once you are sheathed completely onto his hard bulb of flesh and without warning the fox-man howls out loud just in time for you to feel his cock flex and then surge with the onslaught of his orgasm.";
	WaitLineBreak;
	say "     The heat and pure feel of such hot cum filling up the depths of your cunt makes you howl in time with Kitsune as you climax sneaks up on you without warning. Jerking as your back arches in between Kitsune's hold, you wrap your body tight around your lover as he begins to shudder as your wet snatch clamps vice tight around him. A flood of your own juice spreads over and around the vulpine's rigid length, and before long the knot inside of you can no longer hold anything back as you drench both the fox-man and your own thighs with the mixture of your love liquor. A quiet chuckle goes through Kitsune and you move your face over to look down into the other man's eyes to see what the joke is on. What you find is the devious smile of the other caressing Kitsune's face and a silent coil of fear, right before the silver vulpine leans up to place a chaste kiss onto your lips. Opening your mouth in shock, you inadvertently allow the other man to slip his tongue into your maw. Swirling his organ around inside and across your teeth before pulling back to snicker at you, it would seem that all the kitsune wanted was to see your surprise in order to spice up the waning climaxes you both are sharing. Your ire at this lasts all the way until the fox-man pulls his half deflated knot out of you. The feeling of no longer having your vulpine lover inside of you makes you somewhat doleful, but that sentiment only lasts until Kitsune wraps his arms around you in order to lay you down on top of him. You both end up snuggling up together and then drifting off to sleep before long.";
	now Kitsunearoused is 2;
	kitsuneinfect;
	now lastfuck of Kitsune is turns;

to kitsuneinfect:
	[puts Kitsune as lead monster]
	setmonster "Kitsune";
[	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]] [No monster is selected here]
	infect "Kitsune";
[	now non-infectious entry is true;]


Section 5 - Creature Insertion

to say Kitsune loss:
	say "These are filler messages and should not be seen, as there's no fight with Kitsune.";

to say Kitsune attack:
	say "These are filler messages and should not be seen, as there's no fight with Kitsune.";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Kitsune";
	now enemy title entry is "Kitsune";
	now enemy Name entry is "Honoka";
	now enemy type entry is 1; [non-unique enemy]
	now attack entry is "[one of]The tall fox man laughs while shooing you away playfully. A blue ball of flame appears in his hand when you don't back down.[at random]";
	now defeated entry is "[Kitsune loss]";
	now victory entry is "[Kitsune attack]";
	now desc entry is "A silver furred vulpine stands on two digitigrade legs while looking at you calculatingly. Piercing azure eyes glare at you somewhat hotly as if the fox-man is trying to undress you with his eyes. Just exactly who or what is this creature that stands with nine soft and flowing tails at his backside? The loincloth tied over his waist tells you nothing, save that the other is well endowed."; [ Description of the creature when you encounter it.]
	now face entry is "a silver foxy muzzles now makes up the mask that is your face. With all of the normal vulpine highlights that make you appear as a fox, the only thing that differentiates you from the other canids around here is the fact that you're eyes are piercing blue. Deep and fathomless, it appears as though you have more wisdom than what would be considered normal for a mortal"; [You have a (your text) face."]
	now body entry is "now that of a creature who is one of both vulpine and human in genetic makeup. A lithe frame hides the dense muscles you have underneath your thick pelt of soft fur. On down your twin digitigrade legs hold you steadily as you balance yourself on your rough paw pads. Grace and poise seem to be the words that define you as the power inside of your veins almost sings with mystical energy"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]silver fur[or]heavy pelted[or]kitsune coat[or]supremely fluffy fox fur[at random] over your"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "A single fox tail sways behind you, swaying almost as if lonesome in want of others to be alongside of it. Thick and luxurious in texture, your tail does possess a sort of superior quality about itself that others would find themselves in awe of were they to look at you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]vulpine[or]canid[or]tapered[or]sheathed[or]thickly knotted[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your eyes blink as you notice that your face has pushed out to form a narrow fox muzzle colored with moonlight silver fur. Cocking your head to the side you notice that you can hear the wind blowing around you and gape when you realize that your ears have pushed up on top of your head. Long and furry, the twitching folds flip up and down as you move them out of instinct, not to mention curiosity. Looking between your face you notice that you have a black dotted nose, a few whiskers on each side of your snout and finally that your tongue is now long and thick as you pop the organ out from your muzzle"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you notice that the form you now support is one that is covered from neck down to toe in silver fur. Slightly confused as to what has happened to you, you find that your body now has taken on the form of a silver kitsune, the same as Kitsune himself. Tall and imposingly powerful, you feel as the your heart is beating somewhat slower as your senses seem to come alive in a newfound way as you can literally [italic type]feel[roman type] things that you never had before"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "scratch at yourself lightly while trying very, very hard not to. What you come to find by looking down at yourself is that you now have a silver pelt of fur gracing your body. The itching was from the fur pushing out from beneath your skin"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you wiggle your rump around as though trying to get something from off of your backside. Grunting and finally reaching back to take a scratch you find that you now have a single silver vulpine tail wagging behind you somewhat happily as you stare at it intensely"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "you shuffle your legs together as you feel something pushing and changing down between your legs. Not wanting to look, but knowing that you have to, you let your vision stray down and then gasp at the sight of a silver sheath and tapered shaft both starting up at you. Faintly you wonder if a knot has come included with this package but upon pulling your sheath back you realize that - yep - you have a small bulb at the end of your vulpine dick"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 18;
	now cha entry is 20;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 100;
	now lev entry is 12; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere";
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 10;
	now Cunt Tightness entry is 5;
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender" Use [one of] to vary ]
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is true;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



when play ends:
	if bodyname of Player is "Kitsune":
		if humanity of Player < 10:
			say "     Without knowing it your mind soon begins to push all of your human thoughts away to replace them with that of a kitsune's. This turns out to be both a blessing and a curse as new thoughts and memories, many of them too indescribable to the human mind, soon start to flood into your brain without you being able to control them. A keening cry soon makes you drop down onto your knees as your body begins to illuminate with a bluish light, the likes of which start to actually make the shadows around you crawl around like snakes. Power. Pure and unadulterated power is now coursing throughout your body, but without the control needed to handle it your form is soon turning in on itself to try and stop the sudden influx of energy. A cool hand ghosts over your head and instantly everything just stops. Blinking and then looking up with confused azure eyes you find the one that had given you your form staring down at you somewhat bemused.";
			say "     'I had a feeling that this might happen, though honestly I was hoping that it wouldn't,' Kitsune says, and you can only tilt your head to the side as you try and figure out what the other means. 'Don't try and think right now. You'll only make yourself sick, little kit.' The soothing voice of the other kitsune speaks into your head and instantly you want to do nothing more than cuddle up with the other in order to bury yourself underneath the older male's fluffy silver tails. 'Let's leave this place and return home, there is much I have to begin teaching you about how to be a proper kitsune.' With a flick of his graceful silver hand Kitsune summons up a large blue ball of fire and then brings it to his muzzle to blow against the flame. The mystic fire turns into a rolling cloud that soon over takes both you and he and the next thing that you know you are being transported away from the mundane world of humans. No one you know would ever see you again because in the other world where Kitsune resides you would spend the next nine hundred plus years studying how to be a proper kitsune. Though four hundred or so of those years would be spent as the other's bed mate.";
		else:
			say "     By the time the military comes in to clean up the city, you and Kitsune have gotten close enough to each other than you decide not to part. The silver fox-man is amused with the human's attempts to study him, but only because he spends nine-tenths of the time confusing their machines on the who/how/what of what he is. In the end they scientist who had examined the two of you end up releasing you after Kitsune's strain finally makes them surrender to their own ignorance. Of course this matters little to you because once you and Kitsune have stepped out into the free world you both spend the next hundred or so years getting to know each other even better than before, while at the same time you receive lessons on how to be a proper kitsune from the other male. As the years roll by more and more tails slip out from your backside, beautifully fluffy as well as luxuriously soft, the flowing appendages become the key sight for others to know you by as the title Many-Tales soon follows you around like a restless spirit. One reason why others call you this is because of your numerous tails, which you almost never seem to conceal with your powers, and two because of the stories you tell others when asked by them to retell some of your past during your more idle hours. Kitsune spends a lot of time teasing you about this when you two are alone together, but you return his jibes by calling him Old Man whenever he does. This results in a lot of fights between you two, though most of them good natured one, but it also ends with a lot of passionate make up sex with your long time friend.";


Kitsune Hideaway ends here.
