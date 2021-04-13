Version 2 of Diego by Wahn begins here.
[ Original File by Sarokcat ]
[ Version 1 - Breakup of Zoo People file ]
[ Version 2.0 - Complete rewrite by Wahn - Talk Menu, Sex Menu, Gay Options, Expanded Endings]
[ Version 2.1 - Collar Quest expansion]

[ XP of Diego - Collar Quest                                                ]
[   0: Not started yet                                                      ]
[   1: player has the mission to get the collar                             ]
[   2: player went to the villa, didn't go through with it                  ]
[   3: player went to the villa at night, grabbed the collar stealthily     ]
[   4: player went to the villa in the day, grabbed the collar after fight  ]
[   5: player tried to get the collar sneakily, then ran off in the fight   ]
[   6: player had the collar put onto them by Hunter                        ]
[   7: player with the collar on talked to Diego                            ]
[  50: player delivered the collar                                          ]
[  98: player lost/fled from Hunter in the fight                            ]
[  99: player didn't show any interest so far                               ]
[ 100: blocked/failed                                                       ]

[ Lust of Diego - Counter for collar forced scenes                          ]

"Adds a coyote named Diego to Flexible Survival."

Section 1 - Diego

CoyoteTricks is a number that varies.
DiegoChanged is a number that varies.
DiegoBitched is a number that varies.
DiegoFucked is a number that varies.
DiegoButtSlut is a number that varies.
LastDiegoTricked is a number that varies. [@Tag:NotSaved] LastDiegoTricked is usually 250.
Diego_PlayerSceneStartingGender is a text that varies. [@Tag:NotSaved]

Table of GameCharacterIDs (continued)
object	name
Diego	"Diego"

Diego is a man.
ScaleValue of Diego is 3. [human sized]
Body Weight of Diego is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Diego is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Diego is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Diego is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Diego is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Diego is 5. [length in inches]
Breast Size of Diego is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Diego is 2. [count of nipples]
Asshole Depth of Diego is 8. [inches deep for anal fucking]
Asshole Tightness of Diego is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Diego is 1. [number of cocks]
Cock Girth of Diego is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Diego is 7. [length in inches]
Ball Count of Diego is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Diego is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Diego is 0. [number of cunts]
Cunt Depth of Diego is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Diego is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Diego is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Diego is false.
PlayerRomanced of Diego is false.
PlayerFriended of Diego is false.
PlayerControlled of Diego is false.
PlayerFucked of Diego is false.
OralVirgin of Diego is true.
Virgin of Diego is true.
AnalVirgin of Diego is true.
PenileVirgin of Diego is false.
SexuallyExperienced of Diego is true.
TwistedCapacity of Diego is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Diego is false. [steriles can't knock people up]
MainInfection of Diego is "Coyote".
Description of Diego is "[DiegoDesc]".
Conversation of Diego is { "Fooled you!" }.
Diego is in Park Entrance.
The icon of Diego is Figure of Diego_icon.

when play begins:
	SetMalePronouns for Diego;

the linkaction of Diego is "[diegolinkaction]".

a postimport rule: [bugfixing rules for players that import savegames]
	if DiegoChanged is 2:
		now the icon of Diego is Figure of DiegoFem_icon;
		SetFemalePronouns for Diego;
	else if DiegoChanged is 1:
		now the icon of Diego is Figure of pixel_icon;
		SetFemalePronouns for Diego;
	else:
		SetMalePronouns for Diego;

to say diegolinkaction:
	if PlayerMet of Diego is false:
		say "Possible Actions: [link]talk[as]talk Diego[end link], [link]smell[as]smell Diego[end link], [link]fuck[as]fuck Diego[end link][line break]";
	else:
		say "Possible Actions: [link]talk[as]talk Diego[end link], [link]smell[as]smell Diego[end link], [link]fuck[as]fuck Diego[end link], [link]trick[as]trick Diego[end link][line break]";

the scent of Diego is "Diego smells like a [if DiegoChanged is 0]male[else if DiegoChanged is 1]herm[else]female[end if] coyote.".

To say DiegoDesc:
	if debugactive is 1:
		say "DEBUG -> CoyoteTricks: [CoyoteTricks], LastDiegoTricked: [LastDiegoTricked], DiegoChanged: [DiegoChanged], DiegoBitched: [DiegoBitched], DiegoFucked: [DiegoFucked], DiegoButtSlut: [DiegoButtSlut] <- DEBUG[line break]";
		say "DEBUG -> (Traits of Diego) [traits of Diego][line break]";
	if DiegoChanged is 2:
		say "     The former coyote man is now a pretty tan furred coyote bitch instead, and is eyeing you eagerly as [SubjectPro of Diego] leans up against the wall dividing the park from the rest of the city. You can see one of her paws slowly straying down to her furred pussy as you approach, a smile playing across her muzzle as [SubjectPro of Diego] rubs herself teasingly.";
	if DiegoChanged is 1:
		say "     The tan furred coyote herm is still here leaning up against the wall dividing the park from the rest of the city, and seems to be amused as you approach, one of her hands straying down to fondle both sets of her equipment as a smile tugs at her coyote muzzle.";
	if DiegoChanged is 0:
		say "     A tan-furred anthro coyote is leaning up against the wall dividing the park from the rest of the city, striking a relaxed, casual pose. It is quite obvious that he's a man - the guy doesn't wear any clothes on [PosAdj of Diego] wiry body, allowing open view of a pair of furry balls dangling between [PosAdj of Diego] legs, as well as a sheath just above. [SubjectProCap of Diego] eyes you curiously as you approach, one of [PosAdj of Diego] ears flicking in amusement as a small smile plays across [PosAdj of Diego] muzzle.";
		if DiegoButtSlut > 0:
			say "     You notice the anthro canine's tail twitching upwards a little, as if [SubjectPro of Diego] reflexively reacts to your presence by wanting to present [PosAdj of Diego] bare butt.";

Section 2 - Conversation

Instead of conversing the Diego:
	if PlayerMet of Diego is false:
		project the figure of Diego_face_icon;
		say "     'Hey there,' the coyote-like man says with a grin. 'The name is Diego, my friend, and I have to say this is an unexpected surprise. Haven't seen too many people in these parts that haven't completely given into the pleasure,' Diego says as [SubjectPro of Diego] readjusts [PosAdj of Diego] position against the wall to get a better look at you. 'Can't say how long that will last, of course. You look like you like to enjoy yourself as much as anyone else around here. And well, I'd be lying if I said this wasn't the most fun I've had in my life,' [SubjectPro of Diego] says with a grin playing across [PosAdj of Diego] muzzle. 'Never been so glad to have a coyote nip me in my backyard. Course, everything seems much more amusing to me now also. Must be that whole trickster thing, eh?' The coyote man chuckles as [SubjectPro of Diego] leans back against the wall happily.";
		say "     'Guess we will see how long you last here. Course, if ya need any advice about the creatures in the park feel, free to talk to me as much as you want. Of course I can't guarantee it will be GOOD advice - that whole trickster thing and all, ya ken?' [SubjectPro of Diego] adds with a sly wink. 'Course, ya could always just wait here until the military finally gets itself together and comes to visit. Course, if I felt like it, I could always pull out a few more coyote tricks on them. That would be sure to slow them down a bit, if ya know what I mean. I'd only do something like that as a favor to a fellow trickster,' Diego snickers at the thought of the poor, tricked military fools.";
		now PlayerMet of Diego is true;
	else:
		say "[DiegoTalkMenu]";

to say DiegoTalkMenu:
	LineBreak;
	say "What do you want to talk with Diego about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Share some ideas about tricks to play on people with him";
	now sortorder entry is 2;
	now description entry is "Develop tricks with Diego? [SubjectProCap of Diego] might very well do them if [SubjectPro of Diego] likes your ideas";
	[]
	if carried of water bottle > 0 and CoyoteTricks > 4:
		choose a blank row in table of fucking options;
		now title entry is "Offer Diego a bottle of water to drink";
		now sortorder entry is 3;
		now description entry is "Hand a bottle of clean water to Diego";
	[]
	if carried of dog milk > 0 and CoyoteTricks > 4 and DiegoButtSlut is 0 and DiegoChanged < 2 and diego's heirloom collar is not equipped: [Diego hasn't been opened for anal play and isn't fully feminine]
		choose a blank row in table of fucking options;
		now title entry is "Trick Diego into drinking dog milk";
		now sortorder entry is 4;
		now description entry is "Arrange for Diego to chug your bottle of transforming canine milk";
	[]
	if carried of orc cum > 0 and CoyoteTricks > 4 and DiegoChanged is 0 and DiegoButtSlut < 3 and diego's heirloom collar is not equipped: [Diego hasn't been transformed towards being female and isn't fully mpreg-able]
		choose a blank row in table of fucking options;
		now title entry is "Trick Diego into drinking orc cum";
		now sortorder entry is 5;
		now description entry is "Arrange for Diego to chug your bottle of orc cum";
	[]
	if carried of food > 0 and CoyoteTricks > 4:
		choose a blank row in table of fucking options;
		now title entry is "Offer Diego some food to eat";
		now sortorder entry is 6;
		now description entry is "Hand a packet of food to Diego";
	[]
	if XP of Diego is 99:
		choose a blank row in table of fucking options;
		now title entry is "Taking part in Diego's secret plans after all";
		now sortorder entry is 7;
		now description entry is "Tell the coyote you want to join [ObjectPro of Diego] in a closer partnership";
	[]
	if XP of Diego is 1 or XP of Diego is 2: [got the quest, didn't finish getting the collar yet]
		choose a blank row in table of fucking options;
		now title entry is "Cancelling your involvement in Diego's special plan";
		now sortorder entry is 8;
		now description entry is "Tell the coyote you don't want to participate after all";
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
				if (nam is "Just chat a bit"):
					say "[DiegoTalk1]";
				else if (nam is "Share some ideas about tricks to play on people with him"):
					say "[DiegoTalk2]";
				else if (nam is "Offer Diego a bottle of water to drink"):
					say "[DiegoTalk3]";
				else if (nam is "Trick Diego into drinking dog milk"):
					say "[DiegoTalk4]";
				else if (nam is "Trick Diego into drinking orc cum"):
					say "[DiegoTalk5]";
				else if (nam is "Offer Diego some food to eat"):
					say "[DiegoTalk6]";
				else if (nam is "Taking part in Diego's secret plans after all"):
					say "[DiegoCollarQuest1]";
				else if (nam is "Cancelling your involvement in Diego's special plan"):
					say "[DiegoCollarQuestRefuse]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro coyote, shaking your head slightly as [SubjectPro of Diego] gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DiegoTalk1:
	if DiegoChanged is 2: [female]
		project the figure of DiegoFem_face_icon;
		say "     [one of]'I think I'm in heat!'[or]'God what I wouldn't give for a nice, thick, coyote cock right about now... to fill my empty pussy...'[or]'Hell I'm almost too horny to think about tricking anyone... almost.'[or]'This was the best trick I ever had played on me!' Diego says with a happy grin on her muzzle as [SubjectPro of Diego] rubs her new body.[or]'You know, I hear there is an alpha wolf out there in the city looking for bitches... maybe we should go check it out together?' [SubjectPro of Diego] asks with a twinkle in her eye.[or]'Where did you get that wonderful milk from anyways? Not that I won't be making some milk of my own as soon as I can find a nice stud to knock me up...' Diego says with a smile as [SubjectPro of Diego] rubs her breasts eagerly.[or]'I wonder if there is any nice canine studs around who want to play hide the knot?'[or]'If you play with the felinoids in the park, you could end up a slutty little pussy for their amusement, doesn't that sound fun?'[or]'The skunk girls are all pets of the larger skunk-beasts. Nice little submissive pets for the strong skunks to fill up with their fertile seed... mmm' Diego moans and rubs herself, obviously aroused by the thought of being a beast's pet.[or]The coyote bitch pants and yips softly, obviously too busy masturbating to bother talking to a boring person like yourself.[or]'I saw a woman riding a horse go by here a while back, I'm pretty sure though the horse would be the one doing the riding eventually though, if you know what I mean.'[or]'God I never knew being a bitch was so much fun, I'm so glad this happened!'[or]'I wonder if any of those nice German shepherds in town would like to play with a coyote,' [SubjectPro of Diego] says with a speculative look on her face.[or]'I heard there was a woman caught by some huskies recently to be turned into a nice little submissive husky bitch. I can kind of envy her now,' [SubjectPro of Diego] says with a smile.[at random]";
	else if DiegoChanged is 1: [herm]
		project the figure of DiegoFem_face_icon;
		say "     [one of]'Damn fine trick you pulled there!'[or]'Thank God I still have my nice thick coyote cock' Diego says with a grin as [SubjectPro of Diego] rubs said cock suggestively.[or]'Hell I can't decide whether I should pull a trick on you, or thank you for this,' [SubjectPro of Diego] says as [SubjectPro of Diego] gestures at her changed body.[or]'You know, I hear there is an alpha wolf out there in the city looking for pack-members, maybe you should go see if [SubjectPro of Diego] has room for you?' [SubjectProCap of Diego] suggests with a twinkle in her eye.[or]'Where did you get that wonderful milk from anyways?' Diego says with a grin as [SubjectPro of Diego] licks her lips.[or]'I saw a woman riding a horse go by here a while back, I'm pretty sure though the horse was the one doing the riding eventually though if you know what I mean.'[or]'There was a deer around here recently at some point, [SubjectPro of Diego] looked kinda lonely if you know what I mean...'[or]'I wonder what's bigger...' Diego muses with a thoughtful expression on her muzzle, 'The horse cocks here in the park, or the zebra cocks in the zoo...'[or]'Careful around the cute chinchilla in the park, they are almost as tricky sometimes as I am.'[or]'I wonder how much those strange cock plants are going to keep spreading.'[or]'Cock and pussy, best of both worlds!'[or]'I heard there was a woman caught by some huskies recently to be turned into a nice little submissive husky bitch,' [SubjectPro of Diego] says with a smile.[at random]";
	else: [male]
		project the figure of Diego_face_icon;
		say "     Diego says, '[one of]Hmm, advice eh? How's this, always remember to brush your teeth after giving a blowjob, good hygiene is still important!'[or]Have you tried looking in some of the small lairs in the park? You might find something worthwhile, just be careful to wait until no ones home before you take a peek.'[or]Don't mess with badgers, seriously even I wouldn't kid you about those dangerous buggers.'[or]I hear there was a doe hanging around here at some point, if ya want her to go with ya just make sure to grab her right away.'[or]Have you seen those handsome felinoids out there? Maybe you should try petting one a few times, I'm sure you will find it educational.'[or]I hear if you play with the small felines enough, a big strong alpha lion will show up.'[or]If you see some wyverns fighting in the park, you should probably just watch and not interfere, not your business right?'[or]There's some weird skunks out there, but I hear the bigger beasts are lots of fun to play with.'[or]Happy with your current look? Then this is definitely not the place to be.'[or]Don't worry about any of the plants you see moving around the park, just go give them a pet they are pretty much harmless.'[or]Have you seen any little yellow rodents in the park? Seems to me like something you might be interested in.'[or]Don't hit the chinchillas! Hurting something that cute has to be against some kinda law, you wouldn't want to get in trouble now would you?'[or]The bitches love the nice thick coyote cock.'[or]Feel like a real trickster today? Why not try tricking me and see what happens?'[or]I bet you can't trick old Diego here, just give it a try!'[at random]";
	say "[DiegoTalkMenu]"; [looping back for more talk]

to say DiegoTalk2:
	try Diegotricking;

to say DiegoTalk3: [hand over water]
	if DiegoChanged > 0:
		project the figure of DiegoFem_face_icon;
	else:
		project the figure of Diego_face_icon;
	if diego's heirloom collar is not equipped:
		say "     Accepting your water bottle with eager paw-hands, Diego gives you a wide grin and says, 'That's downright neighborly of you my friend. Thanks!' With that said, the coyote unscrews the lid, giving an almost imperceptible nod at the fact that it was still properly sealed. Leaning back [PosAdj of Diego] head, the anthro canine pours the water into [PosAdj of Diego] open muzzle, chugging it down thirstily. 'Aaah, now that hit the spot! Makes me feel more ready for playing tricks right away,' [SubjectPro of Diego] says with a grin, tail wagging left to right.";
	else: [variant for collared player]
		say "     Accepting your water bottle with eager paw-hands, Diego gives you a wide grin and says, 'Good little bitch, caring for your man!' With that said, the coyote unscrews the lid, giving an almost imperceptible nod at the fact that it was still properly sealed. Leaning back [PosAdj of Diego] head, the anthro canine pours the water into [PosAdj of Diego] open muzzle, chugging it down thirstily. 'Aaah, now that hit the spot! Makes me feel more ready for playing tricks right away,' [SubjectPro of Diego] says with a grin, tail wagging left to right.";
	ItemLoss water bottle by 1;
	extend game by 4;

to say DiegoTalk4: [transform Diego towards being female]
	if DiegoChanged is 1: [herm Diego]
		project the figure of DiegoFem_face_icon;
		say "     'Hey, you have more of that wonderful milk!' Diego says with a grin on her new muzzle as [SubjectPro of Diego] sniffs the air, her coyote tail wagging behind the herm eagerly. 'Well the damage is already done, and that stuff tasted amazing, so one more drink couldn't hurt - right?' Diego says as [SubjectPro of Diego] looks at you hopefully, eyeing the bottle of milk you are holding out teasingly.";
		say "     [bold type]Do you give Diego some more of the milk?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     You grin as you hand the eager coyote herm another container of the thick transformative canine milk, enjoying the eager look on her muzzle as [SubjectPro of Diego] quickly gulps down another dose of the milk. 'Ah that's still so damn good...' Diego says with a smile as [SubjectPro of Diego] finishes drinking the liquid, handing the empty container back to you as [SubjectPro of Diego] strokes herself absently. 'Hey wait,' the coyote herm says as [SubjectPro of Diego] moans again, staggering a bit as her body obviously begins to heat up from within as [SubjectPro of Diego] begins to change. 'I'm already a herm, what now? Oh shit no...' The coyote pants out as her hands go down to her thick canine cock, rubbing at it and stroking it as it seems to shrink into her body.";
			say "     'Noooo...' Diego pants out as [SubjectPro of Diego] strokes her vanishing cock with her increasingly pawlike hands, the rest of her body seeming to change into a slightly more bestial form as well. 'Oh god,' [SubjectPro of Diego] moans as [SubjectPro of Diego] ceases to be a male completely, her rod vanishing into her body even as her breasts swell larger. 'Feels so good...' Diego moans as the new female's hands begin to rub and stroke herself erotically. The newly formed bitch begins to yip in pleasure as [SubjectPro of Diego] moves her paw-like hand over her new mound, finally letting out a long coyote howl as [SubjectPro of Diego] brings herself to orgasm before leaning up against the wall panting.";
			WaitLineBreak;
			say "     Eventually Diego looks back at you with a satisfied grin on her face. 'Guess fool me twice, shame on me eh?' [SubjectPro of Diego] says, seeming not at all displeased as her paws begin to roam her new body again. 'I'd probably be annoyed, if this wasn't the best feeling ever...' the coyote bitch says with a smile on her muzzle as [SubjectPro of Diego] looks at you happily. 'I feel so damn horny and sexy like this, it's amazing. Hell I think I might even be in heat!' [SubjectPro of Diego] says eagerly, panting happily at the prospect while her paws begin to rub over her soft fur again, the trickster obviously forgetting you are there watching as [SubjectPro of Diego] begins to pleasure herself yet again.";
			ItemLoss dog milk by 1;
			now DiegoChanged is 2;
			SetFemalePronouns for Diego;
			now the icon of Diego is Figure of DiegoFem_icon;
			LineBreak;
		else:
			say "     'Aw, still your probably right, best not to push my luck,' the coyote herm says as [SubjectPro of Diego] shoots your backpack a longing look as you put the milk away, before settling back up against the wall with a sigh.";
	else if DiegoChanged is 0: [male Diego]
		project the figure of Diego_face_icon;
		say "     Deciding to play a whole different sort of trick - on Diego, this time - you rummage around in your backpack until you find the milk from the canine you fought earlier. 'Hey something smells good there,' the tricky coyote says as you set down the bottle on the low wall surrounding the park, then proceed to flash it through [PosAdj of Diego] line of sight a few more times as you re-arrange the packing order of your supplies.";
		say "     'Damn,' Diego says with a sad smile as [SubjectPro of Diego] looks at you with large coyote eyes. 'It's just so much work tricking the man. Very, very thirsty work, if you know what I mean,' the trickster says with a smile on [PosAdj of Diego] muzzle. 'Why not help a fellow out?' [SubjectPro of Diego] says hopefully as [SubjectPro of Diego] eyes the bottle of milk right on top of your still open backpack.";
		say "     [bold type]Do you decide to continue and give [ObjectPro of Diego] the changing milk?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     Handing the transformative drink to the unsuspecting coyote, you watch eagerly as Diego leans [PosAdj of Diego] head back and pours the thick liquid into [PosAdj of Diego] open maw, gulping it down thirstily. 'Damn that hit the spot, thanks bud,' Diego says as [SubjectPro of Diego] hands the empty container back to you, before pausing with a strange look on [PosAdj of Diego] muzzle. 'Oh shit,' the coyote man says as [SubjectPro of Diego] doubles over for a second, [PosAdj of Diego] hands going to [PosAdj of Diego] groin and chest as [SubjectPro of Diego] moans slightly. 'What kind of milk was that?' the changing coyote says as [SubjectPro of Diego] begins to pant with need as [SubjectPro of Diego] rubs himself. 'God it feels so good,' Diego moans, [PosAdj of Diego] chest swelling out with a new pair of soft breasts. The changing coyote straightens up and leans back against the wall, eyes half closed in pleasure as [PosAdj of Diego] hands reach down to stroke at [PosAdj of Diego] crotch.";
			SetFemalePronouns for Diego;
			say "     One of his - or maybe rather [PosAdj of Diego] - hands rubbing along [PosAdj of Diego] stiff rod eagerly, while the other reaches underneath [PosAdj of Diego] cock to rub and stroke at her brand new female opening. The sight makes you grin as the lust-filled new coyote herm moans wantonly as [SubjectPro of Diego] plays with herself, your own body growing excited as [SubjectPro of Diego] brings herself to orgasm, her seed coating one hand, even as her wet juices spill out over the other as [SubjectPro of Diego] shudders in ecstasy. Panting from pleasure and exertion, Diego lowers her head and looks at you with a wry grin on her muzzle. 'Well damn, that was a nice trick there,' the coyote herm admits as her hands begin to wander over her changed body again. 'I guess you got me that time then, maybe I should give you a little reward for being such a good trickster?' the new herm says with a lewd wink as [SubjectPro of Diego] eyes your body eagerly.";
			ItemLoss dog milk by 1;
			now the icon of Diego is Figure of pixel_icon;
			now DiegoChanged is 1;
		else:
			LineBreak;
			say "     'Damn, what a tease,' Diego says sadly as you slip the milk back into your pack. 'I taught you too damn well it seems,' the coyote says with a sigh as [SubjectPro of Diego] watches the milk vanish back into your pouch.";

to say DiegoTalk5: [transform Diego towards being open for anal]
	project the figure of Diego_face_icon;
	if DiegoButtSlut is 1 or DiegoButtSlut is 2: [already open for anal, virgin or not]
		say "     As you start digging in your backpack, Diego raises [PosAdj of Diego] head and sniffs the air. 'I think I know what you're up to my friend. Got some more 'nut milk' you wanna share with your coyote buddy, don't you?' [SubjectPro of Diego] says with a grin [PosAdj of Diego] tail wagging eagerly. 'Well, with how great it tasted last time, you don't have to trick me into taking it...' the canine trickster adds with a hopeful look, licking [PosAdj of Diego] lips as you pull out your bottle of orc cum, waving it around teasingly.";
		say "     [bold type]Do you give Diego some more orc cum to drink?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents: [give it to Diego]
			LineBreak;
			say "     Unscrewing the lid of the bottle, you step up to your canine friend - but this time, you playfully bat away [PosAdj of Diego] paw-hand as [SubjectPro of Diego] reaches for it. Instead of just giving the coyote the bottle of cum, you put your other hand on the anthro's chest, feeling [PosAdj of Diego] warmth and the beat of [PosAdj of Diego] heart, then slide it up and behind [PosAdj of Diego] neck. Getting a good grip of the lusciously soft neck-fur on your buddy, you pull Diego's head back in a demanding tug - to which the coyote gives an aroused grunt, chuckling as [PosAdj of Diego] own paw-hand begins to stroke your side. As [SubjectPro of Diego] opens [PosAdj of Diego] maw wide, tongue pushed out eagerly, you pour a first dollop of cum on it.";
			say "     Tightening your grip on the back of [PosAdj of Diego] neck a little stops the canine from just gulping it down right away, instead allowing the creamy-white cum to slowly trickle over [PosAdj of Diego] tongue. You add a little more once or twice, savoring the moment of feeding this panting male [PosAdj of Diego] tasty treat. Looking down, Diego's reddish shaft is already well on its way of pushing out of [PosAdj of Diego] sheath, hardening further with every moment. You move your hand from [PosAdj of Diego] neck to one of the large ears on the coyote, stroking its sensitive shape in sensual slowness. Then you lean in and whisper what a good dog [SubjectPro of Diego] is, saying that that deserves a reward - and with that, you start pouring half the bottle of orc cum into Diego's maw.";
			WaitLineBreak;
			say "     Your trickster buddy thirstily gulps down more and more of the creamy treat, even licking the last drop off [PosAdj of Diego] lips and reaching out for more as you eventually pull away the bottle. 'Damn that hit the spot, thanks bud. I love the taste. Wanna give me the rest of it too?' Diego says as eyes the plastic bottle in your hand, [PosAdj of Diego] words slurred just a little bit as the potent seed starts showing an effect. 'Got quite a kick after a moment - good stuff,' [SubjectPro of Diego] moans and gives you a lusty grin, one paw-hand moving to slide around your hips and pull you closer, the other reaching for the bottle in your hand. You happily accept the naked canine rubbing up against your side, the longer fur on [PosAdj of Diego] cheeks tickling your face, but at the same time, you do keep the remaining amount of 'nut-milk' out of Diego's grasp.";
			say "     Sliding your arm down behind Diego, you move a hand past [PosAdj of Diego] wagging tail and give the firm buns on [PosAdj of Diego] wiry body a squeeze, then dip a finger into the coyote's quivering pucker. 'OooohhhHH! Yeah, that feels good. Finger my ass!' the aroused canine calls out in pleasure, by now wholly unconcerned about anyone hearing [ObjectPro of Diego] admit to the great feelings [SubjectPro of Diego] gets from having [PosAdj of Diego] tailstar played with. You proceed to toy with Diego a bit, sliding in your finger to brush against [PosAdj of Diego] prostate for a second, then pulling out to just circle [PosAdj of Diego] pucker in a slow caress before - almost - penetrating it again and again. 'God, I'm so horny right now! Give me MORE!' Diego moans deeply and humps [PosAdj of Diego] erection against the side of your hips a little.";
			WaitLineBreak;
			say "     Having gotten the anthro canine desperately aroused, you tell [ObjectPro of Diego] to get on all fours and raise [PosAdj of Diego] rear like a bitch waiting to get mounted. [SubjectProCap of Diego] looks into your eyes for a second while giving a beaming grin, then says in an amused tone, 'Well played, bud. You're good at getting what you want.' With a happy lick to your face, the canine lets go of you and drops to all four paws, [PosAdj of Diego] lithe form waiting for you with raised butt and wagging tail. You take in the sight with great pleasure at having pushed the formerly so vehemently straight coyote this far, then plant a hand on one of [PosAdj of Diego] soft-furred, firm buttocks and give it a possessive squeeze. Moving on from that after a good long moment of just groping him, you slide two fingers against Diego's pucker, sinking them into [PosAdj of Diego] readily stretching back passage.";
			say "     Finger-fucking your moaning and barking buddy, you push your digits in and out of [PosAdj of Diego] asshole in a steady rhythm, eventually adding a third finger to open [ObjectPro of Diego] up even wider. Then at one point, you yank your fingers out of [PosAdj of Diego] gripping hole and bring up the bottle you're still holding. Gaping open as it is from waiting for your fingers to return, it is quite easy to pour the rest of the orc warrior's load into your canine trickster and you can't help but grin widely at the nice sight of [PosAdj of Diego] cream-filled hole. Diego lets out a breathless gasp as the potent load starts to soak into [PosAdj of Diego] inner walls to be absorbed.";
			WaitLineBreak;
			say "     Reflexively pulling closed, the canine's pucker sends out a little bit of the orc cum squirting out - only for you to catch it with your fingers and proceed to push it back inside him. Sliding your digits into the now slick and wet back passage of the anthro coyote, you push the cum deeper and deeper, stretching open [PosAdj of Diego] insides to let it sink in and massaging it into Diego's prostate. Of course the anal stimulation as well as copious amounts of aphrodisiacs absorbed through [PosAdj of Diego] stomach and ass do push the coyote past all limits of arousal - and [SubjectPro of Diego] howls out loud as [SubjectPro of Diego] starts to come within moments, [PosAdj of Diego] whole body trembling as [PosAdj of Diego] balls send forth pulse after pulse of cum to splatter the ground under him.";
			say "     As Diego rocks back against your hand during [PosAdj of Diego] orgasm, your fingers are wedged into [ObjectPro of Diego] deeply - and you feel something quite interesting happen. One moment, your fingertips are pressed against a yielding, yet quite solid wall of [PosAdj of Diego] inner passage, just a bit behind the coyote's prostate. And then... it seems to pull back from your finger, that one spot getting deeper?! A heartbeat later, you can't feel any push-back against your fingertip anymore, the sensation replaced by a snug ring of muscle closing in to surround your digit lower down.";
			WaitLineBreak;
			say "     You pull your hand back a little and feel around some more - there's Diego's prostate (making [ObjectPro of Diego] twitch a little as you push against it), and further inside him... is that 'second pucker'? No matter what it is, the canine gasps in pleasure as you push against and through it with your finger, wiggling the fingertip in what seems to be some enclosed space in Diego's insides. As Diego's orgasm winds down eventually, you end your exploration and slip the fingers out of him, wiping them against [PosAdj of Diego] soft fur. After that, [SubjectPro of Diego] sinks down on the floor, sitting down on a clean spot beside the cum puddle [PosAdj of Diego] orgasm left and pants loudly to cool [PosAdj of Diego] overheated body down.";
			say "     'That was *pant* something else *pant*,' [SubjectPro of Diego] says and looks up at you, a beaming grin spreading over [PosAdj of Diego] muzzle. 'I'm so glad you tricked me into drinking that first bottle. These feelings are just unbelievable!' For now, you decide to keep quiet about what you felt happening up [PosAdj of Diego] butt. Given the source of the trickster's creamy filling and the life-cycle of the all-male orc tribe, you do guess that your canine friend is due for quite a few more unbelievable things. Like a litter of puppies for example... not yet right now would be your guess, as the breeding pouch just formed, but quite likely after another anal adventure for Diego.";
			ItemLoss orc cum by 1;
			add "Mpreg" to traits of Diego;
			now DiegoButtSlut is 3;
		else: [nope, just easing]
			LineBreak;
			say "     'Damn - what a tease,' Diego remarks as you slide the bottle back into your pack with a grin, then close the zipper and swing the backpack over one shoulder. Licking [PosAdj of Diego] lips thirstily, [SubjectPro of Diego] flicks an ear in amusement as [SubjectPro of Diego] adds, 'I taught you too damn well it seems.'";
	else if DiegoButtSlut is 0: [straight Diego]
		say "     Deciding to play a whole different sort of trick - on Diego, this time - you rummage around in your backpack until you find the small bottle of creamy cum you milked out of an orc's thick green prick. Just looking at it reminds you of the brute's virility - especially since this wasn't even [PosAdj of Diego] full load, but rather just what fit in the bottle. 'Hey something smells good there,' the tricky coyote says as you set down the bottle on the low wall surrounding the park, then proceed to flash it through [PosAdj of Diego] line of sight a few more times as you re-arrange the packing order of your supplies.";
		say "     'Damn,' Diego says with a sad smile as [SubjectPro of Diego] looks at you with large coyote eyes. 'It's just so much work tricking the man. Very, very thirsty work, if you know what I mean,' the trickster says with a smile on [PosAdj of Diego] muzzle. 'Why not help a fellow out?' [SubjectPro of Diego] says hopefully as [SubjectPro of Diego] eyes the bottle of what [SubjectPro of Diego] must think is milk right on top of your still open backpack.";
		say "     [bold type]Do you decide to continue and give [ObjectPro of Diego] the orc cum?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents: [give it to Diego]
			LineBreak;
			say "     Handing the bottle to the unsuspecting coyote, you watch eagerly as Diego unscrews the top of the bottle and sniffs at it. [PosAdjCap of Diego] tail starts wagging slowly as [SubjectPro of Diego] remarks, 'Hmm, smells good. Does it have almonds in there?' Grinning, you tell [ObjectPro of Diego] that it's some sort of nut-milk, but don't expand into more detail. [SubjectProCap of Diego] raises the bottle and calls out 'Cheers!', then leans [PosAdj of Diego] head back and pours the thick liquid into [PosAdj of Diego] open maw, gulping it down thirstily. 'Damn that hit the spot, thanks bud. I love the taste,' Diego says as [SubjectPro of Diego] hands the empty container back to you, before pausing with a strange look on [PosAdj of Diego] face.";
			say "     'Oh wow,' the coyote man says as [SubjectPro of Diego] has to brace himself against the wall as [SubjectPro of Diego] sways a little. 'You didn't tell me it had alcohol in it. Got quite a kick after a moment, good stuff.' Slurring [PosAdj of Diego] last words just a bit, the coyote looks amused and pretty turned on - obviously so, as the reddish shaft of [PosAdj of Diego] cock starts to push out of Diego's sheath. Explaining that it isn't exactly alcohol that's giving your canine friend [PosAdj of Diego] buzz, you watch with amusement as [SubjectPro of Diego] starts panting loudly and lowers a hand to rub [PosAdj of Diego] manhood. 'God, I'm so horny right now!' Diego moans and strokes [PosAdj of Diego] shaft up and down.";
			WaitLineBreak;
			say "     After a few more moments in which you can almost see the coyote's arousal build up higher and higher, Diego adds, 'And... there's this tingly feeling back here...' With that said, [SubjectPro of Diego] reaches back to [PosAdj of Diego] tail, letting out a bark of, 'OH GOD! That's... wow!' as [SubjectPro of Diego] brushes the quivering ring of [PosAdj of Diego] pucker with a finger. 'Why does this turn me on so much?' your tricked buddy asks himself, then turns [PosAdj of Diego] head to look at you with a wide eyes. 'Just what kind of milkshake did you give me?!' comes a somewhat breathless question next, followed by a lusty groan as [SubjectPro of Diego] can't help but stroke over [PosAdj of Diego] tailstar once more.";
			say "     The jig's up - so you grin widely at Diego, explaining that [SubjectPro of Diego] chugged down a whole bottle of orc cum. The canine gapes at you for a second, then closes [PosAdj of Diego] maw and lowers [PosAdj of Diego] head, coming back up with a wry grin on [PosAdj of Diego] muzzle. Chuckling, [SubjectPro of Diego] admits, 'Well damn, that was a nice trick right here and now! Played this fool of a dog like a fiddle - and I thought I was milking you for a drink! And a damn tasty one at that - even if it left me with a downright weird sensation back under the tail.' Taking a deep breath, the coyote then reaches back again to calmly poke at [PosAdj of Diego] pucker again - which causes [PosAdj of Diego] whole body to shiver in arousal, complete with a little spurt of pre from [PosAdj of Diego] hard cock.";
			LineBreak;
			say "     [bold type]Do you leave the anthro dog to figure out [PosAdj of Diego] now much more sensitive back passage on [PosAdj of Diego] own, or do you want to introduce Diego to being fingered yourself?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Watch [ObjectPro of Diego] finger [PosAdj of Diego] ass till [SubjectPro of Diego] comes.";
			say "     ([link]N[as]n[end link]) - Slide your digits up the coyote's rear end and show [ObjectPro of Diego] a good time.";
			if Player consents: [watch him experiment]
				LineBreak;
				say "     Standing back, you watch with amusement as the - up till now - quite vehemently straight coyote works himself up to actually sliding a finger up [PosAdj of Diego] sensitive tailstar. As [SubjectPro of Diego] does so, Diego lets out a loud moan that expresses how shockingly good it feels to [ObjectPro of Diego] - soon followed by an orgasmic howl as [SubjectPro of Diego] bumps [PosAdj of Diego] prostate. With the fingers of [PosAdj of Diego] other hand wrapped around [PosAdj of Diego] throbbing erection, the coyote squeezes [PosAdj of Diego] bulging knot tightly, no doubt imagining that it is buried in a willing bitch as [SubjectPro of Diego] shoots a heavy load all over the ground.";
			else: [get into the action]
				LineBreak;
				say "     Stepping up close to Diego, you put your hand on [PosAdj of Diego], causing the coyote to look at you and say, 'Hey, what are you do-oooohhhhHHH!' [PosAdjCap of Diego] question leads over into a drawn-out moan as you nudge [PosAdj of Diego] fingers aside and poke at the canine's tailstar, stroking the all new pleasure spot [SubjectPro of Diego] hasn't gotten used to yet. Then you gather up a bit of spit and pull your hand away from the coyote for a moment, letting the gob drip down on your fingers. Bringing your hand back down to the trickster's buttocks, you rub [PosAdj of Diego] rear entrance teasingly, then push in against it and slowly work your digits inside. Diego can't help but moan loudly at the feeling of [PosAdj of Diego] tight hole being stretched by your fingers.";
				say "     Enjoying the fact that you're molesting the asshole of a - up till now - quite vehemently straight male coyote, you slowly slide in and out just a little, drawing moans of pleasure from your trickster buddy. Then you decide to push deeper and feel around a little, soon finding the anthro coyote's prostate. For a second, you just rest your fingertips on the little bulge, then give it a rub - which immediately draws an orgasmic howl Diego. With [PosAdj of Diego] inner muscles suddenly clamping tight around your digits, the coyote trembles all over and [PosAdj of Diego] hand squeezes the bulging knot of [PosAdj of Diego] cock tightly. [SubjectProCap of Diego] is no doubt imagining having [PosAdj of Diego] prick buried in a willing bitch as [SubjectPro of Diego] shoots a heavy load all over the ground - but both of you know that it was your stimulation that pushed [ObjectPro of Diego] over the edge.";
			ItemLoss orc cum by 1;
			now DiegoButtSlut is 1; [anal OK Diego]
		else: [nope, just easing]
			LineBreak;
			say "     'Damn - what a tease,' Diego remarks as you close up your pack and shift it back to hang over one shoulder. Licking [PosAdj of Diego] lips thirstily, [SubjectPro of Diego] flicks an ear in amusement as [SubjectPro of Diego] adds, 'I taught you too damn well it seems.'";

to say DiegoTalk6: [hand over food]
	if DiegoChanged > 0:
		project the figure of DiegoFem_face_icon;
	else:
		project the figure of Diego_face_icon;
	if diego's heirloom collar is not equipped:
		say "     Happily accepting the meal you have brought [ObjectPro of Diego], Diego responds by giving you a wide grin and saying, 'Thank you very much friend, this looks delicious!' followed by unwrapping the packet of food and slowly eating its contents, taking the time to savor and appreciate the meal you brought [ObjectPro of Diego]. Upon finishing the last bite [SubjectPro of Diego] licks [PosAdj of Diego] lips and muzzle for any bits of food that might have gotten stuck on them. 'That tasted quite good. I think I'll be able to play plenty of new tricks with this much extra energy,' [SubjectPro of Diego] says while rubbing [PosAdj of Diego] belly, [PosAdj of Diego] tail wagging side to side happily.";
	else: [variant for collared player]
		say "     Happily accepting the meal you have brought [ObjectPro of Diego], Diego responds by giving you a wide grin and saying, 'That's a good little bitch, caring for your man. This looks delicious!' followed by unwrapping the packet of food and slowly eating its contents, taking the time to savor and appreciate the meal you brought [ObjectPro of Diego]. Upon finishing the last bite [SubjectPro of Diego] licks [PosAdj of Diego] lips and muzzle for any bits of food that might have gotten stuck on them. 'That tasted quite good. I think I'll be able to have plenty of fun with this much extra energy,' [SubjectPro of Diego] says while rubbing [PosAdj of Diego] belly, [PosAdj of Diego] tail wagging side to side happily. You notice his hand straying fairly far down several times, giving his sheathed cock a squeeze as he looks at you.";
	ItemLoss food by 1;
	extend game by 4;

Section 3 - Tricking

Diegotricking is an action applying to nothing

Understand "Trick Diego" as Diegotricking.
Understand "Trick military" as Diegotricking.
Understand "Trick coyote" as Diegotricking.
Understand "delay military" as Diegotricking.

Check Diegotricking:
	If Diego is not visible, say "Who?" instead;

carry out Diegotricking:
	if DiegoChanged > 0:
		project the figure of DiegoFem_face_icon;
	else:
		project the figure of Diego_face_icon;
	if LastDiegoTricked - turns < 6:
		say "     'Sorry bud, only so much time for tricking people in the day,' Diego says as [if DiegoChanged is 0]he shakes his[else]she shakes her[end if] head sadly, 'Trick people too much and it just gets stale, so come back and try again later.'";
		stop the action;
	now LastDiegoTricked is turns;
	say "     Diego gives an impish grin as you approach [ObjectPro of Diego] and say that you got an idea, then says, 'Oh? So you think a new little trickster like you can pull one out of their hat that beats my tricks? Let's see what you got!'";
	LineBreak;
	let bonus be (( Intelligence of Player minus 10 ) divided by 2);
	if 2 is listed in bookcollection, increase bonus by 2;
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Intelligence Check):[line break]";
	increase diceroll by bonus;
	if diceroll > 18:
		say "     As you lay out the plan you've come up with, Diego exclaims happily, 'Whoa amazing! Are you sure you aren't part coyote? I mean, damn that's one impressive trick!' The coyote shakes [PosAdj of Diego] head in admiration and pats the side of your arm in a friendly manner. 'That kinda trick will get some extra effort on my part. Can't wait to put it into action, hah! Should take those silly military types ages to get it all sorted out!' Letting [PosAdj of Diego] eyes roam over the city stretching out around you, the coyote grins broadly - no doubt imagining the chaos [SubjectPro of Diego]'ll create in short order. And that all thanks to your help.";
		increase CoyoteTricks by 2;
		extend game by 18;
		if CoyoteTricks > 4 and DiegoChanged is 0 and DiegoButtSlut is 0:
			LineBreak;
			say "     Turning [PosAdj of Diego] attention back to you, the anthro canine licks [PosAdj of Diego] lips and then says, 'Damn, playing so many tricks on the man is making a dishonest coyote mighty hungry and thirsty. You wouldn't happen to have anything to help a fellow out now would you?' [SubjectProCap of Diego] gives you a hopeful look, glancing over to your gear.";
			say "     ([bold type]Diego trusts you enough to accept something to drink or eat from you now. Maybe give [ObjectPro of Diego] some food, water, or other liquids that could have fun effects on the guy. [roman type])[line break]";
		if CoyoteTricks > 3:
			if Prank Aftermath is inactive:
				now Prank Aftermath is active;
			if Spartan Usurpation is inactive:
				now Spartan Usurpation is active;
	else if diceroll > 12:
		say "     As you lay out the plan you've come up with, Diego gives a happy grin and says, 'Dang that's a good one! Not quite up to my usual standards of course, but pretty damn good!' The coyote nods to you with [PosAdj of Diego] canine head, then lets [PosAdj of Diego] eyes roam over the city stretching out around you. 'I think I'll try your idea on some of the army scouts - might just earn ya a bit of time, and create fun for me.'";
		extend game by 6;
		increase CoyoteTricks by 1;
		if CoyoteTricks > 4 and DiegoChanged is 0 and DiegoButtSlut is 0:
			LineBreak;
			say "     Turning [PosAdj of Diego] attention back to you, the anthro canine licks [PosAdj of Diego] lips and then says, 'Damn, playing so many tricks on the man is making a dishonest coyote mighty thirsty. You wouldn't happen to have anything to help a fellow out now would you?' [SubjectProCap of Diego] gives you a hopeful look, glancing over to your gear.";
			say "     ([bold type]Diego trusts you enough to accept something to drink from you now. Maybe give [ObjectPro of Diego] some water, or other liquids that could have fun effects on the guy.[roman type])[line break]";
		if CoyoteTricks > 3:
			if Prank Aftermath is inactive:
				now Prank Aftermath is active;
			if Spartan Usurpation is inactive:
				now Spartan Usurpation is active;
	else:
		say "     As you lay out the (admittedly pretty lame) plan you've come up with, Diego says derisively, 'You call that a trick?' Snickering at your pathetic attempt, the coyote waves you closer in a conspiratory way and adds, 'Now listen well - THIS is how a master trickster does things!' [SubjectProCap of Diego] whips out a trick that almost makes you stagger back in shock from the sheer nerve and lewdness that Diego possesses in spades. Even just imagining the chaos he'll create makes you feel a bit less human and more used to the new reality of this city...";
		SanLoss 10;

Section 4 - Sex

the fuckscene of Diego is "[SexWithDiego]".

to say SexWithDiego:
	if CoyoteTricks < 5: [not done enough tricks]
		say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and lets [PosAdj of Diego] eyes wander over your form. 'Hmm... maybe. I'll really have to think about your offer for a while,' [SubjectPro of Diego] says, reaching down to adjust [PosAdj of Diego] furry balls a little. 'There's lots of gals in this city here who want some of this, so I don't just hump anyone. And since you aren't much of a trickster, I don't know if you're worth my while...' [SubjectPro of Diego] goes on to say, finishing up with a grin and a wink.";
		say "     [bold type]Sounds like [SubjectPro of Diego] wants you to join in for [PosAdj of Diego] pastime of playing tricks on people.[roman type][line break]";
		stop the action;
	[
	else if diego's heirloom collar is equipped: [collared, submissive players]
		say "[DiegoMasterSex]";
	]
	else if Player is male and DiegoChanged is 0 and DiegoButtSlut is 0: [male+herm player and regular male Diego]
		if Player is female: [herms]
			say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and lets [PosAdj of Diego] eyes wander over your form. 'Hmm you look pretty good there,' Diego says with some interest. 'Sadly though, I can already tell you have a trick hidden away next to your lovely treat,' the coyote says as [SubjectPro of Diego] gestures to your cock. 'Nice try there - but this coyote is just here for the ladies. Better luck next time, eh? Be sure to come back to me if you happen to become a full woman though.'";
		else: [male]
			say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and crosses [PosAdj of Diego] arms while taking in your form. 'Heh, you want to play with a hot coyote stud like me?' Diego says with amusement, 'Hard to blame you for that I know, but I think I'll pass. You may be a good trickster, but figuring out the two guys arrangement isn't a trick I happen to be interested in. Why don't you go out and have some fun, then come back as a lovely female, eh?'";
	else if lastfuck of Diego - turns < 6:
		if DiegoChanged is 2: [FemDiego]
			say "     'Sorry there stud,' Your little coyote bitch pants as [SubjectPro of Diego] looks up at you with a happy expression on her muzzle, 'I still haven't recovered from last time yet, maybe you should try coming back just a little later?' Diego asks somewhat pleadingly.";
			stop the action;
		else: [herm Diego or regular]
			say "     'Sorry there, the little coyote can only come out to play every so often,' Diego says with a smirk on [PosAdj of Diego] muzzle.";
			stop the action;
	else:
		say "[DiegoSexMenu]";

to say DiegoSexMenu:
	setmonster "Coyote";
	if DiegoChanged > 0:
		project the figure of DiegoFem_icon;
	else:
		project the figure of Diego_icon;
	choose row MonsterID from the Table of Random Critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if DiegoChanged < 2 and 1 > 2: [disabled for now]
		choose a blank row in table of fucking options;
		now title entry is "Suck Diego's cock";
		now sortorder entry is 1;
		now description entry is "Give [if DiegoChanged is 0]him[else]her[end if] a blow-job";
	[]
	if (player is male and (DiegoChanged > 0 or DiegoButtSlut > 0) and 1 > 2): [disabled for now]
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck [if DiegoChanged is 0]him[else]her[end if]";
		now sortorder entry is 2;
		now description entry is "Use the coyote's mouth";
	[]
	if (player is female and DiegoChanged < 2):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's dick (vaginal)";
		now sortorder entry is 3;
		now description entry is "Let the coyote fuck you";
	[]
	if (DiegoChanged < 2):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's dick (anal)";
		now sortorder entry is 4;
		now description entry is "Let the coyote fuck you";
	[]
	if (player is male and DiegoChanged > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's pussy - Fuck against the wall";
		now sortorder entry is 5;
		now description entry is "Fill the coyote's pussy with your cock";
	[]
	if (player is male and DiegoChanged > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's pussy - Doggy style";
		now sortorder entry is 6;
		now description entry is "Fill the coyote's pussy with your cock";
	[]
	if (player is male and DiegoChanged > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's pussy - From behind, against the wall";
		now sortorder entry is 7;
		now description entry is "Fill the coyote's pussy with your cock";
	[]
	if (player is male and DiegoButtSlut > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's ass - Fuck against the wall";
		now sortorder entry is 8;
		now description entry is "Fill the coyote's ass with your cock";
	[]
	if (player is male and DiegoButtSlut > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's ass - Doggy style";
		now sortorder entry is 9;
		now description entry is "Fill the coyote's ass with your cock";
	[]
	if (player is male and DiegoButtSlut > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Diego's ass - From behind, against the wall";
		now sortorder entry is 10;
		now description entry is "Fill the coyote's ass with your cock";
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
				if nam is "Suck Diego's cock":
					say "[DiegoSex1]";
				else if (nam is "Face-fuck [if DiegoChanged is 0]him[else]her[end if]"):
					say "[DiegoSex2]";
				else if (nam is "Take Diego's dick (vaginal)"):
					say "[DiegoSex3]";
				else if (nam is "Take Diego's dick (anal)"):
					say "[DiegoSex4]";
				else if (nam is "Take Diego's pussy - Fuck against the wall"):
					say "[DiegoSex5]";
				else if (nam is "Take Diego's pussy - Doggy style"):
					say "[DiegoSex6]";
				else if (nam is "Take Diego's pussy - From behind, against the wall"):
					say "[DiegoSex7]";
				else if (nam is "Take Diego's ass - Fuck against the wall"):
					say "[DiegoSex8]";
				else if (nam is "Take Diego's ass - Doggy style"):
					say "[DiegoSex9]";
				else if (nam is "Take Diego's ass - From behind, against the wall"):
					say "[DiegoSex10]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro coyote, shaking your head slightly as [SubjectPro of Diego] gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DiegoSex1: [face-fuck Diego]
	if DiegoChanged is 2: [femDiego]
		say "     ";
	else if DiegoChanged is 1: [hermDiego]
		say "     ";
	else if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     ";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			now DiegoButtSlut is 4; [Diego mpregged]
	else:
		say "     ";
	NPCSexAftermath Diego receives "OralCock" from Player;
	Coyotify;

to say DiegoSex2: [BJ for Diego]
	if DiegoChanged is 1: [herm]
		say "     <WIP SCENE>";
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	else: [male Diego]
		say "     <WIP SCENE>";
	NPCSexAftermath Player receives "OralCock" from Diego;

to say DiegoSex3: [player pussy fucked by Diego's dick]
	if DiegoChanged is 1: [herm]
		say "     'Hey glad you still want to come play with Diego even after that trick you pulled on me,' the coyote herm says with a grin as [SubjectPro of Diego] looks at your female body lustily. 'Well I have to admit that was a pretty good trick of yours,' [SubjectPro of Diego] adds, rubbing her new breasts with one hand while lowering the other to stroke her half-erect cock. 'Now I think I should pay you back with a nice little trick of my own,' [SubjectPro of Diego] says teasingly as [SubjectPro of Diego] draws closer to you, one of her furred hands reaching out to stroke along your chest as [SubjectPro of Diego] lowers her muzzle to whisper in your ear. 'A nice, thick, knotted, coyote trick, to put right in your eager body...' [SubjectPro of Diego] whispers teasingly, her words making you gasp even as [SubjectPro of Diego] wraps her arms around you and drags you both down onto the soft grass.";
		say "     The coyote herm laughs at the look of arousal on your face, and when you open your mouth to say something [SubjectPro of Diego] locks her soft muzzle over your mouth, silencing you as her tongue darts around in your mouth teasingly. Thoughts of protest are soon the last thing on your mind as her soft hands roam your body, the coyote on top of you still knowing just how to tease and arouse a woman. Giving in to the pleasure, you are soon rubbing up against her soft-furred breasts, while her cock is brushing against your damp needy feminine opening. The teasing of the tricky coyote soon has you lifting your body up to meet her cock, trying to get the tricky herm to fill you up properly. You're panting eagerly as each teasing pass brings you closer to the wonderful pleasure you know is coming.";
		WaitLineBreak;
		say "     Finally you lift yourself up in just the right moment and her cock slips right inside you, making you gasp as the burning emptiness inside you is filled with Diego's coyote rod. [SubjectProCap of Diego] wastes no time with any more teasing once [SubjectPro of Diego] has her cock in your slick pussy, and Diego begins thrusting eagerly into your body, her eyes closed tight in pleasure as [SubjectPro of Diego] lets out short yipping noises with every thrust. The feel of her knot pressing up into your body is simply amazing. At first it was small, just some little bulges at the base of her rod, but now it is spreading you wider with each thrust at it seeks to lock the two of you together. You can tell as you stare up at Diego with lust clouded eyes that the coyote above you is panting with just as much lust as you are.";
		say "     Soon her knot swells up fully while the coyote's shaft is lodged all the way inside you, making you groan as it ties the two of you together. As her thrusts speed up, your hands clench her fur tightly in rapidly building arousal. Then all too soon, [SubjectPro of Diego] begins to shoot her seed into your needy body. The feel of that wonderful canine cock spurting into you is more than you can stand, and you find yourself crying out as well as your body spasms around Diego's thick meat. The two of you collapse together on the grass, her cock still buried deep in your body as you both pant and try to recover from the intense experience.";
		say "     Eventually her knot goes down far enough that [SubjectPro of Diego] can pull it out of you with a soft popping noise, leaving you feeling strangely empty, even though you are still nice and full of her wonderful coyote seed... The coyote herm slowly crawls back over to the wall, leaning her back against it as [SubjectPro of Diego] pants in exhaustion and pleasure, a teasing grin on her muzzle as [SubjectPro of Diego] winks at you. Without another word, you slowly haul yourself back up to your feet, and begin to retrieve your equipment, keeping a careful eye on the tricky coyote just in case.";
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	else: [male Diego]
		say "     'Well after all that tricking and flirting, how could I say no?' Diego says with an amused grin, [PosAdj of Diego] paw-like hand reaching out and pulling you closer to him. 'What say we have a go right here then?' the coyote trickster adds with a grin as [SubjectPro of Diego] moves around you until [SubjectPro of Diego] is pressing your body up against the wall [SubjectPro of Diego] was leaning on. 'Hmm, I like what I see,' [SubjectPro of Diego] says with a grin as [PosAdj of Diego] hands roam down your body. You open your mouth to say something, only for the tricky coyote to take advantage of this fact - [PosAdj of Diego] long muzzle presses up against your face and [SubjectPro of Diego] pushes [PosAdj of Diego] tongue inside your mouth, tangling with your own in a pleasant little wrestling match. Meanwhile, the coyote's paw-hands settle on your ass, rubbing it softly.";
		say "     'Now now,' Diego pants out as [SubjectPro of Diego] breaks the deep kiss, 'No more tricks for today, now it's time for you to get your treat.' The male coyote grins widely as [PosAdj of Diego] stiff cock rubs up against your crotch. Wasting no more time, [SubjectPro of Diego] lifts your ass lightly with both [PosAdj of Diego] paw-hands slid under your thighs, giving himself a better angle as [PosAdj of Diego] cock-tip probes at your hot passage. You find yourself moaning as your back is pressed up against the cool wall, your legs automatically wrapping around the hot coyote stud as [SubjectPro of Diego] sinks [PosAdj of Diego] thick rod into your needy body. 'God you feel so good!' Diego moans as [SubjectPro of Diego] begins to thrust into you in short powerful thrusts, each one pressing you into the wall as you find your hands gripping [PosAdj of Diego] shoulders tightly, encouraging the strong coyote to fuck you even harder.";
		WaitLineBreak;
		say "     Soon you feel the base of [PosAdj of Diego] cock swelling up inside you, making you moan as [SubjectPro of Diego] continues to pound you against the park wall. The rough texture of the wall against your back, combined with your sexy coyote's soft fur against your [Skin of Player] skin, creates an interesting sensation that melds together in the sexual haze you're in. Diego's breath comes out in harsh panting as [PosAdj of Diego] thrusts speed up, [PosAdj of Diego] knot reaching its full extent and locking the two of you together. Then suddenly, [SubjectPro of Diego] grunts deeply and starts filling your body with [PosAdj of Diego] thick, rich seed.";
		say "     Feeling the coyote's cum erupting into you, with the throb of [PosAdj of Diego] cock sending little tingles of pleasure up your spine, your own powerful orgasm is triggered just moments later. You find yourself throwing your head back and panting as your body shakes with pleasure. 'Oh yeah, now that was a sweet treat,' Diego mutters as the two of you stay there, your bodies still locked together against the wall by [PosAdj of Diego] knot. You find yourself enjoying some moments of silence with him, just holding and stroking each other while Diego's knot slowly deflates until eventually, [SubjectPro of Diego] is able to pull out with a soft pop. Planting a kiss on your lips, the coyote then sets you back down on your own feet. 'Come back again anytime,' the canine stud says as [SubjectPro of Diego] leans up against the wall again, seeming to need its support to keep himself stable after all the exertion.";
	NPCSexAftermath Player receives "PussyFuck" from Diego;
	Coyotify;

to say DiegoSex4: [player ass fucked]
	if Player is female and DiegoButtSlut is 0: [player has a pussy and Diego isn't ready for anal himself]
		say "     As you step up to Diego and start making lusty suggestions, the coyote leans back against the wall and lets [PosAdj of Diego] eyes wander over your form. 'Hmm, you look pretty good there,' Diego says with clear interest, but then raises one eyebrow questioningly and adds, 'There's one thing I don't understand though - why would you want me to put my little coyote treat up your rear end? Got a sexy pussy on you, I can tell.' The coyote gestures at your crotch and taps the side of [PosAdj of Diego] muzzle, indicating that [SubjectPro of Diego] can smell your arousal. 'So what do you say? Wanna take this dishonorable gentleman's cock in your pussy?'";
		stop the action;
	else: [Diego plunges his/her cock into the player's ass]
		say "     'Well after all that tricking and flirting, how could I say no?' Diego says with an amused grin, [PosAdj of Diego] paw-like hand reaching out and pulling you closer to him. 'And especially after your neat trick in showing me how much fun one can have with someone's rear end. What say we have a go right here then?' the coyote trickster adds with a grin as [SubjectPro of Diego] moves around you until [SubjectPro of Diego] is pressing your body up against the wall [SubjectPro of Diego] was leaning on. 'Hmm, I like what I see,' [SubjectPro of Diego] says with a grin as [PosAdj of Diego] hands roam down your body. You open your mouth to say something, only for the tricky coyote to take advantage of this fact - [PosAdj of Diego] long muzzle presses up against your face and [SubjectPro of Diego] pushes [PosAdj of Diego] tongue inside your mouth, tangling with your own in a pleasant little wrestling match. Meanwhile, the coyote's paw-hands settle on your ass, rubbing it softly.";
		say "     'Now now,' Diego pants out as [SubjectPro of Diego] breaks the deep kiss, 'It's time for you to get your treat.' The male coyote grins widely as [PosAdj of Diego] stiff cock rubs up against your crotch. Wasting no more time, [SubjectPro of Diego] turns you around and pushes against your upper back, guiding you to lean against the wall, ass sticking out towards him. With a swift tug from eager fingers, the coyote pulls your pants off, pulling one foot after the other out of them throwing the garment aside casually. Crouching behind you, Diego says in an amused tone, 'You know, after your little 'nut-milk' trick, I was inspired to think up a few new things myself. Let me show you...' With that, the coyote kneads your buttocks gently and pulls them apart a little, then runs [PosAdj of Diego] long tongue up your crack.";
		WaitLineBreak;
		say "     Diego proceeds to lap at your hole with eager attention, putting in some slow long licks intermixed with poking the tip of [PosAdj of Diego] tongue against your pucker. As you start to relax and push back a little, [PosAdj of Diego] slick organ even pushes into you, wiggling around in a quite pleasurable fashion. One thing's for sure - this canine trickster really puts a lot of energy into polishing up [PosAdj of Diego] repertoire of 'tricks', giving [ObjectPro of Diego] a surprising talent for eating your ass out despite being a novice. Eventually raising [PosAdj of Diego] muzzle after one more long lick, Diego asks, 'What do you think? Is this nice new trick to spring on people?' Thinking about fit, young military men being put in all sorts of situations that lead to being licked by your trickster friend, you moan out your resounding agreement.";
		say "     Tail wagging wildly, your canine buddy stands up behind you and leans in against you, pressing [PosAdj of Diego] soft-furred body against your backside. 'Knew you'd like it,' [SubjectPro of Diego] whispers into your ear in a very satisfied tone, then reaches down to fondle your slick and relaxed hole. [PosAdjCap of Diego] fingers push into you and give [if Player is male]your prostate[else]a sensitive spot[end if] a nice little stroke, making you groan out in lust. 'After helping me test out the new trick, I'll now give you an especially big and hard treat,' Diego says with a grin and licks your earlobe, then proceeds to line himself up with your pucker.";
		WaitLineBreak;
		say "     The horny coyote grips the side of your hips with one paw-hand and pulls you a little further into bending over, giving himself a better angle as [PosAdj of Diego] cock-tip probes at your hot passage. You find yourself moaning as your bracing hands are pressed up against the cool wall, giving the hot canine stud behind you the needed push-back to sink [PosAdj of Diego] thick rod into your body. 'God your ass feels so good!' Diego moans as [SubjectPro of Diego] begins to thrust into you in short powerful thrusts, each one making [PosAdj of Diego] furry balls smack against your ass. Your groans of pleasure as [SubjectPro of Diego] bottoms out again and again encourage the strong coyote to fuck you even harder. One especially nice thing about being taken by Diego is [PosAdj of Diego] canine cock - the feel of [PosAdj of Diego] knot pressing up into your body is simply amazing.";
		say "     At first it was small, just some little bulges at the base of [PosAdj of Diego] rod, but now it is spreading you wider with each thrust at it seeks to lock the two of you together. You can tell from the intensity of Diego's humping and [PosAdj of Diego] breathless panting that the coyote is feeling just as much arousal and lust as you are. Soon [PosAdj of Diego] knot swells up fully while the coyote's shaft is lodged all the way inside you, making you groan as it ties the two of you together. As [PosAdj of Diego] thrusts speed up ever more, Diego's paw-hands clench around your hips tightly and with a loud howl, [SubjectPro of Diego] begins to shoot [PosAdj of Diego] seed deep into your receptive body. The feel of that wonderful canine cock spurting into you is more than you can stand, and you find yourself crying out as well as your body spasms around Diego's thick meat.";
		WaitLineBreak;
		if Player is male:
			say "     Your own cock swings up and down from the intensity of the coyote still humping against you, throbbing with the rapid beat of your heart and the pulse of cum blasting through it, spraying the wall with your load. It almost seems like your orgasms are linked up, as each spurt of Diego's cock inside you is immediately answered by another of your own. Pressed closely together as you ride out your shared orgasms, the two of you lean against the wall, with Diego soon sliding [PosAdj of Diego] arms around you from behind, embracing your chest in a gesture of affection. Even when new spurts of cum eventually taper off, [PosAdj of Diego] cock is still buried deep in your body and tied to it, giving both of you the time to enjoy some shared moments of togetherness.";
		else if Player is female:
			say "     Your pussy feels really hot and tingly from the sheer intensity of the coyote still humping against your rear and femcum squirts out of it, dripping copiously onto the grass below. It almost seems like your orgasms are linked up, as each spurt of Diego's cock inside you is immediately answered by a spike of arousal from your own body. Pressed closely together as you ride out your shared orgasms, the two of you lean against the wall, with Diego soon sliding [PosAdj of Diego] arms around you from behind, embracing your chest in a gesture of affection. Even when new spurts of cum eventually taper off, [PosAdj of Diego] cock is still buried deep in your body and tied to it, giving both of you the time to enjoy some shared moments of togetherness.";
		else:
			say "     Your whole body feels really hot and tingly from the sheer intensity of the coyote still humping against your rear. It almost seems like your orgasms are linked up, as each spurt of Diego's cock inside you is immediately answered by a spike of arousal from your own body. Pressed closely together as you ride out your shared orgasms, the two of you lean against the wall, with Diego soon sliding [PosAdj of Diego] arms around you from behind, embracing your chest in a gesture of affection. Even when new spurts of cum eventually taper off, [PosAdj of Diego] cock is still buried deep in your body and tied to it, giving both of you the time to enjoy some shared moments of silence with the other.";
		say "     After a little while of just holding and stroking each other, Diego's knot slowly deflates until eventually, [SubjectPro of Diego] is able to pull out with a soft pop. Turning you around and planting a kiss on your lips, the coyote then gives you a broad grin and wags [PosAdj of Diego] tail wildly. 'Come back again anytime,' the canine stud says as [SubjectPro of Diego] leans up against the wall again, seeming to need its support to keep himself stable after all the exertion.";
	NPCSexAftermath Player receives "AssFuck" from Diego;
	Coyotify;

to say DiegoSex5: [Diego's pussy fucked - lift her and fuck against the wall]
	if DiegoChanged is 2: [full FemDiego]
		say "     'I thought you would never ask!' the coyote female says with a grin on [PosAdj of Diego] muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running [PosAdj of Diego] paw-hands over [PosAdj of Diego] changed body, [SubjectPro of Diego] smiles at you and wags [PosAdj of Diego] tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' [SubjectPro of Diego] says teasingly as you approach, spreading [PosAdj of Diego] legs slightly as [SubjectPro of Diego] leans back up against the wall behind her.";
		say "     'Claim your prize then!' [SubjectPro of Diego] says in a half-moan as [SubjectPro of Diego] reaches out one of [PosAdj of Diego] paws to stroke your [Skin of Player] side. Grinning at the eager invitation, you waste no time in moving your body up against hers, pinning the coyote to the wall as [SubjectPro of Diego] moans eagerly in need. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as [PosAdj of Diego] arms wrap around you eagerly and [PosAdj of Diego] body rubs against yours.";
		WaitLineBreak;
		say "     Already highly aroused by the feeling of [PosAdj of Diego] sensual body pressing up against yours and the strong scent of a bitch in heat, you need no further encouragement as you rub your [Cock of Player] rod up against Diego's crotch. [SubjectProCap of Diego] pants eagerly as your tip begins to probe the soft folds, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside her. 'Oh god yes,' the coyote bitch moans eagerly, shuddering at the feel of your rod inside [PosAdj of Diego] body. Clutching you tightly and panting out needy words, [SubjectPro of Diego] makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within [PosAdj of Diego] is almost too much for the former male, as [SubjectPro of Diego] groans and yips instinctively in pleasure, [PosAdj of Diego] furred legs reaching up to wrap around your body and hold you close. This female Diego's body feels wonderful around your cock as you press [PosAdj of Diego] up against the wall, moving in swift sharp thrusts within [PosAdj of Diego] warm passage as [SubjectPro of Diego] clings to your body. 'Yesss, fuck me, make me a proper bitch,' you can hear Diego whispering softly over and over again as [SubjectPro of Diego] rests [PosAdj of Diego] head on your shoulder, [PosAdj of Diego] sighs of pleasure encouraging you to pump into [PosAdj of Diego] amazing body even harder.";
		WaitLineBreak;
		say "     Soon the feel of [PosAdj of Diego] body moving up against yours and the amazing feeling of your cock buried deep inside [PosAdj of Diego] is too much for you, and you cry out as your [Cock of Player] rod begins to spill its life-giving seed into your bitch's fertile womb. Your cries mingle with [PosAdj of Diego] own bestial howl of ecstasy as the feel of being filled like a proper bitch triggers [PosAdj of Diego] own orgasm, [PosAdj of Diego] new instincts obviously victorious over any lingering traces of [PosAdj of Diego] old male personality.";
		say "     Coming down from the pleasure of the intense mating, the two of you collapse against the wall in a tangle of limbs, [PosAdj of Diego] body still wrapped around yours as [SubjectPro of Diego] moans happily at being bred. 'Thank you so much,' Diego whispers into your ear, as [PosAdj of Diego] paw-like hands hold you close, 'Thank you for fucking me properly, and thank you for tricking me into becoming a bitch,' [SubjectPro of Diego] says as [SubjectPro of Diego] licks your cheek and rubs [PosAdj of Diego] muzzle against your neck.";
		WaitLineBreak;
		say "     'I never realized how much I would love being a bitch, being your bitch,' the coyote female says with a grin, as the two of you begin to untangle yourselves from each other. Standing up, you help your newly bred coyote bitch up as well, leaving [PosAdj of Diego] leaning up against the wall as [SubjectPro of Diego] recovers, and somehow you know [SubjectPro of Diego] will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take [PosAdj of Diego] like the prize bitch [SubjectPro of Diego] now is...";
		if DiegoBitched < 2:
			now DiegoBitched is 2;
	else: [carry wall fuck with herm Diego]
		say "     'Well you know, that is an interesting offer...' Diego says as the herm eyes your proudly erect cock thoughtfully. You can easily tell though, that while [SubjectPro of Diego] is trying to hide [PosAdj of Diego] excitement, your offer has immediately caused [PosAdj of Diego] new opening to grow damp. [SubjectProCap of Diego] even spreads [PosAdj of Diego] legs slightly as [SubjectPro of Diego] leans back up against the wall behind her. Also, [PosAdj of Diego] tail gives [PosAdj of Diego] away by lifting up eagerly behind her, making you grin as you press closer to [PosAdj of Diego] changed body. Reaching out, you stroke [PosAdj of Diego] soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, [PosAdj of Diego] tongue starting to hang out of [PosAdj of Diego] muzzle as the scent of an aroused male speaks to [PosAdj of Diego] new instincts.";
		say "     Already highly aroused by the feeling of [PosAdj of Diego] sensual body pressing up against yours and the strong scent of a bitch in heat, you need no further encouragement as you rub your [Cock of Player] rod up against Diego's crotch. [SubjectProCap of Diego] pants eagerly as your shaft slides along [PosAdj of Diego] own and you close your hand around both of them, jerking slowly up and down. 'Oh god yes,' the coyote herm moans eagerly, humping against your hand a little. After a moment of running your finger teasingly around the tip of [PosAdj of Diego] pointed cock, you push the hard rod up a little and feel for the trickster's balls with your other hand. Diego's family jewels are nice and full in their furry sack, and just under them the real prize you're going for is hidden - the wet snatch this anthro canine now calls [PosAdj of Diego] own, thanks to your little trick with the milk.";
		WaitLineBreak;
		say "     After sliding a finger in between Diego's nether lips and finding [PosAdj of Diego] moist and ready, you immediately shift your erection down to line up with it. [SubjectProCap of Diego] groans in lust as your tip begins to probe the soft folds, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside her. 'Fuck YEAH,' the coyote bitch moans eagerly, shuddering at the feel of your rod inside [PosAdj of Diego] body. Clutching you tightly and panting out needy words, [SubjectPro of Diego] makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within [PosAdj of Diego] is almost too much for the relatively new herm, as [SubjectPro of Diego] groans and yips instinctively in pleasure, [PosAdj of Diego] furred legs reaching up to wrap around your body and hold you close. Diego's feminine parts feel wonderful around your cock as you press [PosAdj of Diego] up against the wall, moving in swift sharp thrusts within [PosAdj of Diego] warm passage as [SubjectPro of Diego] clings to your body. 'Take me, take me deep like a bitch,' you can hear Diego whispering softly over and over again as [SubjectPro of Diego] rests [PosAdj of Diego] head on your shoulder, [PosAdj of Diego] sighs of pleasure encouraging you to pump into [PosAdj of Diego] amazing body even harder. You can't help but greatly enjoy how easily the once tricky coyote is overcome by the needs of [PosAdj of Diego] new body.";
		WaitLineBreak;
		say "     The sensations of having a strong [if player is herm]herm[else]male[end if] pumping their rod into her, washing over the coyote herm's lust-fogged mind, make [PosAdj of Diego] react instinctively as [SubjectPro of Diego] grinds [PosAdj of Diego] crotch against yours in order to push your rod deeper. With a broad grin on your face, you slide your arms up behind [PosAdj of Diego] soft-furred back, stroking [PosAdj of Diego] a little before gripping the scruff of [PosAdj of Diego] neck possessively. Moments of hard fucking later, Diego cries out, [PosAdj of Diego] legs wrapping even tighter around you as [PosAdj of Diego] body shudders in orgasm. The hard cock of the herm coyote, with a fully swollen knot and all, stands straight up between the two of you and erupts with cum-shot after cum-shot, splattering both of your chests and even your chin with the coyote's load.";
		say "     Meanwhile, Diego's inner muscles tremble and twitch around your erection, creating very pleasurable sensations that trigger your own orgasm mere moments later. You eagerly spill your seed into [PosAdj of Diego] waiting body, spurt after spurt of your cum filling the coyote herm. After your spurts of cum eventually taper off, you relax your grip on [PosAdj of Diego] neck, slowly drawing your rod out of [PosAdj of Diego] dripping pussy, even as [PosAdj of Diego] body trembles with the aftershocks of [PosAdj of Diego] intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego slowly drops to [PosAdj of Diego] knees, leaning heavily against the wall to brace herself. You have a feeling that the lovely little coyote won't be forgetting this particular trick anytime soon...";
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	NPCSexAftermath Diego receives "PussyFuck" from Player;
	Coyotify;

to say DiegoSex6: [Diego's pussy fucked - doggy style]
	if DiegoChanged is 2: [full FemDiego]
		say "     'I thought you would never ask!' the coyote female says with a grin on [PosAdj of Diego] muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running [PosAdj of Diego] paw-hands over [PosAdj of Diego] changed body, [SubjectPro of Diego] smiles at you and wags [PosAdj of Diego] tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' With that said, [SubjectPro of Diego] drops down to all fours on the ground before you, [PosAdj of Diego] newly changed body makes the stance seem both more natural on her, and very sexy.";
		say "     As you approach, Diego turns [PosAdj of Diego] rear towards you and lifts [PosAdj of Diego] tail eagerly to give you a perfect view of [PosAdj of Diego] heat-swollen filled pussy. 'Why don't you claim your little coyote like a proper bitch?' [SubjectPro of Diego] pants out as [SubjectPro of Diego] glances at you over [PosAdj of Diego] shoulder, waving [PosAdj of Diego] ass slightly as [PosAdj of Diego] tail wags eagerly in anticipation. The sight of the formerly dominant coyote on all fours before you as [SubjectPro of Diego] gives in to [PosAdj of Diego] female instincts makes you smile, and your cock is already hard and ready as you reach out and begin to stroke [PosAdj of Diego] soft fur.";
		WaitLineBreak;
		say "     Diego moans as [SubjectPro of Diego] shifts [PosAdj of Diego] stance slightly, rubbing [PosAdj of Diego] body up against your touch as you position yourself behind her, stroking your cock tip lightly over [PosAdj of Diego] silken folds teasingly as you watch [PosAdj of Diego] moan in need. 'Please, please I need it so badly...' the coyote bitch begs, lustily, your male presence overwhelming [PosAdj of Diego] with the need to be bred. [PosAdjCap of Diego] heat-filled scent filling your nose tells you just how ready [SubjectPro of Diego] is for you, and you groan in pleasure as you push yourself into [PosAdj of Diego] warm body. The feel of [PosAdj of Diego] tight passage welcoming your cock is amazing!";
		say "     You begin panting yourself as you start to rock your hips forward into the eager bitch beneath you, your hands gripping [PosAdj of Diego] fur tightly with each thrust. 'God yes,' Diego pants out underneath you, rocking back into each of your thrusts eagerly. 'Claim me please, fill me up and make me your bitch,' [SubjectPro of Diego] moans, as [SubjectPro of Diego] surrenders herself fully to [PosAdj of Diego] transformed body's need to be mated and claimed. The sound of [PosAdj of Diego] eager voice as [SubjectPro of Diego] begs to be bred makes you feel strong and dominant as you thrust into [PosAdj of Diego] body even faster, your orgasm building quickly as [SubjectPro of Diego] yips underneath you.";
		WaitLineBreak;
		say "     Finally your body tenses and you cry out in pleasure as your cock explodes into the new bitch, spilling its seed into [PosAdj of Diego] receptive pussy as [SubjectPro of Diego] lets out a coyote howl of victory at fulfilling [PosAdj of Diego] new role in life as a bitch. Gasping from the intense orgasm, you hold Diego close for a few minutes, feeling your cock slowly soften inside her, before eventually pulling out of [PosAdj of Diego] eager body and staggering to your feet.";
		say "     Without you inside her, Diego collapses to the ground, lying on the soft grass for a minute, before rolling over and sitting up still panting from the recent exertion. 'Thanks. God I needed that,' your bitch says with a smile on [PosAdj of Diego] muzzle as [SubjectPro of Diego] rubs [PosAdj of Diego] stomach with [PosAdj of Diego] paws. 'I never imagined anything could feel this good before...' [SubjectPro of Diego] says with a dreamy look on [PosAdj of Diego] muzzle, before blinking and looking at you. 'I think I'm your bitch now, it just feels... right somehow,' Diego says with a smile on [PosAdj of Diego] muzzle as [SubjectPro of Diego] hauls herself up on [PosAdj of Diego] still shaky legs, before reaching out to stroke your cheek with one of [PosAdj of Diego] paws lightly.";
		WaitLineBreak;
		say "     'Thank you for claiming me properly,' [SubjectPro of Diego] says as [SubjectPro of Diego] leans forward and gives you a soft lick on the cheek. 'It just feels right to do it doggy style - and with such a crafty trickster too,' the coyote bitch says with a soft grin, before staggering back over to the wall and leaning up against it for support. 'Anytime you want to play with your bitch again, you know where I am,' [SubjectPro of Diego] says with a wink. You gather your stuff together to set out into the city again, grinning at the change a few little tricks managed to bring about in your bitch.";
		if DiegoBitched < 2:
			now DiegoBitched is 2;
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the herm eyes your proudly erect cock thoughtfully. You can easily tell though, that while [SubjectPro of Diego] is trying to hide [PosAdj of Diego] excitement, your offer has immediately caused [PosAdj of Diego] new opening to grow damp. Also, [PosAdj of Diego] tail gives [PosAdj of Diego] away by lifting up eagerly behind her, making you grin as you press closer to [PosAdj of Diego] changed body. Reaching out, you stroke [PosAdj of Diego] soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, [PosAdj of Diego] tongue starting to hang out of [PosAdj of Diego] muzzle as the scent of an aroused male speaks to [PosAdj of Diego] new instincts. With that said, the coyote herm slowly turns [PosAdj of Diego] back to you and drops down to all fours on the ground. [PosAdjCap of Diego] newly changed body makes the stance seem both more natural on her, and very sexy.";
		say "     Diego lifts [PosAdj of Diego] tail in a soft invitation, giving you a clear view of [PosAdj of Diego] now wet and swollen coyote pussy, with [PosAdj of Diego] cock dangling erect underneath [PosAdj of Diego] body. You approach to give [PosAdj of Diego] new female parts some much-needed attention by your [Cock of Player] cock. Diego moans as your hands stroke through the soft coyote fur of [PosAdj of Diego] inner thighs, rubbing and teasing [PosAdj of Diego] until [SubjectPro of Diego] raises [PosAdj of Diego] ass up into the air even higher. The sight of the formerly dominant coyote on all fours before you as [SubjectPro of Diego] gives in to [PosAdj of Diego] female instincts makes you smile, and your cock is already fully hard and ready as you rub its tip against [PosAdj of Diego] new entrance. It is just so much fun to see how easily the once tricky coyote is overcome by the needs of [PosAdj of Diego] new body.";
		WaitLineBreak;
		say "     Diego pants eagerly as your tip begins to probe [PosAdj of Diego] soft folds, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and push your cock into her. [PosAdjCap of Diego] soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into [PosAdj of Diego] body. Diego's inner muscles massage your cock needily even as you draw back and begin to thrust into [PosAdj of Diego] again. [SubjectProCap of Diego] moans and begins to yip as [PosAdj of Diego] new small breasts begin to bounce underneath [PosAdj of Diego] body in time to your thrusts, [PosAdj of Diego] tongue lolling out of [PosAdj of Diego] muzzle as [SubjectPro of Diego] gasps in time with your thrusting.";
		say "     The sensations of having a strong male pumping [if player is herm]their[else]his[end if] rod into her, washing over the coyote herm's lust-fogged mind, make [PosAdj of Diego] react instinctively as [SubjectPro of Diego] thrusts [PosAdj of Diego] hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along [PosAdj of Diego] soft-furred back, before gripping the scruff of [PosAdj of Diego] neck possessively. Moments of hard fucking later, Diego cries out, [PosAdj of Diego] body shuddering in orgasm - causing [PosAdj of Diego] trembling inner muscles to trigger your own. You eagerly spill your seed into [PosAdj of Diego] waiting body, spurt after spurt of your cum filling the coyote herm.";
		WaitLineBreak;
		say "     Eventually, you relax your grip on [PosAdj of Diego] neck, slowly drawing your rod out of [PosAdj of Diego] dripping pussy, even as [PosAdj of Diego] body trembles with the aftershocks of [PosAdj of Diego] intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego collapses on the ground, lying in the sticky patch [PosAdj of Diego] cock sprayed a heavy load over. You have a feeling that the lovely little coyote won't be forgetting this particular trick anytime soon...";
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	NPCSexAftermath Diego receives "PussyFuck" from Player;
	Coyotify;

to say DiegoSex7: [Diego's pussy fucked - take him/her against the wall]
	if DiegoChanged is 2: [full FemDiego]
		say "     'I thought you would never ask!' the coyote female says with a grin on [PosAdj of Diego] muzzle. 'It seems this trickster's been caught and it's time to punish her,' [SubjectPro of Diego] says in a playful tone as [SubjectPro of Diego] runs [PosAdj of Diego] paws up and down [PosAdj of Diego] changed body. She's obviously becoming more and more excited by the second as [SubjectPro of Diego] turns to face the wall and arches up [PosAdj of Diego] tail to show off [PosAdj of Diego] damp pussy. [SubjectProCap of Diego] rests [PosAdj of Diego] paws against the wall and spreads [PosAdj of Diego] legs as if she's getting arrested. 'You'd best check to make sure I'm not hiding any more tricks,' [SubjectPro of Diego] says with a teasing sway of [PosAdj of Diego] hips. Grinning at [PosAdj of Diego] eager invitation, you waste no time in moving your [bodydesc of Player] body up against hers, pressing [PosAdj of Diego] forward to lean harder against the wall as [SubjectPro of Diego] moans eagerly in need.";
		say "     Grabbing [PosAdj of Diego] between the legs, you rub at [PosAdj of Diego] juicy muff and slip a pair of fingers into her, frigging [PosAdj of Diego] hot cunt quickly. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as [PosAdj of Diego] rear grinds back against you. Already highly aroused by the feeling of [PosAdj of Diego] soft-furred body pressing up against yours and the strong scent of a bitch in heat, you need no further encouragement as you rub your [Cock of Player] rod up against [PosAdj of Diego] crotch. Diego pants eagerly as your tip begins to probe [PosAdj of Diego] soft folds, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and push your cock into her.";
		WaitLineBreak;
		say "     'Oh god yes,' the coyote bitch moans eagerly, shuddering at the feel of your rod inside [PosAdj of Diego] body as [SubjectPro of Diego] clutches you tighter. [PosAdjCap of Diego] needy words make you grin with amusement as you begin to slowly thrust into her. The feel of your cock moving within [PosAdj of Diego] is almost too much for the former male, as [SubjectPro of Diego] groans and yips instinctively in pleasure, [PosAdj of Diego] furred bottom pushing back into each thrust. Diego's body feels wonderful around your cock as you wrap your arms around [PosAdj of Diego] tightly and bang the needy bitch. You move in swift sharp thrusts within [PosAdj of Diego] warm passage, holding on to your tricked trickster.";
		say "     'Yesss, fuck me, make me a proper bitch...' you can hear Diego whispering softly over and over again as you play with [PosAdj of Diego] breasts and tease [PosAdj of Diego] nipples. [PosAdjCap of Diego] needy words only encourage you to pump into [PosAdj of Diego] amazing body even harder. Soon the breathtaking feeling of your cock buried deep inside her, having your way with this horny female, is too much for you to contain anymore. You groan out in pleasure as your [Cock of Player] rod blasts hot seed into your bitch's eager womb. Your cries mingle with [PosAdj of Diego] own bestial howl of ecstasy as the feel of being filled like a proper bitch triggers [PosAdj of Diego] orgasm, [PosAdj of Diego] new instincts obviously victorious over any lingering traces of [PosAdj of Diego] old male personality.";
		WaitLineBreak;
		say "     Coming down from the pleasure of the intense mating, the coyote sags forward against the wall with you still pressed behind [PosAdj of Diego] and buried in [PosAdj of Diego] sticky cunt. [SubjectProCap of Diego] moans happily at being bred. 'Thank you so much,' Diego whispers softly as [PosAdj of Diego] hips continue to grind back against you softly, savoring the feeling of your hot load inside her. 'Thank you for fucking me properly, and thank you for tricking me into becoming a bitch,' [SubjectPro of Diego] says as [SubjectPro of Diego] licks your cheek and rubs [PosAdj of Diego] muzzle against your neck. 'I never realized how much I would love being a bitch. Being your bitch,' the coyote female adds with a grin as the two of you begin to untangle yourselves from each other.";
		say "     Pulling back a little, you run your hands over Diego's rear and down to finger [PosAdj of Diego] fresh-creamed pussy, fingering the sexy coyote to get a few more lovely moans from her. Then you move your hand to [PosAdj of Diego] muzzle and have [PosAdj of Diego] lick your fingers clean. After that's done, you leave [PosAdj of Diego] there, leaning up against the wall as [SubjectPro of Diego] recovers. Somehow you know [SubjectPro of Diego] will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take [PosAdj of Diego] like the prize bitch [SubjectPro of Diego] now is...";
		if DiegoBitched < 2:
			now DiegoBitched is 2;
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the herm eyes your proudly erect cock thoughtfully. You can easily tell though, that while [SubjectPro of Diego] is trying to hide [PosAdj of Diego] excitement, your offer has immediately caused [PosAdj of Diego] new opening to grow damp. Also, [PosAdj of Diego] tail gives [PosAdj of Diego] away by lifting up eagerly behind her, making you grin as you press closer to [PosAdj of Diego] changed body. Reaching out, you stroke [PosAdj of Diego] soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, [PosAdj of Diego] tongue starting to hang out of [PosAdj of Diego] muzzle as the scent of an aroused male speaks to [PosAdj of Diego] new instincts.";
		say "     The coyote herm slowly turns [PosAdj of Diego] back to you, [PosAdj of Diego] tail lifting up in a soft invitation as [SubjectPro of Diego] leans forward and braces herself on the wall, legs spreading out instinctively as [SubjectPro of Diego] positions herself for you. [PosAdjCap of Diego] upturned tail gives you a clear view of [PosAdj of Diego] now wet and swollen coyote pussy, with [PosAdj of Diego] cock dangling erect underneath [PosAdj of Diego] body. You approach to give [PosAdj of Diego] new female parts some much-needed attention by your [Cock of Player] cock. Diego moans as your hands stroke through the soft coyote fur of [PosAdj of Diego] inner thighs, rubbing and teasing [PosAdj of Diego] until [SubjectPro of Diego] raises [PosAdj of Diego] ass up into the air even higher. [PosAdjCap of Diego] coyote head comes to rest up against the wall as you begin to rub the tip of your cock against [PosAdj of Diego] new entrance, enjoying how easily the once tricky coyote is overcome by the needs of [PosAdj of Diego] new body.";
		WaitLineBreak;
		say "     Diego pants eagerly as your tip begins to probe [PosAdj of Diego] soft folds, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and push your cock into her. [PosAdjCap of Diego] soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into [PosAdj of Diego] body, [PosAdj of Diego] passage massaging your cock needily even as you draw back and begin to thrust into [PosAdj of Diego] again. Diego moans and begins to yip as [PosAdj of Diego] new small breasts begin to bounce underneath [PosAdj of Diego] body in time to your thrusts, [PosAdj of Diego] tongue lolling out of [PosAdj of Diego] muzzle as [SubjectPro of Diego] gasps in time with your thrusting.";
		say "     The sensations of having a strong male pumping [if player is herm]their[else]his[end if] rod into her, washing over the coyote herm's lust-fogged mind, make [PosAdj of Diego] react instinctively as [SubjectPro of Diego] thrusts [PosAdj of Diego] hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along [PosAdj of Diego] soft-furred back, before gripping the scruff of [PosAdj of Diego] neck possessively. Moments of hard fucking later, Diego cries out, [PosAdj of Diego] knees locking as [PosAdj of Diego] body shudders in orgasm - causing [PosAdj of Diego] trembling inner muscles to trigger your own. You eagerly spill your seed into [PosAdj of Diego] waiting body, spurt after spurt of your cum filling the coyote herm.";
		WaitLineBreak;
		say "     Eventually, you relax your grip on [PosAdj of Diego] neck, slowly drawing your rod out of [PosAdj of Diego] dripping pussy, even as [PosAdj of Diego] body trembles with the aftershocks of [PosAdj of Diego] intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego slowly drops to [PosAdj of Diego] knees, leaning heavily against the wall to brace herself. In doing so, [SubjectPro of Diego] is leaning right against the splatters of [PosAdj of Diego] own cum on the wall, leaving your freshly-fucked bitch a bit of a mess. You have a feeling that the lovely little coyote won't be forgetting this particular trick anytime soon...";
		if DiegoBitched < 1:
			now DiegoBitched is 1;
	NPCSexAftermath Diego receives "PussyFuck" from Player;
	Coyotify;

to say DiegoSex8: [Diego's ass fucked - lift him and fuck against the wall]
	if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     'I thought you would never ask!' the coyote male says with a grin on [PosAdj of Diego] muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running [PosAdj of Diego] paw-hands over [PosAdj of Diego] changed body, [SubjectPro of Diego] smiles at you and wags [PosAdj of Diego] tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' [SubjectPro of Diego] says teasingly as you approach, spreading [PosAdj of Diego] legs slightly as [SubjectPro of Diego] leans back up against the wall behind him.";
		say "     'Claim your prize then!' [SubjectPro of Diego] says in a half-moan as [SubjectPro of Diego] reaches out one of [PosAdj of Diego] paws to stroke your [Skin of Player] side. Grinning at the eager invitation, you waste no time in moving your body up against [PosAdj of Diego], pinning the coyote to the wall as [SubjectPro of Diego] moans eagerly in need. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as [PosAdj of Diego] arms wrap around you eagerly and [PosAdj of Diego] body rubs against yours.";
		WaitLineBreak;
		say "     Already highly aroused by the feeling of [PosAdj of Diego] sensual body pressing up against yours and the strong scent of a horny stud, you need no further encouragement as you rub your [Cock of Player] rod up against Diego's crotch. [SubjectProCap of Diego] pants eagerly as your tip begins to probe the soft folds, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside him. 'Oh god yes,' the coyote stud moans eagerly, shuddering at the feel of your rod inside [PosAdj of Diego] body. Clutching you tightly and panting out needy words, [SubjectPro of Diego] makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within [ObjectPro of Diego] is almost too much for a guy relatively new to anal sex, making [ObjectPro of Diego] groan and yip instinctively in pleasure. Diego's body feels wonderful around your cock as you press [ObjectPro of Diego] up against the wall, moving in swift sharp thrusts within [PosAdj of Diego] warm passage as [SubjectPro of Diego] clings to your body. 'Yesss, fuck me, make me your cumdump,' you can hear Diego whispering softly over and over again as [SubjectPro of Diego] rests [PosAdj of Diego] head on your shoulder, [PosAdj of Diego] sighs of pleasure encouraging you to pump into [PosAdj of Diego] amazing body even harder.";
		WaitLineBreak;
		say "     Soon the feel of [PosAdj of Diego] body moving up against yours and the amazing feeling of your cock buried deep inside [ObjectPro of Diego] is too much for you, and you cry out as your [Cock of Player] rod begins to spill its potent seed into your butt-slut's hungry hole. Your cries mingle with [PosAdj of Diego] own bestial howl of ecstasy as the feel of being filled like a bitch in heat triggers [PosAdj of Diego] own orgasm, [PosAdj of Diego] new instincts obviously victorious over the lingering traces of [PosAdj of Diego] old more dominant personality.";
		say "     Coming down from the pleasure of the intense mating, the two of you collapse against the wall in a tangle of limbs, [PosAdj of Diego] body still wrapped around yours as [SubjectPro of Diego] moans happily at being bred. 'Thanks. God I needed that,' your canine playmate says with a smile on [PosAdj of Diego] muzzle as [SubjectPro of Diego] rubs [PosAdj of Diego] stomach with [PosAdj of Diego] paws. 'I never imagined anything could feel this good before...' [SubjectPro of Diego] says with a dreamy look on [PosAdj of Diego] muzzle, before blinking and looking at you.";
		WaitLineBreak;
		say "     'I never realized how much I would love being a butt-slut, and yours,' the coyote male says with a grin, as the two of you begin to untangle yourselves from each other. Standing up, you help your newly bred coyote trickster up as well, leaving [ObjectPro of Diego] leaning up against the wall as [SubjectPro of Diego] recovers, and somehow you know [SubjectPro of Diego] will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take [ObjectPro of Diego] like the prize slut [SubjectPro of Diego] now is...";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			add "Mpregnant" to traits of Diego;
			now DiegoButtSlut is 4; [Diego mpregged]
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the male coyote eyes your proudly erect cock thoughtfully. You can easily tell though, that while [SubjectPro of Diego] is trying to hide [PosAdj of Diego] excitement, [SubjectPro of Diego] is getting more and more aroused. The way [PosAdj of Diego] tail twitched up and is slowly wagging behind [PosAdj of Diego] back is a clear sign for that. [SubjectProCap of Diego] even spreads [PosAdj of Diego] legs slightly as [SubjectPro of Diego] leans back up against the wall behind him. You can't help but grin as you press closer to [PosAdj of Diego] lean and athletic body. Reaching out, you stroke [PosAdj of Diego] soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, [PosAdj of Diego] tongue starting to hang out of [PosAdj of Diego] muzzle as the scent of an aroused male speaks to [PosAdj of Diego] new instincts.";
		say "     Already highly aroused by the feeling of [PosAdj of Diego] sensual body pressing up against yours and the scent of horny canine, you need no further encouragement as you rub your [Cock of Player] rod up against Diego's crotch. [SubjectProCap of Diego] pants eagerly as your shaft slides along [PosAdj of Diego] own and you close your hand around both of them, jerking slowly up and down. 'Oh god yes,' the coyote male moans eagerly, humping against your hand a little. After a moment of running your finger teasingly around the tip of [PosAdj of Diego] pointed cock, you push the hard rod up a little and feel for the trickster's balls with your other hand. Diego's family jewels are nice and full in their furry sack, and a little further back from them the real prize you're going for is hidden - the eager and trembling pucker this anthro canine now calls [PosAdj of Diego] own, thanks to your little trick with the orc cum.";
		WaitLineBreak;
		say "     After sliding a finger against Diego's tailstar and finding it easily penetrated, you immediately proceed to hook your hands under [PosAdj of Diego] thighs, lifting the coyote up and pressing [ObjectPro of Diego] against the wall. 'Fuck Yeah,' the coyote trickster moans eagerly, wrapping [PosAdj of Diego] legs around your midriff and holding on to your shoulders - which allows you to use at least one hand to line yourself up with [PosAdj of Diego] asshole. [SubjectProCap of Diego] groans in lust as your tip begins to probe the tight opening, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and sheath yourself inside him. 'Nnngh, you feel so good inside,' the male coyote moans eagerly, shuddering at the feel of your rod inside [PosAdj of Diego] body. Clutching you tightly and panting out needy words, [SubjectPro of Diego] makes you grin with amusement as you begin to slowly thrust in and out.";
		say "     The feel of your cock moving within [ObjectPro of Diego] is almost too much for a guy relatively new to anal sex, as [SubjectPro of Diego] groans and yips instinctively in pleasure, [PosAdj of Diego] furred legs reaching up to wrap around your body and hold you close. Diego's gripping asshole feels wonderful around your cock as you press [ObjectPro of Diego] up against the wall, moving in swift sharp thrusts within [PosAdj of Diego] warm passage as [SubjectPro of Diego] clings to your body. 'Fuck me, fuck me deep,' you can hear Diego whispering softly over and over again as [SubjectPro of Diego] rests [PosAdj of Diego] head on your shoulder, [PosAdj of Diego] sighs of pleasure encouraging you to pump into [PosAdj of Diego] amazing body even harder. You can't help but greatly enjoy how easily the once tricky coyote is overcome by the needs of [PosAdj of Diego] new body.";
		WaitLineBreak;
		say "     The sensations of having a strong male pumping [PosAdj of Diego] rod into him, washing over the coyote stud's lust-fogged mind, make [ObjectPro of Diego] react instinctively as [SubjectPro of Diego] grinds [PosAdj of Diego] ass against your crotch in order to push your rod deeper. With a broad grin on your face, you slide your arms up behind [PosAdj of Diego] soft-furred back, stroking [ObjectPro of Diego] a little before gripping the scruff of [PosAdj of Diego] neck possessively. Moments of hard fucking later, Diego cries out, [PosAdj of Diego] legs wrapping even tighter around you as [PosAdj of Diego] body shudders in orgasm. The hard cock of the male coyote, with a fully swollen knot and all, stands straight up between the two of you and erupts with cum-shot after cum-shot, splattering both of your chests and even your chin with the coyote's load.";
		say "     Meanwhile, Diego's inner muscles tremble and twitch around your erection, creating very pleasurable sensations that trigger your own orgasm mere moments later. You eagerly spill your seed into [PosAdj of Diego] waiting body, spurt after spurt of your cum filling the coyote male. After your spurts of cum eventually taper off, you relax your grip on [PosAdj of Diego] neck, slowly drawing your rod out of [PosAdj of Diego] dripping ass, even as [PosAdj of Diego] body trembles with the aftershocks of [PosAdj of Diego] intense submissive experience. You can feel a grin tugging at your face, as [SubjectPro of Diego] clutches you tightly for a few moments more, then lets himself be lowered to stand on [PosAdj of Diego] own paws. Without your support, Diego has to lean heavily against the wall to keep standing. You have a feeling that the usually so cocky coyote won't be forgetting this particular trick anytime soon...";
		if DiegoButtSlut is 1: [anal OK Diego]
			add "ButtSlut" to Traits of Diego;
			now DiegoButtSlut is 2; [Diego fucked anally by the player]
	NPCSexAftermath Diego receives "AssFuck" from Player;
	Coyotify;

to say DiegoSex9: [Diego's ass fucked - Doggy style]
	if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     'I thought you would never ask!' the coyote male says with a grin on [PosAdj of Diego] muzzle, then adds in a teasing tone, 'After all, the best trickster definitely won.' Running [PosAdj of Diego] paw-hands over [PosAdj of Diego] lean and athletic body, [SubjectPro of Diego] smiles at you and wags [PosAdj of Diego] tail. 'And to the winner goes the prize...' Diego pants out eagerly, obviously becoming more and more excited by the second. 'Don't you think I would make a fine prize for such a good trickster?' With that said, [SubjectPro of Diego] drops down to all fours on the ground before you, [PosAdj of Diego] anthro body making the stance seem pretty natural on him, and very sexy.";
		say "     As you approach, Diego turns [PosAdj of Diego] rear towards you and lifts [PosAdj of Diego] tail eagerly to give you a perfect view of [PosAdj of Diego] trembling tailstar as well as a swinging pair of furry balls and [PosAdj of Diego] hard cock. 'Why don't you claim this little coyote like a proper prize?' [SubjectProCap of Diego] pants out as [SubjectPro of Diego] glances at you over [PosAdj of Diego] shoulder, waving [PosAdj of Diego] ass slightly as [PosAdj of Diego] tail wags eagerly in anticipation. The sight of the formerly dominant coyote on all fours before you as [SubjectPro of Diego] gives in to [PosAdj of Diego] now-submissive instincts makes you smile, and your cock is already hard and ready as you reach out and begin to stroke [PosAdj of Diego] soft fur.";
		WaitLineBreak;
		say "     Grabbing between the coyote's legs, you stroke along the base of [PosAdj of Diego] shaft, where the yet faint bulge of [PosAdj of Diego] knot lies, then give [PosAdj of Diego] furry balls a good grope before moving on too Diego's pucker. After rubbing [PosAdj of Diego] quivering opening for a moment to tease him, you slip a pair of fingers into him, tickling [PosAdj of Diego] prostate gently. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as [PosAdj of Diego] rear grinds back against you.";
		say "     Already highly aroused by the feeling of [PosAdj of Diego] soft-furred body pressing up against yours and the attractive masculine scent of the needy butt-slut, you need no further encouragement as you rub your [Cock of Player] rod up against [PosAdj of Diego] crotch. Diego pants eagerly as your tip begins to probe [PosAdj of Diego] back door, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and push your cock into him.";
		WaitLineBreak;
		say "     'Oh god yes,' the coyote trickster moans eagerly, shuddering at the feel of your rod inside [PosAdj of Diego] body as [SubjectPro of Diego] clutches you tighter. [PosAdjCap of Diego] needy words make you grin with amusement as you begin to slowly thrust into him. The feel of your cock moving within [ObjectPro of Diego] is almost too much for a guy relatively new to anal sex, as [SubjectPro of Diego] groans and yips instinctively in pleasure, [PosAdj of Diego] furred bottom pushing back into each thrust. Diego's body feels wonderful around your cock as you wrap your arms around [ObjectPro of Diego] tightly and bang the needy butt-slut. You move in swift sharp thrusts within [PosAdj of Diego] warm passage, holding on to your tricked trickster.";
		say "     'Yesss, fuck me, make me your cumdump...' you can hear Diego whispering softly over and over again as you reach around to tease [PosAdj of Diego] nipples and play with [PosAdj of Diego] rock-hard cock. [PosAdjCap of Diego] needy words only encourage you to pump into [PosAdj of Diego] amazing body even harder. Soon the breathtaking feeling of your cock buried deep inside him, having your way with this horny male, is too much for you to contain anymore. You groan out in pleasure as your [Cock of Player] rod blasts hot seed into your doggie's receptive asshole. Your cries mingle with [PosAdj of Diego] own bestial howl of ecstasy as the feel of being filled like a bitch in heat triggers [PosAdj of Diego] orgasm.";
		WaitLineBreak;
		say "     While your own manhood still throbs against [PosAdj of Diego] inner walls, depositing more and more cum, Diego splashes [PosAdj of Diego] own canine seed all over the grass [SubjectPro of Diego] is kneeling on. Gasping from the intense orgasm, you hold Diego close for a few minutes, feeling your cock slowly soften inside him, before eventually pulling out of [PosAdj of Diego] eager body and staggering to your feet. Without you inside him, Diego collapses to the ground, lying on the soft grass for a minute, before rolling over and sitting up still panting from the recent exertion.";
		say "     'Thanks. God I needed that,' your canine playmate says with a smile on [PosAdj of Diego] muzzle as [SubjectPro of Diego] rubs [PosAdj of Diego] stomach with [PosAdj of Diego] paws. 'I never imagined anything could feel this good before...' [SubjectPro of Diego] says with a dreamy look on [PosAdj of Diego] muzzle, before blinking and looking at you. [one of]'I think I'm your canine slut now, it just feels... right somehow,' [or]'I love being your canine slut! Please take me anytime you want,' [stopping]Diego says with a smile on [PosAdj of Diego] muzzle as [SubjectPro of Diego] hauls himself up on [PosAdj of Diego] still shaky legs, before reaching out to stroke your cheek with one of [PosAdj of Diego] paws lightly.";
		WaitLineBreak;
		say "     Pushing gently against [PosAdj of Diego] chest to make [ObjectPro of Diego] lie back, you run your hands over Diego's front and crotch, then down between [PosAdj of Diego] legs to finger [PosAdj of Diego] freshly-creamed asshole. As you slip [ObjectPro of Diego] two of your fingers, the sexy coyote lets out a few more lovely moans for you. Then you move your hand to [PosAdj of Diego] muzzle and have [ObjectPro of Diego] lick your fingers clean. After that's done, you give [ObjectPro of Diego] some time, leaning up against the wall as [SubjectPro of Diego] recovers. Somehow you know [SubjectPro of Diego] will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take [ObjectPro of Diego] like the prize slut [SubjectPro of Diego] now is...";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			now DiegoButtSlut is 4; [Diego mpregged]
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the coyote eyes your proudly erect cock thoughtfully. He's trying to keep [PosAdj of Diego] composure, but you can easily tell that the male canine is getting excited by the way [PosAdj of Diego] tail twitched up and is slowly wagging behind [PosAdj of Diego] back. You can't help but grin as you press closer to [PosAdj of Diego] body and reach out, stroking [PosAdj of Diego] soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, [PosAdj of Diego] tongue starting to hang out of [PosAdj of Diego] muzzle as the scent of an aroused male speaks to [PosAdj of Diego] new instincts.";
		say "     The coyote male slowly turns [PosAdj of Diego] back to you, then drops down to all fours on the ground, [PosAdj of Diego] anthro body making the stance seem pretty natural on him, and very sexy. [PosAdjCap of Diego] tail lifts up in a soft invitation as [SubjectPro of Diego] moves to give you a perfect view of [PosAdj of Diego] trembling tailstar as well as a swinging pair of furry balls and [PosAdj of Diego] hard cock. You approach to give [PosAdj of Diego] now much more receptive rear entrance some direly-needed attention by your [Cock of Player] cock. Diego moans as your hands stroke through the soft coyote fur of [PosAdj of Diego] inner thighs, rubbing and teasing him, as well as cupping [PosAdj of Diego] balls, until [SubjectPro of Diego] raises [PosAdj of Diego] ass up into the air even higher.";
		WaitLineBreak;
		say "     The sight of the formerly dominant coyote on all fours before you as [SubjectPro of Diego] gives in to [PosAdj of Diego] submissive instincts makes you smile, and your cock is already fully hard and ready as you rub its tip against [PosAdj of Diego] trembling pucker. It is just so much fun to see how easily the once tricky coyote is overcome by the needs of [PosAdj of Diego] now more receptive body. Diego pants eagerly as your tip begins to probe [PosAdj of Diego] ring of muscle, [PosAdj of Diego] pucker easily stretching as you shift your hips forward and push your cock into the coyote.";
		say "     [PosAdjCap of Diego] soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into [PosAdj of Diego] body, [PosAdj of Diego] inner muscles massaging your cock needily even as you draw back and begin to thrust into [ObjectPro of Diego] again. Diego moans and begins to yip as [PosAdj of Diego] cock begins to swing and bounce in time to your thrusts, [PosAdj of Diego] tongue lolling out of [PosAdj of Diego] muzzle as [SubjectPro of Diego] gasps in time with your thrusting.";
		WaitLineBreak;
		say "     The sensations of having a strong male pumping [PosAdj of Diego] rod in and out of [PosAdj of Diego] tailstar, washing over the coyote stud's lust-fogged mind, make [ObjectPro of Diego] react instinctively as [SubjectPro of Diego] thrusts [PosAdj of Diego] hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along [PosAdj of Diego] soft-furred back, before gripping the scruff of [PosAdj of Diego] neck possessively.";
		say "     Moments of hard fucking later, Diego cries out, [PosAdj of Diego] body shuddering in orgasm - sending long spurts of canine semen to shoot out from [PosAdj of Diego] knotted cock and splash the grass [SubjectPro of Diego] is kneeling on. The squeeze of [PosAdj of Diego] trembling inner muscles around your member triggers your own orgasm just moments later. You eagerly spill your seed into [PosAdj of Diego] waiting body, spurt after spurt of your cum filling the male coyote.";
		WaitLineBreak;
		say "     Eventually, you relax your grip on [PosAdj of Diego] neck, slowly drawing your rod out of [PosAdj of Diego] cream-filled asshole, even as [PosAdj of Diego] body trembles with the aftershocks of [PosAdj of Diego] intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego collapses to the ground, lying on the soft grass for a minute before rolling over and sitting up still panting from the recent exertion. You have a feeling that the usually so cocky coyote won't be forgetting this particular trick anytime soon...";
		if DiegoButtSlut is 1: [anal OK Diego]
			add "ButtSlut" to Traits of Diego;
			now DiegoButtSlut is 2; [Diego fucked anally by the player]
	NPCSexAftermath Diego receives "AssFuck" from Player;
	Coyotify;

to say DiegoSex10: [Diego's ass fucked - against the wall, police style]
	if DiegoButtSlut > 2: [mpreg-able Diego]
		say "     'I thought you would never ask!' the coyote male says with a grin on [PosAdj of Diego] muzzle. 'It seems this trickster's been caught and it's time to punish him,' [SubjectPro of Diego] says in a playful tone as [SubjectPro of Diego] runs [PosAdj of Diego] paws up and down over [PosAdj of Diego] lean and athletic body. He's obviously becoming more and more excited by the second as [SubjectPro of Diego] turns to face the wall and arches up [PosAdj of Diego] tail to show off a pink tailstar trembling in anticipation. [SubjectProCap of Diego] rests [PosAdj of Diego] paws against the wall and spreads [PosAdj of Diego] legs as if he's getting arrested. 'You'd best check to make sure I'm not hiding any more tricks,' [SubjectPro of Diego] says with a teasing sway of [PosAdj of Diego] hips. Grinning at [PosAdj of Diego] eager invitation, you waste no time in moving your [bodydesc of Player] body up against [PosAdj of Diego], pressing [ObjectPro of Diego] forward to lean harder against the wall as [SubjectPro of Diego] moans eagerly in need.";
		say "     Grabbing between the coyote's legs, you stroke along the base of [PosAdj of Diego] shaft, where the yet faint bulge of [PosAdj of Diego] knot lies, then give [PosAdj of Diego] furry balls a good grope before moving on too Diego's pucker. After rubbing [PosAdj of Diego] quivering opening for a moment to tease him, you slip a pair of fingers into him, tickling [PosAdj of Diego] prostate gently. 'God yes, please fuck me, fuck me like a bitch in heat...' Diego moans, panting in lust as [PosAdj of Diego] rear grinds back against you. Already highly aroused by the feeling of [PosAdj of Diego] soft-furred body pressing up against yours and the attractive masculine scent of the needy butt-slut, you need no further encouragement as you rub your [Cock of Player] rod up against [PosAdj of Diego] crotch. Diego pants eagerly as your tip begins to probe [PosAdj of Diego] back door, [PosAdj of Diego] body eagerly spreading itself open before you as you shift your hips forward and push your cock into him.";
		WaitLineBreak;
		say "     'Oh god yes,' the coyote trickster moans eagerly, shuddering at the feel of your rod inside [PosAdj of Diego] body as [SubjectPro of Diego] clutches you tighter. [PosAdjCap of Diego] needy words make you grin with amusement as you begin to slowly thrust into him. The feel of your cock moving within [ObjectPro of Diego] is almost too much for a guy relatively new to anal sex, as [SubjectPro of Diego] groans and yips instinctively in pleasure, [PosAdj of Diego] furred bottom pushing back into each thrust. Diego's body feels wonderful around your cock as you wrap your arms around [ObjectPro of Diego] tightly and bang the needy butt-slut. You move in swift sharp thrusts within [PosAdj of Diego] warm passage, holding on to your tricked trickster.";
		say "     'Yesss, fuck me, make me your cumdump...' you can hear Diego whispering softly over and over again as you reach around to tease [PosAdj of Diego] nipples and play with [PosAdj of Diego] rock-hard cock. [PosAdjCap of Diego] needy words only encourage you to pump into [PosAdj of Diego] amazing body even harder. Soon the breathtaking feeling of your cock buried deep inside him, having your way with this horny male, is too much for you to contain anymore. You groan out in pleasure as your [Cock of Player] rod blasts hot seed into your doggie's receptive asshole. Your cries mingle with [PosAdj of Diego] own bestial howl of ecstasy as the feel of being filled like a bitch in heat triggers [PosAdj of Diego] orgasm.";
		WaitLineBreak;
		say "     Coming down from the pleasure of the intense mating, the coyote sags forward against the wall with you still pressed behind [ObjectPro of Diego] and buried in [PosAdj of Diego] cream-filled asshole. [SubjectProCap of Diego] moans happily at being bred. 'Thank you so much,' Diego whispers softly as [PosAdj of Diego] hips continue to grind back against you, savoring the feeling of your hot load inside him. 'Thank you for fucking me properly, and thank you for tricking me into trying out playing with my butt,' [SubjectPro of Diego] says as [SubjectPro of Diego] licks your cheek and rubs [PosAdj of Diego] muzzle against your neck. 'I never realized how much I would love being fucked. Being your butt-slut,' [SubjectPro of Diego] coyote male adds with a grin as the two of you begin to untangle yourselves from each other.";
		say "     Pulling back a little, you run your hands over Diego's rear and down to finger [PosAdj of Diego] freshly-creamed asshole, fingering the sexy coyote to get a few more lovely moans from him. Then you move your hand to [PosAdj of Diego] muzzle and have [ObjectPro of Diego] lick your fingers clean. After that's done, you give [ObjectPro of Diego] some time, leaning up against the wall as [SubjectPro of Diego] recovers. Somehow you know [SubjectPro of Diego] will be right there waiting eagerly for you whenever you choose to return, willing and eager for you to take [ObjectPro of Diego] like the prize slut [SubjectPro of Diego] now is...";
		if DiegoButtSlut is 3: [Diego mpreg-able]
			now DiegoButtSlut is 4; [Diego mpregged]
	else:
		say "     'Well you know, that is an interesting offer...' Diego says as the coyote eyes your proudly erect cock thoughtfully. He's trying to keep [PosAdj of Diego] composure, but you can easily tell that the male canine is getting excited by the way [PosAdj of Diego] tail twitched up and is slowly wagging behind [PosAdj of Diego] back. You can't help but grin as you press closer to [PosAdj of Diego] body and reach out, stroking [PosAdj of Diego] soft fur teasingly. 'I guess we might as well, I mean, you did trick me fair and square now didn't you...' Diego says in a slightly nervous tone, [PosAdj of Diego] tongue starting to hang out of [PosAdj of Diego] muzzle as the scent of an aroused male speaks to [PosAdj of Diego] new instincts.";
		say "     The coyote male slowly turns [PosAdj of Diego] back to you, [PosAdj of Diego] tail lifting up in a soft invitation as [SubjectPro of Diego] leans forward and braces himself on the wall, legs spreading out instinctively as [SubjectPro of Diego] positions himself for you. [PosAdjCap of Diego] upturned tail gives you a clear view of [PosAdj of Diego] cock and furry balls dangling underneath [PosAdj of Diego] body. You approach to give [PosAdj of Diego] now much more receptive rear entrance some direly-needed attention by your [Cock of Player] cock. Diego moans as your hands stroke through the soft coyote fur of [PosAdj of Diego] inner thighs, rubbing and teasing him, as well as cupping [PosAdj of Diego] balls, until [SubjectPro of Diego] raises [PosAdj of Diego] ass up into the air even higher. [PosAdjCap of Diego] coyote head comes to rest up against the wall as you begin to rub the tip of your cock against [PosAdj of Diego] back door, enjoying how easily the once tricky coyote is overcome by the desire to feel someone in [PosAdj of Diego] sensitive back passage.";
		WaitLineBreak;
		say "     Diego pants eagerly as your tip begins to probe [PosAdj of Diego] ring of muscle, [PosAdj of Diego] pucker easily stretching as you shift your hips forward and push your cock into the coyote. [PosAdjCap of Diego] soft passage grips your rod like a velvet glove, the coyote underneath you gasping in pleasure as you push yourself into [PosAdj of Diego] body, [PosAdj of Diego] inner muscles massaging your cock needily even as you draw back and begin to thrust into [ObjectPro of Diego] again. Diego moans and begins to yip as [PosAdj of Diego] cock begins to swing and bounce in time to your thrusts, [PosAdj of Diego] tongue lolling out of [PosAdj of Diego] muzzle as [SubjectPro of Diego] gasps in time with your thrusting.";
		say "     The sensations of having a strong male pumping [PosAdj of Diego] rod in and out of [PosAdj of Diego] tailstar, washing over the coyote stud's lust-fogged mind, make [ObjectPro of Diego] react instinctively as [SubjectPro of Diego] thrusts [PosAdj of Diego] hips back to meet you. You can't help but grin at the sight of the eager coyote underneath you, then reach one of your hands up to stroke along [PosAdj of Diego] soft-furred back, before gripping the scruff of [PosAdj of Diego] neck possessively. Moments of hard fucking later, Diego cries out, [PosAdj of Diego] knees locking as [PosAdj of Diego] body shudders in orgasm - sending long spurts of canine semen to shoot out from [PosAdj of Diego] knotted cock, splattering the wall [SubjectPro of Diego] is leaning against. The squeeze of [PosAdj of Diego] trembling inner muscles around your member triggers your own orgasm just moments later. You eagerly spill your seed into [PosAdj of Diego] waiting body, spurt after spurt of your cum filling the male coyote.";
		WaitLineBreak;
		say "     Eventually, you relax your grip on [PosAdj of Diego] neck, slowly drawing your rod out of [PosAdj of Diego] cream-filled asshole, even as [PosAdj of Diego] body trembles with the aftershocks of [PosAdj of Diego] intense submissive experience. You can feel a grin tugging at your face, as without your support, Diego slowly drops to [PosAdj of Diego] knees, leaning heavily against the wall to brace himself. In doing so, [SubjectPro of Diego] is leaning right against the splatters of [PosAdj of Diego] own cum on the wall, leaving your freshly-fucked doggie a bit of a mess. You have a feeling that the usually so cocky coyote won't be forgetting this particular trick anytime soon...";
		if DiegoButtSlut is 1: [anal OK Diego]
			add "ButtSlut" to Traits of Diego;
			now DiegoButtSlut is 2; [Diego fucked anally by the player]
	NPCSexAftermath Diego receives "AssFuck" from Player;
	Coyotify;

Section 5 - Events

instead of navigating Park Entrance while (XP of Diego is 0 and PlayerMet of Diego is true and player is not dominant and NonconList is not banned and NonconList is not warded and DiegoChanged is 0 and CoyoteTricks > 4 and a random chance of 1 in 2 succeeds):
	say "[NavCheck Park Entrance]";
	if NavCheckReturn is false, stop the action;
	move player to Park Entrance;
	project the figure of Diego_face_icon;
	say "     Making your way to the entrance of the expansive city park, you find Diego waiting for you, leaning against the boundary wall. The coyote has a sly grin on [PosAdj of Diego] face as [SubjectPro of Diego] waves to you and calls out, 'Hey [if Player is not defaultnamed][name of Player][else]there[end if]! I'd been hoping you'd come by sometime soon my friend.' [SubjectProCap of Diego] glances around for a second, as if to make sure that no one else is listening, then adds in a fairly quiet tone, 'You know, you and I have had quite a bit of fun together, coming up with awesome tricks to play on those stuffy soldiers and all the others out there. Makes me think that it's about time for making our teamwork a bit more of a permanent one. So how about it? Wanna be a part of all my extra special secret plans? Can't share those with just anyone, you know.'";
	say "     [bold type]What's your reply?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure thing. You're all in.";
	say "     ([link]N[as]n[end link]) - Better not, who knows what this devious canine has planned.";
	if Player consents:
		LineBreak;
		say "[DiegoCollarQuest1]";
	else:
		LineBreak;
		say "     As you refuse, Diego lets out a sigh and looks at you with one eyebrow raised. 'You're not getting cold feet on me now, are you? It would be so much fun!' [SubjectProCap of Diego] keeps [PosAdj of Diego] gaze leveled at you for a moment, then shrugs and looks off to the side, trying to not show disappointment on [PosAdj of Diego] face. 'The offer is open, just so you know. Just tell me if you change your mind.'";
		now XP of Diego is 99; [no interest from the player so far]

to say DiegoCollarQuest1:
	say "     As you agree, Diego flashes a beaming smile at you and holds out [PosAdj of Diego] hand for a fist-bump. 'I knew I could count on you! Okay then, now listen closely: There's one special item we need for a really neat thing I've got planned. Problem is, a former friend of mine stole it! You see, up on the upper Westside here, we got some celebrities homes, and [SubjectPro of Diego] was supposed to - bah, that's not important anymore. Anyways, Hunter just blew off the plan and simply moved in there, keeping my special collar. It's an heirloom too, and now the bastard just has [PosAdj of Diego] bitch wearing it all the time.' A low growl escapes Diego's throat and [SubjectPro of Diego] draws [PosAdj of Diego] lips back a little from [PosAdj of Diego] sharp canine teeth. 'Worse, the bastard's a husky and knows my scent, so there's no way [SubjectPro of Diego] wouldn't sniff me out if I went to get the collar back myself.'";
	say "     Looking at you and wiggling [PosAdj of Diego] eyebrows, the coyote adds, 'Good thing I have you now, eh? So, partner, how about you go and grab that collar? Better watch out though, Hunter's a tough guy. You might wanna sneak in at night or something.' After that, your coyote buddy gives you an accurate description of how to navigate from the Grey Abbey Library to the actress Garnet Johnson's villa, where Hunter is holed up now. It's on the west side of the sprawling expanse of this city, and you make a note of the safe route through several dangerous areas that Diego goes into some detail to explain. Time to get started [bold type]Hunting down Hunter[roman type].";
	now XP of Diego is 1;
	now Hunting down Hunter is active;

to say DiegoCollarQuestRefuse:
	say "     As you tell [ObjectPro of Diego] you don't want to do [PosAdj of Diego] plan after all, Diego lets out a sigh and looks at you with one eyebrow raised. 'You're not getting cold feet on me now, are you? It would be so much fun!' [SubjectProCap of Diego] keeps [PosAdj of Diego] gaze leveled at you for a moment, then shrugs and looks off to the side, trying to not show disappointment on [PosAdj of Diego] face. 'The offer is open, just so you know. Just tell me if you change your mind.'";
	now XP of Diego is 99; [player knows of the plan, has no interest]
	now Hunting down Hunter is inactive;



Table of GameEventIDs (continued)
Object	Name
Hunting down Hunter	"Hunting down Hunter"

Hunting down Hunter is a situation.
ResolveFunction of Hunting down Hunter is "[ResolveEvent Hunting down Hunter]".
Hunting down Hunter is inactive. [turned on by taking Diego's quest]
Sarea of Hunting down Hunter is "Outside".

to say ResolveEvent Hunting down Hunter:
	say "     Following Diego's waypoints through the city, you skip around several dens of dangerous creatures and eventually arrive in a high-class neighborhood that holds the homes of the rich and famous. Of course, that doesn't mean the people here were immune to the nanite apocalypse either, as demonstrated by Diego's warning that a whole roost of horny hawkmen is occupying one place down the road from where you're going. Good thing you knew the right direction to approach from. Coming to the right address, you see a tall brick wall enclosing its grounds, the only opening in it held shut by a sturdy wrought-iron gate. A chain holds both wings of the gate shut, connected on the inside by a shiny new padlock. Besides this, numerous empty cans have been tied to the gate, so that if someone wanted to climb the decorative metalwork, they'd make a whole lot of noise. Past the gate, you see a long driveway winding its way through a sprawling green lawn and leading up to a white-painted villa.";
	say "     Recognizing that the front door isn't any place you'd care to try, you're thankful that Diego accounted for this too. Following the wall to the left, you duck around its corner and walk into the brush filling a narrow section of no man's land between this property and the next one over. And right where Diego described is the final help from your coyote buddy: a ladder, hidden from sight by a covering of branches. With it, you have a fairly easy time to climb on top of the wall, then pull the ladder up and set it on the other side to get safely down into the villa's garden. Quietly walking towards the building across its green lawn in the [if daytimer is day]bright sunlight[else]dim light of the moon[end if], you soon reach the decorative bushes planted along its walls. Beyond those, a large window is open all the way, most likely to allow some of the seaside breeze in, now that the power is out and aircon isn't a thing anymore.";
	WaitLineBreak;
	project the Figure of Husky_Bitch_icon;
	say "     Moving closer to the window, you cautiously peer over its windowsill and catch a glimpse of the lavishly furnished room beyond. Millions in Hollywood money sure can buy a lot of nice stuff, and you don't doubt that several designers made a fortune on supplying Garnet Johnson with everything she wanted for her private place. As you recognize the woman on the expansive sofa not too far away from the window, despite the fact that she's now an anthro husky, it becomes clear that her priorities have changed quite a bit these days though. You highly doubt that she'd have let the place become an alpha dog's fuckpad otherwise, or be ";
	if daytimer is day:
		say "on all fours on the cushions, panting in heat as she is being pounded doggy style by a tough-looking male husky. A dark brown leather collar with decorative brass studs along its length is pulled tight around her neck. It looks just like Diego described.";
		say "     [bold type]Looking at Hunter, can't help but wonder if you should maybe avoid a fight with the canine and try this again at night.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Shove aside the doubts and just take on that dog!";
		say "     ([link]N[as]n[end link]) - Let's be smart about this and come back later.";
		if Player consents:
			LineBreak;
			say "     You duck out of sight again and then start to sneak around the house, soon arriving at a spacious veranda, overlooking a large pool in the garden. A sliding glass door stands open, allowing you access to the living room where Hunter and Garnet fucking wildly, so you step inside and move towards the sofa. Before you manage to met more than halfway there, the alpha husky notices you and looks up from his bitch with a scowl on his face. 'What the fuck do you think you're doing here? Garnet and this place are all mine!' He pulls out of her in a swift wrench, leaving the female husky whimpering at the sudden change from being fucked. Then the male husky throws himself at you, eager to fight!";
			say "[VillaFightVsHunter]";
			now Hunting down Hunter is resolved;
		else:
			LineBreak;
			say "     You duck out of sight again and hurry back to the wall, thankfully without drawing any attention to yourself. Going up and over it, you're back on the outside soon after and hide away the ladder, then simply walk away.";
	else: [night]
		say "sleeping curled up to the side of a tough-looking male husky, his dried cum matting the fur between her legs and staining the sofa where it dripped down. A dark brown leather collar with decorative brass studs along its length is pulled tight around her neck.";
		say "     [bold type]Looking at Hunter and his bitch sleeping there, you wonder if you'll be able to sneak in and out without them catching you.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Just do it. They should be deep asleep.";
		say "     ([link]N[as]n[end link]) - Hmm, maybe you should do this another time after all.";
		if Player consents:
			LineBreak;
			say "     You duck out of sight again and then start to sneak around the house, soon arriving at a spacious veranda, overlooking a large pool in the garden. A sliding glass door stands open, allowing you access to the living room where Hunter and Garnet are sleeping, so you step inside and move towards the sofa. Soon, you're standing just a few steps away from the two of them on a quite fluffy faux-fur carpet, your eyes on the prize around the female husky's neck. Holding your breath, you lean over the transformed movie star and gently tug at the fastening of her collar. It is some fiddly work to pull the leather strap open bit by bit, pausing several times as she moves lightly in her sleep, but you eventually pull the leather band off Garnet and clutch it in your hand. Now you just need to get it back to Diego!";
			let bonus be (( Dexterity of Player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Dexterity Check):[line break]";
			if diceroll + bonus >= 18: [success]
				say "     Stepping back from the sleeping couple, your foot lands right on sort of hard object lying hidden on the ground behind you, mostly hidden by the carpet's fluff. Clenching your lips together to not make a sound, even as you windmill your arms franticly to catch your balance, you barely manage to avoid falling down. Glancing at the obstacle that almost ended your sneaky intrusion, you recognize the statuette of a Benny award in the moonlight, a stylized golden man clutching a sword close to his chest. Mumbling a low curse under your breath, you take care to watch out for any other tripping dangers as you slowly sneak out of the room afterwards.";
				say "[DiegoCollarQuestGotCollar]";
				now Resolution of Hunting down Hunter is 4; [sneaked, successful]
			else: [fail]
				say "     Stepping back from the sleeping couple, your foot lands right on sort of hard object lying hidden on the ground behind you, mostly hidden by the carpet's fluff. It slips out from under your foot, causing you to lose your balance in this critical moment, and while you manage to avoid tumbling forwards and landing right on Hunter and Garnet, you fall on your ass instead. Landing on top of the thing you stepped on, it digs a rounded, but still very hard, corner into your thigh, drawing a pained shout from your lips. Wincing, you snatch the item out from under you and raise it into the moonlight, at which point you recognize it as a Benny award, a stylized golden man clutching a sword close to his chest. It is rather sticky and apparently has been used as an improvised sex toy. While you're still staring at the statuette, you hear an aggressive growl from above you, where Hunter is leaning forward and baring his teeth. 'What the fuck do you think you're doing here? Garnet and this place are mine!'";
				say "[VillaFightVsHunter2]";
			now Hunting down Hunter is resolved;
		else:
			LineBreak;
			say "     You duck out of sight again and hurry back to the wall, thankfully without drawing any attention to yourself. Going up and over it, you're back on the outside soon after and hide away the ladder, then simply walk away.";

to say DiegoCollarQuestGotCollar:
	say "     After quickly shoving the collar into your backpack to make sure you don't lose it, you make your way back to the wall. With the ladder, it's easy to get up and over it, and you take care to hide it under the branches once more, just in case Diego might need it again somewhere hereabouts. Then you hurry off down the street, making a successful getaway.";
	ItemGain diego's heirloom collar by 1;
	now XP of Diego is 3; [got the collar sneakily]

to SetHunterHuskyStats:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Husky Alpha":
			now MonsterID is y;
			break;
	choose row MonsterID from the Table of Random Critters;
	now attack entry is "[one of]He leaps forward, snapping and snarling at you.[or]Leaping towards you, he knocks your hands aside, and his canine muzzle lunges forward as he delivers a bite to your forearm![or]He moves to kick your legs out from under you.[or]He sends a blow flying, hitting you in the face.[at random]";
	now HP entry is 100;
	now monsterHP is 100;
	now lev entry is 12;
	now wdam entry is 12;

to ResetAlphaHuskyStats:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Husky Alpha":
			now MonsterID is y;
			break;
	choose row MonsterID from the Table of Random Critters;
	now attack entry is "[one of]He leaps forward, snapping and snarling at you.[or]The husky poses for a minute, the light catching on his perfect, sexy coat of fur and making you stare in awe and lust.[or]Leaping towards you, he knocks your hands aside, and his canine muzzle lunges forward as he kisses you right on the mouth![or]He dances around you playfully, his teasing antics making you forget that you are supposed to be fighting him for a minute.[or]He darts forward and rubs himself up against your body, his arousing scent clinging to your body even as he retreats back out of reach.[or]He stalks forward confidently, his erect cock drawing your gaze as he rubs his paws over your body teasingly.[at random]";
	now HP entry is 50;
	now monsterHP is 50;
	now lev entry is 8;
	now wdam entry is 10;

[
		if HardMode is true and level of Player > 9, let debit be level of Player - 9;
		now HP entry is 69 + ( debit * 5 ); [- How many HP has the monster got? -]
		now monsterHP is 69 + ( debit * 5 );
		now wdam entry is 15 + ( debit / 3 ); [-Amount of Damage monster Does when attacking.-]
		now lev entry is 9 + debit;

		now HP entry is 20 + ( levcalc * 4 );
		now monsterHP is 20 + ( levcalc * 4 );
		now wdam entry is 7 + ( levcalc / 4 );
]

to say VillaFightVsHunter:
	now inasituation is true;
	SetHunterHuskyStats;
	challenge "Husky Alpha";
	ResetAlphaHuskyStats;
	now inasituation is false;
	if fightoutcome < 20: [player won]
		say "     After one last punch, you manage to stun the alpha husky and Hunter crumples to the ground. It actually is quite impressive that he is even still conscious by this point, and you can't help but notice that he's trying to get back to his feet and continue the fight even now. Moving quickly before he manages to get a second wind, you close the distance to the actress transformed into Hunter's bitch, who is still on the sofa, looking wide-eyed at the person who just beat up her master.";
		LineBreak;
		say "     [bold type]You don't have much time. What do you want to do?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Just grab the collar and make a run for it.";
		say "     [link](2)[as]2[end link] - Offer to free her and flee together.";
		say "     [link](3)[as]3[end link] - Just attempt to drag her off to be your slave bitch now.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to get the collar, [link]2[end link] to liberate Garnet or [link]3[end link] to take her as yours.";
		if calcnumber is 1:
			LineBreak;
			say "     The female husky whimpers as you reach out for her, lifting her hands defensively, but you manage to convince her that you're not actually here to hurt her with some hastily said words. She still looks frightened, yet doesn't resist as you put your hands on her collar and undo it quickly. With Diego's prize in your hands, you run out of the building right after that, past Hunter who by now has rolled himself over to get on all fours and is shaking his head to clear it. You don't waste another second and just leg it across the lawn, reaching the ladder standing against the wall in short notice. Rushing up on it quickly, you climb on top of the high brick barrier and reach to pull up the ladder. Then suddenly, you hear a bang from the direction of the villa and a fiery line of pain runs up your leg. Hunter is after you, and he's just grazed you with a rifle shot!";
			say "     You duck reflexively as he sends a follow up bullet your way, which narrowly misses, at the same time as overbalancing you and sending you tumbling off the wall towards the no man's land outside the property. As luck would have it, a big clump of bushes breaks your fall, meaning that you're still able to walk (and run), putting as much distance as possible between yourself and the angry alpha husky. You don't stop fleeing until you're halfway back to where you started from, then start to wind down a little and pack away the collar you had been tightly clutching all this time.";
		else if calcnumber is 2:
			LineBreak;
			say "     Speaking quickly, you tell the beautiful canine woman that she can flee together with you and be free again. Garnet looks at you with a confused expression, then points to Hunter, who just rolled himself over and is trying to stand. 'But, but I'm his! He's my alpha and will breed me like I deserve to be!' the transformed actress whimpers in a somewhat monotonous tone of voice, as if repeating words that were drilled into her again and again. Seems like Hunter was successful in brainwashing her into his obedient bitch, and she doesn't seem to want to get up and follow you. You try to convince her for a few more moments, until Hunter finally shakes off his dizziness and stumbles off into the next room. For a second or two, the woman Garnet once was shines through and her eyes go wide, followed by the warning, 'He's got a rifle near the front door!' Seeing her eyes glaze over again almost instantly, you force yourself to focus on the goal of your mission now instead.";
			say "     Hands scrambling to grab the collar around the husky female's neck, you quickly undo its fastening and then dash out of the room with Diego's prize in hand. As you sprint across the lawn and are just about to reach the wall, you hear the boom of a rifle behind you and see a piece of rock be blasted out of the bricks. Hunter only barely missed you! Rushing up the ladder quickly, you climb on top of the high wall and are just about to pull the ladder up when a fiery line of pain runs up your arm as a follow up bullet grazes your bicep. Wincing from the pain, you lose your balance and fall off the wall. As luck would have it, a big clump of bushes breaks your fall, meaning that you're still able to walk (and run), putting as much distance as possible between yourself and the angry alpha husky. You don't stop fleeing until you're halfway back to where you started from, then start to wind down a little and pack away the collar you had been tightly clutching all this time.";
		else:
			LineBreak;
			say "     In harsh words, you tell the beautiful canine woman that you're her master now and she'll be coming with you. Garnet looks at you with a confused expression, then points to Hunter, who just rolled himself over and is trying to stand. 'But, but I'm his! He's my alpha and will breed me like I deserve to be!' the transformed actress whimpers in a somewhat monotonous tone of voice, as if repeating words that were drilled into her again and again. Seems like Hunter was successful in brainwashing her into his obedient bitch, and she doesn't seem to want to get up and follow you. Not wasting any more time, you just grab her arm and wrench the husky up from the sofa, then pull the struggling canine towards the open sliding door. Distracted as you are by dealing with her, you don't even notice that Hunter gets up and stumbles towards a door deeper into the house. Before he leaves the room, the husky barks to his bitch, 'Keep [ObjectPro of Player] busy till I get the rifle!'";
			say "     With the stakes upped now that you're having to fight Garnet too, and her alpha will soon come back with a firearm, you change plans and just concentrate on your primary goal. After a quick punch that dazes Garnet a little, your hands scramble to grab the collar around the husky female's neck, quickly undoing its fastening. With Diego's prize in hand, you then dash out of the room. As you sprint across the lawn and are just about to reach the wall, you hear the boom of a rifle behind you and see a piece of rock be blasted out of the bricks. Hunter only barely missed you! Rushing up the ladder quickly, you climb on top of the high wall and are just about to pull the ladder up when a fiery line of pain runs up your arm as a follow-up bullet grazes your bicep. Wincing from the pain, you lose your balance and fall off the wall.";
			WaitLineBreak;
			say "     As luck would have it, a big clump of bushes breaks your fall, meaning that you're still able to walk (and run), putting as much distance as possible between yourself and the angry alpha husky. You don't stop fleeing until you're halfway back to where you started from, then start to wind down a little and pack away the collar you had been tightly clutching all this time.";
		ItemGain diego's heirloom collar by 1;
		now Resolution of Hunting down Hunter is 1; [fought, won]
		now XP of Diego is 4; [got the collar after fight]
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		setmonster "Husky Alpha";
		say "     Another punch from the alpha husky makes you sway on your feet, and you can see a grin spreading on the muscular male as he watches you crumple to the ground when the exhaustion of the fight catches up with you. Things go black for a little while, and by the time you manage to blink away the stars dancing before your eyes, you find yourself staring at some gray fur, just an inch in front of your face. You're on your back on a soft surface, the sofa if you're not mistaken, and apparently someone is kneeling over your head, their legs pushing down on your raised arms. Movement of the husky on top of you reveals more fur, matted around a wet pussy, telling you that it is Garnet who is straddling you. Which means that the hands on your legs that are pulling them apart right now are Hunter's. 'Someone came to again, eh? Just in time for the fun!' Something firm and warm smacks against the skin of your crotch, and it's not hard to guess that it is Hunter's erection.";
		if Player is female: [pussy available]
			say "     You can feel the husky rub his dickhead up and down over your nether lips, then pushing in between them with a smooth thrust, sinking himself deep into your body. A helpless moan escapes your lips as you buck up under him, reflex driving you to raise your hips to allow the man to enter you fully. 'Yeah, that's a nice little bitch. Take it!' Hunter grunts roughly as he begins to fuck you in earnest. Meanwhile, Garnet spreads her knees a little bit further, lowering her crotch the rest of the way to literally cover your face. Her heat-scent is thick in your nose and you can't help but start breathing in more and more as Hunter's movements drive your arousal higher with every new thrust. Soon, you're panting like a bitch in heat, which doesn't remain unnoticed by the alpha husky on top of you. He pulls out of your pussy and hammers back into it all the way in a single hard thrust, then barks out, 'Like that, little bitch? Why don't you share some of that pleasure with Garnet. Lick her!'";
			WaitLineBreak;
			say "     In the lusty haze you find yourself in, husky pheromones in your nose and a hard canine shaft inside your body, you can't really imagine why you shouldn't just obey the man on top of you. Opening your mouth, you stick out your tongue and lick Garnet's nether lips, drawing a needy moan from the female husky and causing her to start grinding against your face. Hunter and his obedient bitch enjoy your body for all it is worth after that, taking their pleasure from both ends. You kinda lose track of time for a while, simply being carried along in a haze of arousal and pleasure. At some later point, there is a change in Hunter's rhythm of thrusts, with him slowing down a little as he concentrates on his favorite bitch. 'That's right baby, you like how I've taught you to feel, don't you?' the husky says in a firm tone, and as Garnet gyrates her hips, you catch a glimpse of his hand on her crotch, stroking the woman's clit.";
			say "     'Yes Hunter! I love you, as my alpha and the future daddy of my puppies!' Garnet squeals in reply, giving the desired reply as he rubs her pleasure-button. Chuckling sounds are followed by what you can tell is Garnet bending over forwards, no doubt from her being drawn in to kiss her master. The two huskies eagerly make out with one another while Hunter still strokes and teases her clit, until her pleasure just becomes too much to be contained. A needy whimper gives way to a full-throated moan as she starts to tremble on top of you, and the next lick of your tongue is rewarded by a gush of femcum, trickling warm and sticky over your face and into your open mouth. Seeing his bitch get off apparently makes Hunter's own arousal soar, as the husky soon takes out all the stops and really rails you deep and without a second's rest.";
			WaitLineBreak;
			say "     Horny as this whole ordeal made you, the hard fucking drives you over the edge before much longer, and you thrash under the wildly thrusting man as you climax. Your pussy starts to literally drip with femcum, soaking Hunter's furry balls as the slap against your crotch again and again. [if Player is male]At the same time, your own cock goes almost painfully erect, sticking straight up as it begins to throb, then shoot out long strings of creamy cum. Splatters of it land all over your chest, as well as likely Garnet's naked body too, making the strangely funny thought that you just came on a movie starlet bubble up in your mind. [end if]Focused on your own orgasm as you are, the fact that Hunter's grunts are getting more intense and urgent is completely lost on you, right until the point where he lets out a satisfied bark and grinds his crotch against yours. The bulgy knot at the base of the alpha husky swells up within just a few seconds, locking your bodies together as a deluge of cum begins to blast into you.";
			say "     It almost feels like the husky wants to claim every last part of your insides, his cock going on and on to flood you with more canine seed. The knot keeps it all safely contained within you, preventing any leakage out of your pussy, so by the time his orgasm eventually ebbs, you're quite well-stuffed with cum. Yet despite the fact that you're serving as a receptive cum-dump for the canine male, Hunter doesn't really pay you much attention at all, his focus still being on Garnet, whom he makes out all throughout his orgasm. Even afterwards, when the high of completion has long run out and you're basically just waiting for his knot to go down, the man pays you no mind. Instead, you are a quiet witness of Hunter continuing to work on the transformed actress he claimed as his own, kissing, stroking and touching her, intermixed with repetitive, almost entrancing orders and commands to pay him total obedience.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";
			WaitLineBreak;
			if Humanity of Player > 30: [player is sane enough]
				say "     Despite your exhaustion, you are of ready enough mind to tune out the alpha husky's brainwashing commands. Thinking of everything and anything you can instead, you have to wait through quite a while of him indoctrinating Garnet, up to the point at which his shaft eventually softens enough to slip out of your pussy. Not long after that, both of them get off you and Hunter throws your equipment unceremoniously onto your stretched-out, sticky form. 'You weren't a half bad lay, but I got a really high class bitch to finish training. I'd rather fuck her all day and breed some pups than waste my time with you. Get up, and out!' With that said, the alpha husky rushes you out of the house, towards the ladder you left standing at the boundary wall. He gruffly tells you to climb over the wall, grumbling as you're not quite fast enough to comply.";
				say "     As you reach the top and crouch high on the brick barrier to catch your breath, the man takes hold of the ladder and shoves it right at you, pushing you to tumble off the wall to the other side. You land on top of some bushes, which is a mixed blessing as they soften your fall, yet have a few branches that come close to impaling you. Wounded and hurting, you get back to your feet and flee from the neighborhood. With Hunter now forewarned that someone wants to make a move on him and his bitch, as well as the ladder out of reach, there is pretty much nothing left for you but to return to Diego and admit defeat.";
				PlayerWounded 30;
				now XP of Diego is 98; [lost/fled]
			else:
				say "     Even though you're not the prime target of Hunter's indoctrination, in your current state of exhaustion, still with the shaft of the alpha husky inside your body and his massive load doing its best to impregnate you, his words find fertile ground in your mind. You're his bitch and belong to the alpha, that is made clear to you again and again, until it is engraved into your mind. Then, when the dominant male eventually demands for Garnet to give him his due as her alpha, you join the woman in her refrain of being his. Hunter is somewhat surprised, but nonetheless quite pleased at having yet another obedient bitch to enjoy, and he adds you to his pack.";
				trigger ending "Hunter's Bitch";
				end the story saying "You've given in to being Hunter's bitch. Your future will be filled with being fucked by him and countless husky puppies.";
		else: [no pussy available]
			say "     'A bit lacking in the pussy department,' the alpha husky says in a condescending tone, brushing the tip of his erection against your body, right where a woman's opening would be. 'Gonna make you my bitch, no matter what. And a few loads might just transform you into a real too!' There is a bit of an odd slurping sound as he gathers some saliva, then lets it drip onto his shaft, followed by rubbing the slick dickhead up and down over your pucker. The horny male presses in against your muscle soon after, relentlessly overwhelming its try to keep him out and forcing your passage to stretch around his girth. A helpless groan escapes your lips as you buck up under him, with the try to escape the invading member doing nothing more but give Hunter an easier angle to thrust. He clamps his hands tightly on your legs, holding you firm in just that position, then quickly rams the rest of his length home.";
			say "     'Yeah, take it you bastard! Thought you could move in on my bitch and me, didn't you? Tough luck, now you're just another slut I'll have as hard as I want!' Hunter grunts roughly as he begins to fuck you in a fast rhythm. Meanwhile, Garnet spreads her knees a little bit further, lowering her crotch the rest of the way to literally cover your face. Her heat-scent is thick in your nose and you can't help but start breathing in more and more as Hunter's movements drive your arousal higher with every new thrust. Soon, you're panting like a bitch in heat, which doesn't remain unnoticed by the alpha husky on top of you. He pulls out of your ass and hammers back into it all the way in a single hard thrust, then barks out, 'Like that, asshole? Why don't you share some of your pleasure with Garnet. Lick her!'";
			WaitLineBreak;
			say "     In the lusty haze you find yourself in, husky pheromones in your nose and a hard canine shaft inside your body, you can't really imagine why you shouldn't just obey the man on top of you. Opening your mouth, you stick out your tongue and lick Garnet's nether lips, drawing a needy moan from the female husky and causing her to start grinding against your face. Hunter and his obedient bitch enjoy your body for all it is worth after that, taking their pleasure from both ends. You kinda lose track of time for a while, simply being carried along in a haze of arousal and pleasure. At some later point, there is a change in Hunter's rhythm of thrusts, with him slowing down a little as he concentrates on his favorite bitch. 'That's right baby, you like how I've taught you to feel, don't you?' the husky says in a firm tone, and as Garnet gyrates her hips, you catch a glimpse of his hand on her crotch, stroking the woman's clit.";
			say "     'Yes Hunter! I love you, as my alpha and the future daddy of my puppies!' Garnet squeals in reply, giving the desired reply as he rubs her pleasure-button. Chuckling sounds are followed by what you can tell is Garnet bending over forwards, no doubt from her being drawn in to kiss her master. The two huskies eagerly make out with one another while Hunter still strokes and teases her clit, until her pleasure just becomes too much to be contained. A needy whimper gives way to a full-throated moan as she starts to tremble on top of you, and the next lick of your tongue is rewarded by a gush of femcum, trickling warm and sticky over your face and into your open mouth. Seeing his bitch get off apparently makes Hunter's own arousal soar, as the husky soon takes out all the stops and really rails you deep and without a second's rest.";
			WaitLineBreak;
			say "     Horny as this whole ordeal made you, the hard fucking drives you over the edge before much longer, and you thrash under the wildly thrusting man as you climax. [if Player is male]Your own cock goes almost painfully erect, sticking straight up as it begins to throb, then shoot out long strings of creamy cum. Splatters of it land all over your chest, as well as likely Garnet's naked body too, making the strangely funny thought that you just came on a movie starlet bubble up in your mind. [else]Your body tingles with pleasure that has no real outlet, simply coursing along your nerves and making you twitch and tremble helplessly in your genderless state. [end if]Focused on your own orgasm as you are, the fact that Hunter's grunts are getting more intense and urgent is completely lost on you, right until the point where he lets out a satisfied bark and grinds his crotch against your ass. The bulgy knot at the base of the alpha husky swells up within just a few seconds, locking your bodies together as a deluge of cum begins to blast into you.";
			say "     It almost feels like the husky wants to claim every last part of your insides, his cock going on and on to flood you with more canine seed. The knot keeps it all safely contained within you, preventing any leakage out of your asshole, so by the time his orgasm eventually ebbs, you're quite well-stuffed with cum. Yet despite the fact that you're serving as a receptive cum-dump for the canine male, Hunter doesn't really pay you much attention at all, his focus still being on Garnet, whom he makes out all throughout his orgasm. Even afterwards, when the high of completion has long run out and you're basically just waiting for his knot to go down, the man pays you no mind. Instead, you are a quiet witness of Hunter continuing to work on the transformed actress he claimed as his own, kissing, stroking and touching her, intermixed with repetitive, almost entrancing orders and commands to pay him total obedience.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
			WaitLineBreak;
			if Humanity of Player > 30: [player is sane enough]
				say "     Despite your exhaustion, you are of ready enough mind to tune out the alpha husky's brainwashing commands. Thinking of everything and anything you can instead, you have to wait through quite a while of him indoctrinating Garnet, up to the point at which his shaft eventually softens enough to slip out of your well-bred asshole. Not long after that, both of them get off you and Hunter throws your equipment unceremoniously onto your stretched-out, sticky form. 'I'm half minded to keep working on you till you're a nice and subby bitch, but then... why go through the trouble if I have the most beautiful husky of all here already. I'd rather fuck her all day and breed some pups than waste my time with you. Get up, and out!' With that said, the alpha husky rushes you out of the house, towards the ladder you left standing at the boundary wall. He gruffly tells you to climb over the wall, grumbling as you're not quite fast enough to comply.";
				say "     As you reach the top and crouch high on the brick barrier to catch your breath, the man takes hold of the ladder and shoves it right at you, pushing you to tumble off the wall to the other side. You land on top of some bushes, which is a mixed blessing as they soften your fall, yet have a few branches that come close to impaling you. Wounded and hurting, you get back to your feet and flee from the neighborhood. With Hunter now forewarned that someone wants to make a move on him and his bitch, as well as the ladder out of reach, there is pretty much nothing left for you but to return to Diego and admit defeat.";
				PlayerWounded 30;
				now XP of Diego is 98; [lost/fled]
			else:
				say "     Even though you're not the prime target of Hunter's indoctrination, in your current state of exhaustion, still with the shaft of the alpha husky inside your body and his massive load squishing around in your chute, the husky's words find fertile ground in your mind. You're his bitch and belong to the alpha, that is made clear to you again and again, until it is engraved into your mind. Then, when the dominant male eventually demands for Garnet to give him his due as her alpha, you join the woman in her refrain of being his. Hunter is somewhat surprised, but nonetheless quite pleased at having yet another obedient bitch to enjoy, and he adds you to his pack.";
				trigger ending "Hunter's Bitch";
				end the story saying "You've given in to being Hunter's bitch. Your future will be filled with being fucked by him until you're an actual female and can give him countless husky puppies.";
		now Resolution of Hunting down Hunter is 2; [fought, lost]
	else if fightoutcome is 30: [fled]
		say "     You abandon the fight, taking your legs under your arms as you run from the villa. Hunter is quick to set after you, growling and barking as he chases you over the lawn. He catches up right as you are halfway up the ladder and tries to wrench you off it, but a swift kick to the face sends him reeling so you manage to get on top of the wall. That's where your luck ends though, as the guy grabs hold of the ladder when he gains his bearing again and thrusts it at you, sending you tumbling off the other side. You land on top of some bushes, which is a mixed blessing as they soften your fall, yet have a few branches that come close to impaling you. Wounded and hurting, you get back to your feet and flee from the neighborhood.";
		say "     With Hunter now forewarned that someone wants to make a move on him and his bitch, as well as the ladder out of reach, there is pretty much nothing left for you but to return to Diego and admit defeat.";
		PlayerWounded 30;
		now Resolution of Hunting down Hunter is 3; [fought, fled]
		now XP of Diego is 98; [lost/fled]

to say VillaFightVsHunter2:
	now inasituation is true;
	SetHunterHuskyStats;
	challenge "Husky Alpha";
	ResetAlphaHuskyStats;
	now inasituation is false;
	if fightoutcome < 20: [player won]
		say "     After one last punch, you manage to stun the alpha husky and Hunter crumples to the ground. It actually is quite impressive that he is even still conscious by this point, and you can't help but notice that he's trying to get back to his feet and continue the fight even now. The actress that he transformed into his bitch actually crouches down next to him, making crooning noises as she checks if her Master is okay. Clearly, he's made her his in mind as well as body, with the woman being completely focused on him now.";
		LineBreak;
		say "     [bold type]You don't have much time. What do you want to do?[roman type][line break]";
		say "     [link](1)[as]1[end link] - You've got the collar, just make a run for it!";
		say "     [link](2)[as]2[end link] - Offer to free her and flee together.";
		say "     [link](3)[as]3[end link] - Just grab her and drag her off to be your slave bitch now.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to run with the collar, [link]2[end link] to liberate Garnet or [link]3[end link] to take her as yours.";
		if calcnumber is 1:
			LineBreak;
			say "     Clutching your prize in hand, you run out of the building, past Hunter who is starting to shake his head to clear it by now. You don't waste another second and just leg it across the lawn, reaching the ladder standing against the wall in short notice. Rushing up on it quickly, you climb on top of the high brick barrier and reach to pull up the ladder. Then suddenly, you hear a bang from the direction of the villa and a fiery line of pain runs up your leg. Hunter is after you, and he's just grazed you with a rifle shot! You duck reflexively as he sends a follow up bullet your way, which narrowly misses, at the same time as overbalancing you and sending you tumbling off the wall towards the no man's land outside the property. As luck would have it, a big clump of bushes breaks your fall, meaning that you're still able to walk (and run), putting as much distance as possible between yourself and the angry alpha husky. You don't stop fleeing until you're halfway back to where you started from, then start to wind down a little and pack away the collar you had in your hand all this time.";
		else if calcnumber is 2:
			LineBreak;
			say "     Speaking quickly, you tell the beautiful canine woman that she can flee together with you and be free again. Garnet looks at you with a confused expression, then points to Hunter, who just rolled himself over and is trying to stand. 'But, but I'm his! He's my alpha and will breed me like I deserve to be!' the transformed actress whimpers in a somewhat monotonous tone of voice, as if repeating words that were drilled into her again and again. Seems like Hunter was successful in brainwashing her into his obedient bitch, and she doesn't seem to want to get up and follow you. You try to convince her for a few more moments, until Hunter finally shakes off his dizziness and stumbles off into the next room. For a second or two, the woman Garnet once was shines through and her eyes go wide, followed by the warning, 'He's got a rifle near the front door!' Seeing her eyes glaze over again almost instantly, you force yourself to focus on the goal of your mission.";
			say "     Abandoning the husky bitch, you dash out of the room with Diego's prize in hand. As you sprint across the lawn and are just about to reach the wall, you hear the boom of a rifle behind you and see a piece of rock be blasted out of the bricks. Hunter only barely missed you! Rushing up the ladder quickly, you climb on top of the high wall and are just about to pull the ladder up when a fiery line of pain runs up your arm as a follow up bullet grazes your bicep. Wincing from the pain, you lose your balance and fall off the wall. As luck would have it, a big clump of bushes breaks your fall, meaning that you're still able to walk (and run), putting as much distance as possible between yourself and the angry alpha husky. You don't stop fleeing until you're halfway back to where you started from, then start to wind down a little and pack away the collar you had been tightly clutching all this time.";
		else:
			LineBreak;
			say "     In harsh words, you tell the beautiful canine woman that you're her master now and she'll be coming with you. Garnet looks at you with a confused expression, then points to Hunter, who just rolled himself over and is trying to stand. 'But, but I'm his! He's my alpha and will breed me like I deserve to be!' the transformed actress whimpers in a somewhat monotonous tone of voice, as if repeating words that were drilled into her again and again. Seems like Hunter was successful in brainwashing her into his obedient bitch, and she doesn't seem to want to get up and follow you. Not wasting any more time, you just grab her arm and wrench the husky up from the sofa, then pull the struggling canine towards the open sliding door. Distracted as you are by dealing with her, you don't even notice that Hunter gets up and stumbles towards a door deeper into the house. Before he leaves the room, the husky barks to his bitch, 'Keep [ObjectPro of Player] busy till I get the rifle!'";
			say "     With the stakes upped now that you're having to fight Garnet too, and her alpha will soon come back with a firearm, you change plans and just concentrate on your primary goal. Shoving Garnet back as she tries to grab your leg, you dash out of the room. As you sprint across the lawn and are just about to reach the wall, you hear the boom of a rifle behind you and see a piece of rock be blasted out of the bricks. Hunter only barely missed you! Rushing up the ladder quickly, you climb on top of the high wall and are just about to pull the ladder up when a fiery line of pain runs up your arm as a follow-up bullet grazes your bicep. Wincing from the pain, you lose your balance and fall off the wall.";
			WaitLineBreak;
			say "     As luck would have it, a big clump of bushes breaks your fall, meaning that you're still able to walk (and run), putting as much distance as possible between yourself and the angry alpha husky. You don't stop fleeing until you're halfway back to where you started from, then start to wind down a little and pack away the collar you had been tightly clutching all this time.";
		PlayerWounded 10;
		ItemGain diego's heirloom collar by 1;
		now Resolution of Hunting down Hunter is 1; [fought, won]
		now XP of Diego is 4; [got the collar after fight]
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		setmonster "Husky Alpha";
		say "     Another punch from the alpha husky makes you sway on your feet, and you can see a grin spreading on the muscular male's face. He knows he's won, but he won't make it easy for you and finish you off quickly. Instead, Hunter waits for you to - almost - catch your balance again, then moves in and gives you a back-handed slap that sends you stumbling against a wall. Being able to brace against that prevents you from falling down, though that is a small comfort as a strong hand grips you by the back of your neck a second later, wedging your face against the hard surface. 'Thought you could just come in here and take what's mine, you fucker? Stupid doesn't even begin to describe that idea!' he scoffs in a harsh tone, then hits you in the side, sending a flare of pain radiating through your chest.";
		say "     Wrenching you back by the neck, the husky laughs as you stumble through the room again, barely able to stay upright now. 'Look at this baby!' Hunter calls over to his bitch in amusement, 'What an ace catburglar, eh?' The transformed movie-star giggles dutifully at his harsh sport, with Hunter circling you and either flinging degrading insults or light blows and jabs to keep you off-balance. With your head starting to feel like it's stuffed with cotton, you have no idea how long the martyrium lasts, but eventually your last reserves finally run out and you crumple to the ground. The blackness of being passed out is a welcome haven, if a temporary one. When you come to again, blinking away the stars dancing before your eyes, you find yourself staring at some gray fur, just an inch in front of your face.";
		WaitLineBreak;
		say "     You're on your back on a soft surface, the sofa if you're not mistaken, and apparently someone is kneeling over your head, their legs pushing down on your raised arms. Movement of the husky on top of you reveals more fur, matted around a wet pussy, telling you that it is Garnet who is straddling you. Which means that the hands on your legs that are pulling them apart right now are Hunter's. 'Someone came to again, eh? Just in time for the fun!' Something firm and warm smacks against the skin of your crotch, and it's not hard to guess that it is Hunter's erection. 'Since you're a total shit at your other job, let's see if you at least can serve as a proper fuckhole! It can be fun to pound worthless bitches, who cares if you wreck em after all!";
		if Player is female: [pussy available]
			say "     You can feel the husky rub his dickhead up and down over your nether lips, then pushing in between them with a smooth thrust, sinking himself deep into your body. A helpless moan escapes your lips as you buck up under him, reflex driving you to raise your hips to allow the man to enter you fully. 'Yeah, that's a nice little bitch. Take it!' Hunter grunts roughly as he begins to fuck you in earnest. Meanwhile, Garnet spreads her knees a little bit further, lowering her crotch the rest of the way to literally cover your face. Her heat-scent is thick in your nose and you can't help but start breathing in more and more as Hunter's movements drive your arousal higher with every new thrust. Soon, you're panting like a bitch in heat, which doesn't remain unnoticed by the alpha husky on top of you. He pulls out of your pussy and hammers back into it all the way in a single hard thrust, then barks out, 'Like that, little bitch? Why don't you share some of that pleasure with Garnet. Lick her!'";
			WaitLineBreak;
			say "     In the lusty haze you find yourself in, husky pheromones in your nose and a hard canine shaft inside your body, you can't really imagine why you shouldn't just obey the man on top of you. Opening your mouth, you stick out your tongue and lick Garnet's nether lips, drawing a needy moan from the female husky and causing her to start grinding against your face. Hunter and his obedient bitch enjoy your body for all it is worth after that, taking their pleasure from both ends. You kinda lose track of time for a while, simply being carried along in a haze of arousal and pleasure. At some later point, there is a change in Hunter's rhythm of thrusts, with him slowing down a little as he concentrates on his favorite bitch. 'That's right baby, you like how I've taught you to feel, don't you?' the husky says in a firm tone, and as Garnet gyrates her hips, you catch a glimpse of his hand on her crotch, stroking the woman's clit.";
			say "     'Yes Hunter! I love you, as my alpha and the future daddy of my puppies!' Garnet squeals in reply, giving the desired reply as he rubs her pleasure-button. Chuckling sounds are followed by what you can tell is Garnet bending over forwards, no doubt from her being drawn in to kiss her master. The two huskies eagerly make out with one another while Hunter still strokes and teases her clit, until her pleasure just becomes too much to be contained. A needy whimper gives way to a full-throated moan as she starts to tremble on top of you, and the next lick of your tongue is rewarded by a gush of femcum, trickling warm and sticky over your face and into your open mouth. Seeing his bitch get off apparently makes Hunter's own arousal soar, as the husky soon takes out all the stops and really rails you deep and without a second's rest.";
			WaitLineBreak;
			say "     Horny as this whole ordeal made you, the hard fucking drives you over the edge before much longer, and you thrash under the wildly thrusting man as you climax. Your pussy starts to literally drip with femcum, soaking Hunter's furry balls as the slap against your crotch again and again. [if Player is male]At the same time, your own cock goes almost painfully erect, sticking straight up as it begins to throb, then shoot out long strings of creamy cum. Splatters of it land all over your chest, as well as likely Garnet's naked body too, making the strangely funny thought that you just came on a movie starlet bubble up in your mind. [end if]Focused on your own orgasm as you are, the fact that Hunter's grunts are getting more intense and urgent is completely lost on you, right until the point where he lets out a satisfied bark and grinds his crotch against yours. The bulgy knot at the base of the alpha husky swells up within just a few seconds, locking your bodies together as a deluge of cum begins to blast into you.";
			say "     It almost feels like the husky wants to claim every last part of your insides, his cock going on and on to flood you with more canine seed. The knot keeps it all safely contained within you, preventing any leakage out of your pussy, so by the time his orgasm eventually ebbs, you're quite well-stuffed with cum. Yet despite the fact that you're serving as a receptive cum-dump for the canine male, Hunter doesn't really pay you much attention at all, his focus still being on Garnet, whom he makes out all throughout his orgasm. Even afterwards, when the high of completion has long run out and you're basically just waiting for his knot to go down, the man pays you no mind. Instead, you are a quiet witness of Hunter continuing to work on the transformed actress he claimed as his own, kissing, stroking and touching her, intermixed with repetitive, almost entrancing orders and commands to pay him total obedience.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";
			WaitLineBreak;
			if Humanity of Player > 30: [player is sane enough]
				say "     Despite your exhaustion, you are of ready enough mind to tune out the alpha husky's brainwashing commands. Thinking of everything and anything you can instead, you have to wait through quite a while of him indoctrinating Garnet, up to the point at which his shaft eventually softens enough to slip out of your pussy. Not long after that, both of them get off you and Hunter throws your equipment unceremoniously onto your stretched-out, sticky form. 'You weren't a half bad lay, but I got a really high class bitch to finish training. I'd rather fuck her all day and breed some pups than waste my time with you. Get up, and out!' With that said, the alpha husky laughs as you get up and start to stumble to the door, aching all over. He's not done with his cruel sport after all though, as the next thing you feel his foot-paw on your rump, giving you a kick that sends you sprawling on the floor!";
				say "     Laughing, Hunter follows you and keeps giving you light shoves with his paw, all the while jeering, 'I said get out, you worthless bitch. Too stupid to pot one foot in front of the other, eh?' You're on your knees, collecting your stuff when you realize that among the fallen items is the prize of your mission here - the collar that Diego sent you to get. You grab for it, only to have it wrenched out of your hand. 'You wanted this so badly, so you should wear it! Show the world just how much of a slut you are!' ";
				ItemGain diego's heirloom collar by 1 silently;
				let OtherCollarPresent be false;
				repeat with z running through equipped equipment:
					if slot of z is "neck":
						now z is not equipped;
						now OtherCollarPresent is true;
				if OtherCollarPresent is true:
					say "With that said, he impatiently wrenches off what you are already wearing around your neck and lays the leather band there instead, pulling it closed tightly as he fastens the buckle. A strange sensation washes over you as Hunter pulls his hands away. The collar feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever. 'I'll have to get Garnet a new one, diamond-studded maybe,' the husky says to himself in a thoughtful tone.";
				else:
					say "With that said, he lays the leather band around your neck, pulling it closed tightly as he fastens the buckle. A strange sensation washes over you as Hunter pulls his hands away. The collar feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever. 'I'll have to get Garnet a new one, diamond-studded maybe,' the husky says to himself in a thoughtful tone.";
				now diego's heirloom collar is equipped;
				WaitLineBreak;
				say "     Hunter continues to harass you all the way to the ladder you left standing at the boundary wall. He gruffly commands that you climb over the wall, grumbling as you're not quite fast enough to comply. As you reach the top and crouch high on the brick barrier to catch your breath, the man takes hold of the ladder and shoves it right at you, pushing you to tumble off the wall to the other side. You land on top of some bushes, which is a mixed blessing as they soften your fall, yet have a few branches that come close to impaling you. Wounded and hurting, you get back to your feet and flee from the neighborhood. Only when you have gained some distance do you stop and reach up to your throat, feeling over the collar that you've obtained for Diego. Not quite in the way originally planned, but you've got it at least.";
				PlayerWounded 30;
				now XP of Diego is 6; [got the collar after fight, even though the player lost]
			else:
				say "     Even though you're not the prime target of Hunter's indoctrination, in your current state of exhaustion, still with the shaft of the alpha husky inside your body and his massive load doing its best to impregnate you, his words find fertile ground in your mind. You're his bitch and belong to the alpha, that is made clear to you again and again, until it is engraved into your mind. Then, when the dominant male eventually demands for Garnet to give him his due as her alpha, you join the woman in her refrain of being his. Hunter is somewhat surprised, but nonetheless quite pleased at having yet another obedient bitch to enjoy, and he adds you to his pack.";
				trigger ending "Hunter's Bitch";
				end the story saying "You've given in to being Hunter's bitch. Your future will be filled with being fucked by him and countless husky puppies.";
		else: [no pussy available]
			say "     'A bit lacking in the pussy department,' the alpha husky says in a condescending tone, brushing the tip of his erection against your body, right where a woman's opening would be. 'Gonna make you my bitch, no matter what. And a few loads might just transform you into a real too!' There is a bit of an odd slurping sound as he gathers some saliva, then lets it drip onto his shaft, followed by rubbing the slick dickhead up and down over your pucker. The horny male presses in against your muscle soon after, relentlessly overwhelming its try to keep him out and forcing your passage to stretch around his girth. A helpless groan escapes your lips as you buck up under him, with the try to escape the invading member doing nothing more but give Hunter an easier angle to thrust. He clamps his hands tightly on your legs, holding you firm in just that position, then quickly rams the rest of his length home.";
			say "     'Yeah, take it you bastard! Thought you could move in on my bitch and me, didn't you? Tough luck, now you're just another slut I'll have as hard as I want!' Hunter grunts roughly as he begins to fuck you in a fast rhythm. Meanwhile, Garnet spreads her knees a little bit further, lowering her crotch the rest of the way to literally cover your face. Her heat-scent is thick in your nose and you can't help but start breathing in more and more as Hunter's movements drive your arousal higher with every new thrust. Soon, you're panting like a bitch in heat, which doesn't remain unnoticed by the alpha husky on top of you. He pulls out of your ass and hammers back into it all the way in a single hard thrust, then barks out, 'Like that, asshole? Why don't you share some of your pleasure with Garnet. Lick her!'";
			WaitLineBreak;
			say "     In the lusty haze you find yourself in, husky pheromones in your nose and a hard canine shaft inside your body, you can't really imagine why you shouldn't just obey the man on top of you. Opening your mouth, you stick out your tongue and lick Garnet's nether lips, drawing a needy moan from the female husky and causing her to start grinding against your face. Hunter and his obedient bitch enjoy your body for all it is worth after that, taking their pleasure from both ends. You kinda lose track of time for a while, simply being carried along in a haze of arousal and pleasure. At some later point, there is a change in Hunter's rhythm of thrusts, with him slowing down a little as he concentrates on his favorite bitch. 'That's right baby, you like how I've taught you to feel, don't you?' the husky says in a firm tone, and as Garnet gyrates her hips, you catch a glimpse of his hand on her crotch, stroking the woman's clit.";
			say "     'Yes Hunter! I love you, as my alpha and the future daddy of my puppies!' Garnet squeals in reply, giving the desired reply as he rubs her pleasure-button. Chuckling sounds are followed by what you can tell is Garnet bending over forwards, no doubt from her being drawn in to kiss her master. The two huskies eagerly make out with one another while Hunter still strokes and teases her clit, until her pleasure just becomes too much to be contained. A needy whimper gives way to a full-throated moan as she starts to tremble on top of you, and the next lick of your tongue is rewarded by a gush of femcum, trickling warm and sticky over your face and into your open mouth. Seeing his bitch get off apparently makes Hunter's own arousal soar, as the husky soon takes out all the stops and really rails you deep and without a second's rest.";
			WaitLineBreak;
			say "     Horny as this whole ordeal made you, the hard fucking drives you over the edge before much longer, and you thrash under the wildly thrusting man as you climax. [if Player is male]Your own cock goes almost painfully erect, sticking straight up as it begins to throb, then shoot out long strings of creamy cum. Splatters of it land all over your chest, as well as likely Garnet's naked body too, making the strangely funny thought that you just came on a movie starlet bubble up in your mind. [else]Your body tingles with pleasure that has no real outlet, simply coursing along your nerves and making you twitch and tremble helplessly in your genderless state. [end if]Focused on your own orgasm as you are, the fact that Hunter's grunts are getting more intense and urgent is completely lost on you, right until the point where he lets out a satisfied bark and grinds his crotch against your ass. The bulgy knot at the base of the alpha husky swells up within just a few seconds, locking your bodies together as a deluge of cum begins to blast into you.";
			say "     It almost feels like the husky wants to claim every last part of your insides, his cock going on and on to flood you with more canine seed. The knot keeps it all safely contained within you, preventing any leakage out of your asshole, so by the time his orgasm eventually ebbs, you're quite well-stuffed with cum. Yet despite the fact that you're serving as a receptive cum-dump for the canine male, Hunter doesn't really pay you much attention at all, his focus still being on Garnet, whom he makes out all throughout his orgasm. Even afterwards, when the high of completion has long run out and you're basically just waiting for his knot to go down, the man pays you no mind. Instead, you are a quiet witness of Hunter continuing to work on the transformed actress he claimed as his own, kissing, stroking and touching her, intermixed with repetitive, almost entrancing orders and commands to pay him total obedience.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
			WaitLineBreak;
			if Humanity of Player > 30: [player is sane enough]
				say "     Despite your exhaustion, you are of ready enough mind to tune out the alpha husky's brainwashing commands. TThinking of everything and anything you can instead, you have to wait through quite a while of him indoctrinating Garnet, up to the point at which his shaft eventually softens enough to slip out of your well-bred asshole. Not long after that, both of them get off you and Hunter throws your equipment unceremoniously onto your stretched-out, sticky form. 'I'm half minded to keep working on you till you're a nice and subby bitch, but then... why go through the trouble if I have the most beautiful husky of all here already. I'd rather fuck her all day and breed some pups than waste my time with you. Get up, and out!' With that said, the alpha husky laughs as you get up and start to stumble to the door, aching all over. He's not done with his cruel sport after all though, as the next thing you feel his foot-paw on your rump, giving you a kick that sends you sprawling on the floor!";
				say "     Laughing, Hunter follows you and keeps giving you light shoves with his paw, all the while jeering, 'I said get out, you worthless bitch. Too stupid to pot one foot in front of the other, eh?' You're on your knees, collecting your stuff when you realize that among the fallen items is the prize of your mission here - the collar that Diego sent you to get. You grab for it, only to have it wrenched out of your hand. 'You wanted this so badly, so you should wear it! Show the world just how much of a slut you are!' ";
				ItemGain diego's heirloom collar by 1 silently;
				let OtherCollarPresent be false;
				repeat with z running through equipped equipment:
					if slot of z is "neck":
						now z is not equipped;
						now OtherCollarPresent is true;
				if OtherCollarPresent is true:
					say "With that said, he impatiently wrenches off what you are already wearing around your neck and lays the leather band there instead, pulling it closed tightly as he fastens the buckle. A strange sensation washes over you as Hunter pulls his hands away. The collar feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever. 'I'll have to get Garnet a new one, diamond-studded maybe,' the husky says to himself in a thoughtful tone.";
				else:
					say "With that said, he lays the leather band around your neck, pulling it closed tightly as he fastens the buckle. A strange sensation washes over you as Hunter pulls his hands away. The collar feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever. Thoughts of submission and obedience begin to swirl in the back of your mind, ready to come to the forefront at the slightest demand. 'I'll have to get Garnet a new one, diamond-studded maybe,' the husky says to himself in a thoughtful tone, never realizing in what a susceptible state you are right now.";
				now diego's heirloom collar is equipped;
				WaitLineBreak;
				say "     Hunter continues to harass you all the way to the ladder you left standing at the boundary wall. He gruffly commands that you climb over the wall, grumbling as you're not quite fast enough to comply. As you reach the top and crouch high on the brick barrier to catch your breath, the man takes hold of the ladder and shoves it right at you, pushing you to tumble off the wall to the other side. You land on top of some bushes, which is a mixed blessing as they soften your fall, yet have a few branches that come close to impaling you. Wounded and hurting, you get back to your feet and flee from the neighborhood. Only when you have gained some distance do you stop and reach up to your throat, feeling over the collar that you've obtained for Diego. Not quite in the way originally planned, but you've got it at least.";
				PlayerWounded 30;
				now XP of Diego is 6; [got the collar after fight, even though the player lost]
			else:
				say "     Even though you're not the prime target of Hunter's indoctrination, in your current state of exhaustion, still with the shaft of the alpha husky inside your body and his massive load squishing around in your chute, the husky's words find fertile ground in your mind. You're his bitch and belong to the alpha, that is made clear to you again and again, until it is engraved into your mind. But then, when his shaft eventually softens enough to slip out of your well-bred asshole, all the husky does is grabbing your equipment unceremoniously throwing it onto your stretched-out, sticky form. 'I'm half minded to keep working on you till you're a nice and subby bitch, but then... why go through the trouble if I have the most beautiful husky of all here already. Get up, and out!' Confusion at being shoved away like this by the man you belong to gives way to blind obedience, as it's not your place to think, just to obey.";
				say "     With that said, the alpha husky laughs as you scramble to obey, getting up and starting to stumble to the door, aching all over. He's not done with his cruel sport though, as the next thing you feel his foot-paw on your rump, giving you a kick that sends you sprawling on the floor! Laughing, Hunter follows you and keeps giving you light shoves with his paw, all the while jeering, 'I said get out, you worthless bitch. Too stupid to pot one foot in front of the other, eh?' You're on your knees, collecting your stuff when you realize that among the fallen items is the prize of your mission here - the collar that Diego sent you to get. You grab for it, only to have it wrenched out of your hand. 'You wanted this so badly, so you should wear it!' ";
				ItemGain diego's heirloom collar by 1 silently;
				let OtherCollarPresent be false;
				repeat with z running through equipped equipment:
					if slot of z is "neck":
						now z is not equipped;
						now OtherCollarPresent is true;
				if OtherCollarPresent is true:
					say "With that said, he impatiently wrenches off what you are already wearing around your neck and lays the leather band there instead, pulling it closed tightly as he fastens the buckle.";
				else:
					say "With that said, he lays the leather band around your neck, pulling it closed tightly as he fastens the buckle.";
				now diego's heirloom collar is equipped;
				say "     A strange sensation washes over you as Hunter pulls his hands away. The collar feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever. The thoughts of submission and obedience in your mind grow and spread, pushing aside other needs and desires. You focus on his every word and fear starts to spread in your mind at the possibility of being sent away, making you whimper quietly. 'What? Don't you want the world to see just how much of a slut you are? That's what you wanted it for, didn't you?' His demand draws the truth from you and without any conscious choice to do so, words start to spill from your moth, laying out the details of Diego's task. 'Oh? So you're a stupid fuck that fell for the silver-tongued bastard? Hah, still up to his old tricks I see. But why would he make you do this? Try to fetch the collar to get you in trouble. It's not like he can easily watch the 'fun' here, and Diego's usually one to closely enjoy the chaos he spreads.'";
				say "     With a thoughtful expression on his face, Hunter looks at you, then taps the leather band around your neck. 'Wait a minute! I thought he just wanted me to put this on Garnet to infect her, but...' A chuckle bursts from the depth of his throat and he gives you a cruel grin. 'Let's try this out. Roll over! Wave your legs in the air!' You find yourself obeying his commands straight away, like a trained dog, with the thought of not following them not even coming up. 'Okay then, stand up. Now run straight until I tell you to stop.' Moving forward, you dash through the movie star's large living room. Yet as big as the villa is, there are limits to just how big one room can be, and before long, the far wall is approaching quickly. Hunter watches you go with a smile, never countermanding his order until the point at which you face-plant against the wall and bounce off to fall to the ground, dazed.";
				WaitLineBreak;
				say "     Coming to stand over you, the husky alpha grins widely. 'Maybe you've got some worth after all, with that collar on you. Makes me wonder if it does more than just fuck with your head. Garnet did transform pretty quickly when she had it on too.' Crouching down, the muscular man slaps you in the face while grunting, 'Look at me, slut! I don't like anyone but me having balls in my house. Get rid of that unsightly cock so you can become a true bitch!' A whimper escapes your lips as you feel your [cock of Player] shaft shrink slowly, along with your testicles. It's far from instantaneous, giving Hunter the opportunity to laugh and deride you for your 'tiny dick' and him saying that you clearly were never meant to be male, if the shaft vanishes so easily. The gradual recession of your sexual organ continues right until there is nothing left but a smooth, unblemished expanse on your pelvis and a wave of twitching and shaking spreads through your body as it fully ceases to be male.";
				say "     'That's better!' Hunter chuckles, giving you a tap on the crotch with his paw-hand. 'Now we've just get your new plumbing sorted out. Got just the right thing to mold it around!' With that said, the strong canine moves around to kneel between your legs, lifting and spreading them to open the way for his hips, his canine cock leading the way. Grabbing his shaft with one hand, he rubs it over your sexless crotch and leaves a trail of pre-cum, then looks up to meet your gaze. 'Come on bitch! Grow a pussy for me! I'm waiting!' Your body bucks under the man as your insides seem to shift a little bit, followed by a much increased sensation of wetness for you down at your crotch, as the newly opening folds of your pussy get his slick dickhead rubbed over them. 'About time,' Hunter says harshly as he lines himself up, then thrusts in forcefully, taking your seconds-old virginity with a grunt.";
				WaitLineBreak;
				say "     The experience of suddenly having a pussy and instantly being filled by such a long, thick and virile male throws your mind into a loop, rearranging your worldview and making it clear that this is your true purpose. Sure, you'd have served Hunter before, but now you're truly becoming one of his bitches, your pussy literally molded to the size of his cock! As he ravages the warm, vet vise of your virginal sex, your quick, breathless moans become higher in pitch with every moment. Soon, you're panting like a bitch in heat, greatly enjoying the delicious canine cock pushing into your aroused cunt, sliding all the way to the knot in the gripping, dripping chalice. 'Yeah, that's more like it!' Hunter grunts while grinding himself against your crotch. 'Now all you need is a bit prettier face[if Nipple Count of Player < 3], some more breasts[end if] and a bellyful of my puppies! Shouldn't be a problem, with you being so very 'receptive', eh?'";
				say "     A flush of warmth spreads through your body, emanating at your crotch as you hear Hunter's words, combined with a flare-up of arousal that has you wrap your arms and legs around the husky on top of you, clinging tightly to him as he pounds into you. Nuzzling his muzzle against the crook of your neck as he keeps fucking with deep thrusts, you feel Hunter's tongue lick you, followed by him grunting into your ear, 'You'll be mine forever!' With that statement, he hammers in all the way one last time, burying the length of his manhood inside your body as it starts to throb, flooding your newly formed womb with his potent seed.' Your arousal skyrockets right along with his and femcum gushes around his thrusting shaft as you feel spurt after spurt of cum being pumped into you. There is no doubt at all in your mind that he's knocked you up with this deep breeding, just as is his right as master of a female plaything.";
				trigger ending "Hunter's Bitch";
				now Cock Count of Player is 0;
				now Cunt Count of Player is 1;
				end the story saying "You've given in to being Hunter's bitch. Your future will be filled with servicing his sexual needs and giving birth to countless husky puppies.";
		now Resolution of Hunting down Hunter is 2; [fought, lost]
	else if fightoutcome is 30: [fled]
		say "     You abandon the fight, taking your legs under your arms as you run from the villa. Hunter is quick to set after you, growling and barking as he chases you over the lawn. He catches up right as you are halfway up the ladder and tries to wrench you off it, but a swift kick to the face sends him reeling so you manage to get on top of the wall. That's where your luck ends though, as the guy grabs hold of the ladder when he gains his bearing again and thrusts it at you, sending you tumbling off the other side. You land on top of some bushes, which is a mixed blessing as they soften your fall, yet have a few branches that come close to impaling you. Wounded and hurting, you get back to your feet and flee from the neighborhood. At least you still have the collar, as you never let go of it even during the fight and flight. Time to return to Diego and hand it over to him.";
		PlayerWounded 30;
		ItemGain diego's heirloom collar by 1;
		now Resolution of Hunting down Hunter is 5; [fought, fled]
		now XP of Diego is 5; [tried to get the collar sneakily, then ran off in the fight]


Table of Game Objects (continued)
name	desc	weight	object
"diego's heirloom collar"	"[DCollarDesc]"	1	diego's heirloom collar

diego's heirloom collar is a grab object.
Usedesc of diego's heirloom collar is "[DCollarUse]".
It is not temporary.

diego's heirloom collar is a grab object.
diego's heirloom collar is equipment.
diego's heirloom collar is cursed.
It is not temporary.
The printed name of diego's heirloom collar is "Diego's heirloom collar".
Plural of diego's heirloom collar is false.
Taur-compatible of diego's heirloom collar is true.
The size of diego's heirloom collar is 0.
The AC of diego's heirloom collar is 0.
The effectiveness of diego's heirloom collar is 0.
The placement of diego's heirloom collar is "neck".
The descmod of diego's heirloom collar is "A sturdy leather collar with shiny brass studs on it is fastened tightly around your neck. You feel like you never want to take it off again.".
The slot of diego's heirloom collar is "neck".

to say DCollarDesc:
	say "     You take the time to check out Diego's prized heirloom a little closer. The collar consists of a sturdy leather band decorated with round brass studs on the outside, shiny in the middle and with some fine detail etched around their rims. Flipping the band around, you see two bands of what looks like occult symbols on the inside surface, worked into the leather in gold paint. No wonder that Diego wants such a fancy thing back.";
	if Player is submissive:
		let OtherCollarPresent be false;
		repeat with z running through equipped equipment:
			if slot of z is "neck":
				now z is not equipped;
				now OtherCollarPresent is true;
		if OtherCollarPresent is true:
			say "     Looking at the collar, you can't help but wonder how it would feel to have it on. Surely [SubjectPro of Diego] won't mind if you try it on for just a little while, right? Quickly taking off what you already have on, you lift the leather band to your neck and fasten it, nice and tight. It feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever.";
		else:
			say "     Looking at the collar, you can't help but wonder how it would feel to have it on. Surely [SubjectPro of Diego] won't mind if you try it on for just a little while, right? Lifting the leather band to your neck, you fasten it, nice and tight. It feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever.";
		now diego's heirloom collar is equipped;

instead of sniffing diego's heirloom collar:
	say "     The collar smells like leather.";

to say DCollarUse:
	if diego's heirloom collar is equipped:
		say "     You raise your hands and touch the leather collar around your neck, feeling around for its buckle. Yet even as you do so, the idea of how good the strap feels on your skin grows in your mind, together with the acceptance and need of having something nicely tight and proper around your neck. Your wish to be rid of it weakens by the second, and before you've done anything more than pulling a bit at the fastening, you've fully changed your mind. Fingers idly stroking along the symbol of submission around your neck, you can barely even remember why you wanted to take it off.";
	else:
		repeat with z running through equipped equipment:
			if slot of z is "neck":
				say "     [bold type]Your [z] is in the way![roman type][line break]";
				continue the action;
		say "     Looking at the collar, you can't help but wonder how it would feel to have it on. Surely Diego won't mind if you try it on for just a little while, right? Lifting the leather band to your neck, you fasten it, nice and tight. It feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever.";
		now diego's heirloom collar is equipped;
		add "Diego's Bitch" to Traits of Player;

instead of navigating Park Entrance while (XP of Diego is 98 or (XP of Diego > 2 and XP of Diego < 7)):
	say "[NavCheck Park Entrance]";
	if NavCheckReturn is false, stop the action;
	move player to Park Entrance;
	project the figure of Diego_face_icon;
	say "     As you arrive at the park, Diego's ears perk up and [SubjectPro of Diego] glances expectantly in your direction. Tail wagging hopefully, the coyote saunters your way, then pauses for a second as [SubjectPro of Diego] sees ";
	if XP of Diego is 6 and diego's heirloom collar is equipped: [Hunter put the collar on the player]
		say "the collar around your neck. Then a wide grin starts spreading over [PosAdj of Diego] muzzle. You explain that Hunter kinda kicked your ass and then put the collar on you. Rather than show sympathy with your pain, Diego chuckles openly, then says, 'And [SubjectPro of Diego] just let you go after? Hah, Hunter never was the brightest tool in the shed!'";
		say "[DiegoCollarWearingAftermath]";
	else if XP of Diego is 6:
		say "your tense expression grin. You explain that Hunter put it on you before [SubjectPro of Diego] chased you away and that you had a hell of a time getting it off. Diego seems puzzled at your words and asks, [bold type]'How the fuck did you get rid of the collar? That's supposed to be impossible! Please report what you did on the FS Discord!'[roman type][line break]";
		now XP of Diego is 97; [player lost the collar somehow?]
	else if diego's heirloom collar is equipped:
		say "the collar around your neck. Then a wide grin starts spreading over [PosAdj of Diego] muzzle. You explain that you kinda wanted to try out how it feels around your neck, and that you didn't really feel like taking it off ever since. Diego chuckles at your words and says, 'You're just aching to please, aren't you? This is working out even better than I thought!'";
		say "[DiegoCollarWearingAftermath]";
	else if XP of Diego is 3 and diego's heirloom collar is owned:
		say "your sly grin. [SubjectProCap of Diego] chuckles heartily at the tale of how you stole the precious item from right under Hunter's nose, with the sleeping husky none the wiser. An eager gleam starts to fill [PosAdj of Diego] eyes when you pull the collar out of your pack during your report, and [SubjectPro of Diego] accepts [PosAdj of Diego] property back with a broad smile on [PosAdj of Diego] face.";
		say "[DiegoCollarDeliveryAftermath]";
	else if XP of Diego is 3:
		say "your sly grin. [SubjectProCap of Diego] chuckles heartily at the tale of how you stole the precious item from right under Hunter's nose, with the sleeping husky none the wiser. An eager gleam starts to fill [PosAdj of Diego] eyes, and the coyote's hands raise up a bit, ready to accept the collar from you. Things get a little awkward as you have to admit to [ObjectPro of Diego] that you don't actually have the collar along right now, with the coyote barking impatiently, 'What are you waiting for then? Go get it from where you've stashed it and bring it here!'";
	else if XP of Diego is 4 and diego's heirloom collar is owned:
		say "your confident grin. [SubjectProCap of Diego] gives a respectful nod at the tale of how you beat Hunter and took the collar as your prize. An eager gleam starts to fill [PosAdj of Diego] eyes when you pull the collar out of your pack during your report, and [SubjectPro of Diego] accepts [PosAdj of Diego] property back with a broad smile on [PosAdj of Diego] face.";
		say "[DiegoCollarDeliveryAftermath]";
	else if XP of Diego is 4:
		say "your confident grin. [SubjectProCap of Diego] gives a respectful nod at the tale of how you beat Hunter and took the collar as your prize. An eager gleam starts to fill [PosAdj of Diego] eyes, and the coyote's hands raise up a bit, ready to accept the collar from you. Things get a little awkward as you have to admit to [ObjectPro of Diego] that you don't actually have the collar along right now, with the coyote barking impatiently, 'What are you waiting for then? Go get it from where you've stashed it and bring it here!'";
	else if XP of Diego is 5 and diego's heirloom collar is owned:
		say "your sly grin. [SubjectProCap of Diego] gives a chuckle nod at the tale of how you managed to get your hands on the collar and ran off before Hunter could catch you. An eager gleam starts to fill [PosAdj of Diego] eyes when you pull the collar out of your pack during your report, and [SubjectPro of Diego] accepts [PosAdj of Diego] property back with a broad smile on [PosAdj of Diego] face.";
		say "[DiegoCollarDeliveryAftermath]";
	else if XP of Diego is 5:
		say "your sly grin. [SubjectProCap of Diego] gives a chuckle nod at the tale of how you managed to get your hands on the collar and ran off before Hunter could catch you. An eager gleam starts to fill [PosAdj of Diego] eyes, and the coyote's hands raise up a bit, ready to accept the collar from you. Things get a little awkward as you have to admit to [ObjectPro of Diego] that you don't actually have the collar along right now, with the coyote barking impatiently, 'What are you waiting for then? Go get it from where you've stashed it and bring it here!'";
	else if XP of Diego is 98: [fail]
		say "the grimace on your face. With the beating tail freezing in motion and [PosAdj of Diego] ears drooping, the anthro canine asks, 'What happened?' [SubjectProCap of Diego] sighs in disappointment as you recount your trip to the villa and how things with Hunter turned out. Diego is clearly less than pleased at this development and you can see [ObjectPro of Diego] start to strain [PosAdj of Diego] devious mind for another plan of getting [PosAdj of Diego] heirloom back, but even the crafty trickster shakes [PosAdj of Diego] head after a little while and throws [PosAdj of Diego] hands up. 'Damn, no that won't work either. With Hunter forewarned and ready now, I don't think we'll be able to get the collar at all.' [SubjectProCap of Diego] looks glum and frustrated, grimacing as if [SubjectPro of Diego] had a bad taste in [PosAdj of Diego] mouth. Diego gives you half-hearted thanks for trying, then wanders off into the park, seemingly wanting to put [PosAdj of Diego] mind on something else for the moment.";
		now XP of Diego is 100; [Quest failed]

to say DiegoCollarWearingAftermath:
	say "     Sauntering around you with [PosAdj of Diego] tail exuberantly wagging left and right, Diego strokes a fingertip along the outside of the band of leather around your neck. 'You see, that's a very special collar indeed. It's tradition to trick the wearer into putting it on, but other ways work too of course. But I won't let you guess any longer what it does now. Let me demonstrate: Bark for me!' Without a thought to do so, you find yourself barking on command, with some of them being a bit strangled-sounding as you try to talk, but nothing except more canine noises escape your throat. 'That's enough, quiet now,' Diego adds with a grin, instantly shutting you up. 'The collar makes the wearer obey, completely. Not anyone of course, only the one they know 'owns' it, and them. And thanks to your help my friend, that's me again!' Tracing [PosAdj of Diego] hand down your front, [SubjectPro of Diego] adds, 'This'll be so much fun! Oh, don't worry, I'll leave you be yourself mostly. But you'll help me when I need you, no questions asked! The tricks we'll be able to play, hah!'";
	say "     'But first, there's something else you can do for me[if player is not naked]! Strip!' Instantly obeying the command, you quickly peel all clothing and gear off your body, then come to stand naked in front of him. [else]! Let's have a look at you!' [end if]Diego lets [PosAdj of Diego] gaze wander over your body, smiling as [SubjectPro of Diego] moves forward to stroke you here and there. 'Oh yeah, you'll be a really fun sidekick to have!' ";
	if DiegoChanged > 0: [Diego got transformed away from male - let's fix that now]
		say "Chuckling, the coyote pulls out a little vial from somewhere and adds, 'But before that, let's end the little bit of playing around we've been doing and set things as they should again!' With that, he downs the off-white liquid inside, grinning broadly as his previous male form is restored in but a moment or two. ";
		SetMalePronouns for Diego;
		now DiegoChanged is 0; [back to male]
		now DiegoBitched is 0; [reset the fem sex variable]
	if Player is male:
		say "Then [PosAdj of Diego] hand moves down to cup your crotch, giving your manhood a testing squeeze. 'That'll have to go though, I'm afraid. I much prefer a nice bitch to figuring out what to do with two dicks in the mix! Now be a good puppy and make this thing vanish, will you?' A paw-hand pressing down lightly on your shoulder indicates that both of the things [SubjectPro of Diego] said were a command, and you sink down on all fours, presenting yourself in doggy-style position while a strange tingle starts to spread over your crotch. Kneeling behind you and resting a hand on your ass as [SubjectPro of Diego] leans down to watch the transformation, Diego chuckles amusedly.";
		WaitLineBreak;
		if Player is herm: [already has a pussy]
			say "     You feel your [CockSpeciesName of player in lower case] shaft and orbs gradually recede, shrinking back down until there's nothing to be seen of them, leaving just your pussy behind on your crotch. Diego snakes a hand between your legs, stroking your sex and the skin around it. The way that even a light touch makes you gasp a little makes you realize that all the nerve endings of your cock are still there, just rearranged and added to what was already there. [SubjectProCap of Diego] laughs as [PosAdj of Diego] touch and a little rubbing gets you hot and bothered, panting in arousal and raising your rear a bit more instinctively. 'Get ready for my dick, be a good bitch now,' Diego commands in sly amusement, tracing a claw-tipped finger over your clit and circling it, which makes you go wet and dripping in mere moments. 'You'll be a fine trickster too, just the bitch a man needs!' [SubjectPro of Diego] adds, dipping [PosAdj of Diego] finger between your folds and making you shiver in pleasure, then tense a little as [SubjectPro of Diego] presses inside you.";
			say "     'You were a nice enough buddy to team up with, but this is even better!' the coyote comments, followed by the sensation of something wet brushing against your nether lips, twitching a little as [SubjectPro of Diego] takes a deep sniff. 'Ah, the scent of a hot pussy, nothing compares to that!' [PosAdjCap of Diego] nose is replaced by a licking tongue a second later, teasing your clit and tracing the outline of your folds and making shivers of arousal run up and down your spine. The coyote proceeds to get into a much closer position behind you, aligning [PosAdj of Diego] knotted erection with your entrance. [PosAdjCap of Diego] fingers splay out on the curve of your rear as [PosAdj of Diego] claws dig lightly into your skin, getting a good grip to hold you by. With a sure, confident motion, [SubjectPro of Diego] then pushes past your welcoming folds. Going deep, [SubjectPro of Diego] spreads the warm, vet vise of your pussy around [PosAdj of Diego] erection, making you feel very good and filled.";
		else:
			say "     You feel your [CockSpeciesName of player in lower case] shaft and orbs gradually recede, shrinking back down until there's nothing to be seen of them but the smooth, unblemished expanse of your pelvis. Diego snakes a hand between your legs, stroking your sexless crotch and making your realize that all the nerve endings are still there, just rearranged and without any outwards indication of their presence. [SubjectProCap of Diego] laughs as [PosAdj of Diego] touch and a little rubbing gets you hot and bothered, panting in arousal and raising your rear a bit more instinctively. 'Get ready for my dick, be a good bitch now,' Diego commands in sly amusement, tracing a claw-tipped finger over the spot where a second later, a new wet opening forms, already slick and slippery for him, with your juices dripping onto the ground. 'You'll be a fine trickster too, just the bitch a man needs!' [SubjectPro of Diego] adds, dipping [PosAdj of Diego] finger between your folds and making you shiver in pleasure, then tense a little as [SubjectPro of Diego] presses against what must be a newly-formed hymen.";
			say "     'You were a nice enough buddy to team up with, but this is even better!' the coyote comments, followed by the sensation of something wet brushing against your nether lips, twitching a little as [SubjectPro of Diego] takes a deep sniff. 'Ah, the scent of a fresh pussy, nothing compares to that!' [PosAdjCap of Diego] nose is replaced by a licking tongue a second later, teasing your clit and tracing the outline of your folds and making shivers of arousal run up and down your spine. The coyote proceeds to get into a much closer position behind you, aligning [PosAdj of Diego] knotted erection with your entrance. [PosAdjCap of Diego] fingers splay out on the curve of your rear as [PosAdj of Diego] claws dig lightly into your skin, getting a good grip to hold you by. With a sure, confident motion, [SubjectPro of Diego] then pushes past your welcoming folds and takes your virginity. Going deep, [SubjectPro of Diego] spreads the warm, vet vise of your virginal pussy around [PosAdj of Diego] erection, making you feel very good and filled.";
		WaitLineBreak;
		say "     As the trickster starts to fuck you in a steady rhythm, your low moans at being penetrated gradually become higher in pitch with every new thrust of [PosAdj of Diego], proceeding to make you more of a female bit by bit. [SubjectProCap of Diego] loves pushing [PosAdj of Diego] length into your increasingly aroused cunt, sliding all the way to the knot in the gripping, dripping chalice. You can't help but pant hotly as you feel the coyote's wet tongue brush over your nape, followed by a more primal shudder as [PosAdj of Diego] teeth lightly nip at your bared neck. Somehow, this physical show of dominance has an even bigger effect than [ObjectPro of Diego] entering you with [PosAdj of Diego] erection, instilling deep instincts of submission and belonging as your mind adjusts to be new female plaything. After a moment, [SubjectPro of Diego] lets go of your nape again, nuzzling [PosAdj of Diego] muzzle against the crook of your neck as [SubjectPro of Diego] keeps fucking with deep thrusts. You feel Diego's tongue lick you, followed by [ObjectPro of Diego] grunting into your ear, 'Getting kinda close babe!'";
		say "     You know just how to react to that, flexing your internal muscles around the coyote's shaft and making [ObjectPro of Diego] groan in lust. 'Now that's what I call a good bitch!' [SubjectPro of Diego] howls in arousal, taking out all the stops and really pounding into you now, soon burying the full length of [PosAdj of Diego] manhood inside your body one last time as it starts to throb, flooding your depths with [PosAdj of Diego] potent seed.' Your arousal skyrockets right along with [PosAdj of Diego] and femcum gushes around [PosAdj of Diego] thrusting shaft as you feel spurt after spurt of cum being pumped into you. The feeling of tightness increases as [PosAdj of Diego] knot swells up to lock [PosAdj of Diego] dick and cum inside your pussy, making sure you'll be soaking in [PosAdj of Diego] load for some time to come. As Diego and yourself sink down on the ground, connected by the hip, [SubjectPro of Diego] proceeds to whisper more commands in your ear, intending to make sure that you stay a proper little plaything for the future too.";
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 8;
		now Cunt Tightness of Player is 1;
		now Cock Count of Player is 0;
		now Cock Length of Player is 0;
		now Ball Size of Player is 0;
		if "Male Preferred" is listed in Feats of Player:
			FeatLoss "Male Preferred";
		if "Herm Preferred" is listed in Feats of Player:
			FeatLoss "Herm Preferred";
		FeatGain "Female Preferred";
		FeatGain "Always A Pussy";
		TraitGain "Male_Player_Collared" for Diego; [memory point to let him remember that the player was a male before]
	else if player is female:
		say "Then [PosAdj of Diego] hand moves down to your crotch, stroking over your nether lips. 'Very nice. Now be a good puppy and get into position, will you?' A paw-hand pressing down lightly on your shoulder guides you to sink down on all fours, presenting yourself in doggy-style position. Kneeling behind you and resting a hand on your ass as [SubjectPro of Diego] leans down to sniff your crotch, Diego chuckles amusedly.";
		WaitLineBreak;
		say "     'You were a nice enough helper to team up with, but this is even better!' the coyote comments, followed by the sensation of something wet brushing against your nether lips, twitching a little as [SubjectPro of Diego] takes a deep sniff. 'Ah, the scent of a hot pussy, nothing compares to that!' [PosAdjCap of Diego] nose is replaced by a licking tongue a second later, teasing your clit and tracing the outline of your folds and making shivers of arousal run up and down your spine. The coyote proceeds to get into a much closer position behind you, aligning [PosAdj of Diego] knotted erection with your entrance. [PosAdjCap of Diego] fingers splay out on the curve of your rear as [PosAdj of Diego] claws dig lightly into your skin, getting a good grip to hold you by. With a sure, confident motion, [SubjectPro of Diego] then pushes past your welcoming folds. Going deep, [SubjectPro of Diego] spreads the warm, vet vise of your pussy around [PosAdj of Diego] erection, making you feel very good and filled.";
		say "     As the trickster starts to fuck you in a steady rhythm, your low moans at being penetrated gradually become higher in pitch with every new thrust of [PosAdj of Diego], proceeding to make you more of a female bit by bit. [SubjectProCap of Diego] loves pushing [PosAdj of Diego] length into your increasingly aroused cunt, sliding all the way to the knot in the gripping, dripping chalice. You can't help but pant hotly as you feel the coyote's wet tongue brush over your nape, followed by a more primal shudder as [PosAdj of Diego] teeth lightly nip at your bared neck. Somehow, this physical show of dominance has an even bigger effect than [ObjectPro of Diego] entering you with [PosAdj of Diego] erection, instilling deep instincts of submission and belonging as your mind adjusts to be new female plaything. After a moment, [SubjectPro of Diego] lets go of your nape again, nuzzling [PosAdj of Diego] muzzle against the crook of your neck as [SubjectPro of Diego] keeps fucking with deep thrusts. You feel Diego's tongue lick you, followed by [ObjectPro of Diego] grunting into your ear, 'Getting kinda close babe!'";
		WaitLineBreak;
		say "     You know just how to react to that, flexing your internal muscles around the coyote's shaft and making [ObjectPro of Diego] groan in lust. 'Now that's what I call a good bitch!' [SubjectPro of Diego] howls in arousal, taking out all the stops and really pounding into you now, soon burying the full length of [PosAdj of Diego] manhood inside your body one last time as it starts to throb, flooding your depths with [PosAdj of Diego] potent seed.' Your arousal skyrockets right along with [PosAdj of Diego] and femcum gushes around [PosAdj of Diego] thrusting shaft as you feel spurt after spurt of cum being pumped into you. The feeling of tightness increases as [PosAdj of Diego] knot swells up to lock [PosAdj of Diego] dick and cum inside your pussy, making sure you'll be soaking in [PosAdj of Diego] load for some time to come. As Diego and yourself sink down on the ground, connected by the hip, [SubjectPro of Diego] proceeds to whisper more commands in your ear, intending to make sure that you stay a proper little plaything for the future too.";
		if "Male Preferred" is listed in Feats of Player:
			FeatLoss "Male Preferred";
		if "Herm Preferred" is listed in Feats of Player:
			FeatLoss "Herm Preferred";
		FeatGain "Female Preferred";
		FeatGain "Always A Pussy";
		TraitGain "Female_Player_Collared" for Diego; [memory point to let him remember that the player was a female before]
	else: [neuter]
		say "Then [PosAdj of Diego] hand moves down to stroke over your crotch, not finding much there. 'No, this won't do, I'm afraid. Some would just make do with the ass, but I'd much rather you have a nice and ready pussy! Now be a good puppy and get into position, will you?' A paw-hand pressing down lightly on your shoulder indicates that both of the things [SubjectPro of Diego] said were a command, and you sink down on all fours, presenting yourself in doggy-style position while a strange tingle starts to spread over your crotch. Kneeling behind you and resting a hand on your ass as [SubjectPro of Diego] leans down to watch the transformation, Diego chuckles amusedly.";
		WaitLineBreak;
		say "     Diego traces a claw-tipped finger over a spot of your sexless crotch, and a second later a new wet opening forms there, already slick and slippery for him, with your juices dripping onto the ground. 'You'll be a fine trickster too, just the bitch a man needs!' [SubjectPro of Diego] adds, dipping [PosAdj of Diego] finger between your folds and making you shiver in pleasure, then tense a little as [SubjectPro of Diego] presses against what must be a newly-formed hymen. 'You were a nice enough buddy to team up with, but this is even better!' the coyote comments, followed by the sensation of something wet brushing against your nether lips, twitching a little as [SubjectPro of Diego] takes a deep sniff. 'Ah, the scent of a fresh pussy, nothing compares to that!' [PosAdjCap of Diego] nose is replaced by a licking tongue a second later, teasing your clit and tracing the outline of your folds and making shivers of arousal run up and down your spine.";
		say "     The coyote proceeds to get into a much closer position behind you, aligning [PosAdj of Diego] knotted erection with your entrance. [PosAdjCap of Diego] fingers splay out on the curve of your rear as [PosAdj of Diego] claws dig lightly into your skin, getting a good grip to hold you by. With a sure, confident motion, [SubjectPro of Diego] then pushes past your welcoming folds and takes your virginity. Going deep, [SubjectPro of Diego] spreads the warm, vet vise of your virginal pussy around [PosAdj of Diego] erection, making you feel very good and filled. As the trickster starts to fuck you in a steady rhythm, your low moans at being penetrated gradually become higher in pitch with every new thrust of [PosAdj of Diego], proceeding to make you more of a female bit by bit. [SubjectProCap of Diego] loves pushing [PosAdj of Diego] length into your increasingly aroused cunt, sliding all the way to the knot in the gripping, dripping chalice. You can't help but pant hotly as you feel the coyote's wet tongue brush over your nape, followed by a more primal shudder as [PosAdj of Diego] teeth lightly nip at your bared neck. Somehow, this physical show of dominance has an even bigger effect than [ObjectPro of Diego] entering you with [PosAdj of Diego] erection, instilling deep instincts of submission and belonging as your mind adjusts to be new female plaything.";
		WaitLineBreak;
		say "     After a moment, [SubjectPro of Diego] lets go of your nape again, nuzzling [PosAdj of Diego] muzzle against the crook of your neck as [SubjectPro of Diego] keeps fucking with deep thrusts. You feel Diego's tongue lick you, followed by [ObjectPro of Diego] grunting into your ear, 'Getting kinda close babe!' You know just how to react to that, flexing your internal muscles around the coyote's shaft and making [ObjectPro of Diego] groan in lust. 'Now that's what I call a good bitch!' [SubjectPro of Diego] howls in arousal, taking out all the stops and really pounding into you now, soon burying the full length of [PosAdj of Diego] manhood inside your body one last time as it starts to throb, flooding your depths with [PosAdj of Diego] potent seed.' Your arousal skyrockets right along with [PosAdj of Diego] and femcum gushes around [PosAdj of Diego] thrusting shaft as you feel spurt after spurt of cum being pumped into you. The feeling of tightness increases as [PosAdj of Diego] knot swells up to lock [PosAdj of Diego] dick and cum inside your pussy, making sure you'll be soaking in [PosAdj of Diego] load for some time to come. As Diego and yourself sink down on the ground, connected by the hip, [SubjectPro of Diego] proceeds to whisper more commands in your ear, intending to make sure that you stay a proper little plaything for the future too.";
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 8;
		now Cunt Tightness of Player is 1;
		if "Male Preferred" is listed in Feats of Player:
			FeatLoss "Male Preferred";
		if "Herm Preferred" is listed in Feats of Player:
			FeatLoss "Herm Preferred";
		FeatGain "Female Preferred";
		FeatGain "Always A Pussy";
		TraitGain "Neuter_Player_Collared" for Diego; [memory point to let him remember that the player was a neuter before]
	CreatureSexAftermath "Player" receives "PussyFuck" from "Coyote";
	now XP of Diego is 7; [player has the collar on, got fucked]

to say DiegoCollarDeliveryAftermath:
	say "     'Thanks a lot, you don't know how much this means to me. Really irked me a lot to know that fucker had my family heirloom. Here, let me reward you for your help!' With that said, [SubjectPro of Diego] strolls over to a somewhat out of the way clump of bushes, reaching inside it and retrieving a bulging plastic shopping bag. [SubjectProCap of Diego] hands the weighty load over and you see that it contains several soda cans as well as bags of chips.";
	ItemGain soda by 5;
	ItemGain chips by 3;
	say "     As you pack away your new belongings, Diego steps up to you and gives you a friendly smile. 'You know, I feel like there should be something more I can give you as a reward. In fact, the collar can do things, like make someone stronger, and some other stuff too.' [SubjectProCap of Diego] just waves [PosAdj of Diego] hand airily, quickly skipping past the 'other' effects as [SubjectPro of Diego] explains that with him to show you how to use it properly, the collar could be a very useful tool for a lot of future tricks you can play. 'So what do you say? Wanna try it out?' [SubjectProCap of Diego] holds the leather band out to you.";
	say "     [bold type]Do you accept Diego's offer of trying the collar on?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure thing! Diego said it'll help with future tricking after all.";
	say "     ([link]N[as]n[end link]) - Err... better not. That expression on the coyote's face is too clever by half.";
	if Player consents:
		LineBreak;
		let OtherCollarPresent be false;
		repeat with z running through equipped equipment:
			if slot of z is "neck":
				now z is not equipped;
				now OtherCollarPresent is true;
		if OtherCollarPresent is true:
			say "     Quickly taking off what you already have on, you lift the leather band to your neck and fasten it, nice and tight. It feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever.";
		else:
			say "     Lifting the leather band to your neck, you fasten it, nice and tight. It feels really neat on your skin, sturdy yet somehow soft, and you feel like you could wear it forever.";
		now diego's heirloom collar is equipped;
		say "[DiegoCollarWearingAftermath]";
	else:
		LineBreak;
		say "     In a friendly but firm tone, you turn the coyote down. [SubjectProCap of Diego] takes your rejection well enough with little more than a slight dip of [PosAdj of Diego] tail, followed by a shrug. 'Oh well, guess I'll find someone else to help me with this specific plan then. Doesn't mean we can't enjoy hatching some other fun plans together though, alright?'";
		ItemLoss diego's heirloom collar by 1;
		now XP of Diego is 50; [collar delivered]

an everyturn rule:
	if diego's heirloom collar is equipped and XP of Diego > 6 and XP of Diego < 50: [collar on and Diego fucked the player]
		project Figure of Diego_icon;
		if a random chance of 1 in 5 succeeds: [20% chance to move towards being a coyote]
			Coyotify;
		if Diego is not visible:
			if lastFuck of Diego - turns is 8: [one day after fucking around with Diego the last time]
				say "     [bold type]All of a sudden, you feel somewhat warm and flushed, with your lips going dry. At first, you can't tell where the sensation is coming from, but when you try to adjust the collar around your neck a moment later, you realize that it feels rather... warm. Touching the tight band of leather, it seems to be pulsing with inner energy, ramping up whatever it is doing and making your head swim a little.[roman type][line break]";
				say "     Without anyone there to touch you, the ghostly feeling of someone's paw-hand stroking along your jaw-line overcomes you, followed by the impression of a lick across your cheek. Hot breath seems to wash over the side of your neck, followed by Diego's voice in your ear, 'Come to me, you know you want it. Need it!' The warmth of the collar ebbs off after that, together with the... delusion? Projection? Whatever it was. Still, you're left breathless, feeling slightly sweaty and aroused, with the coyote at the front of your mind for the next little while. The desire to return to him frequently interrupts other thoughts, popping up no matter how often you push it down.";
				SanLoss 10;
				if Intelligence of Player > 20:
					StatChange "Intelligence" by -1;
			else if lastFuck of Diego - turns is 16: [two days after fucking around with Diego the last time]
				say "     [bold type]All of a sudden, you feel somewhat warm and flushed, with your lips going dry. At first, you can't tell where the sensation is coming from, but when you try to adjust the collar around your neck a moment later, you realize that it feels rather... warm. Touching the tight band of leather, it seems to be pulsing with inner energy, ramping up whatever it is doing and making your head swim.[roman type][line break]";
				if Cunt Count of Player is 0:
					now Cunt Count of Player is 1;
					now Cunt Depth of Player is 5;
					now Cunt Tightness of Player is 3;
					say "     You feel a tingling dampness at your groin that soon turns into a wet gush of fluids as your flesh splits open into a brand new pussy. This dripping cunny is sopping with feminine juices from its orgasmic formation.";
				say "     Unbidden, a loud, almost shouted moan bursts from your lips as the sensation of a wet tongue brushing over your clit overcomes you, followed by that same ghostly appendage slipping between your nether lips. Looking down, there is no one there, but then you blink and seem to see Diego between your legs in the fleeing second that your eyes are closed. Now intentionally closing them, you see the coyote before your mind's eye, his muzzle rising from your sodden folds with him licking this sides of it and grinning broadly. 'I know what you need, little bitch!' Diego says and pushes two fingers into your body with the confident knowledge of a master making use of what is his. While he wiggles and bends his digits inside you, the trickster's thumb rests on your clit, rubbing it slowly. This continues for about a minute, getting you all hot and ready, before he stands up, presenting his rock-hard coyote cock.";
				say "     The glorious shaft is rubbed over your folds, teased at the opening and - almost - enters you before he pulls back. You're panting, eager for him to enter you, but Diego seems to fade after that moment, his toothy grin being the last to vanish after the words, 'Come find me to feel it for real inside you!' Blinking open your eyes, now that the... delusion? Projection? Whatever is was is over, you're left horny and panting, with little but phantasies of Diego and hard cock dominating your mind. It is hard to have other thoughts besides just that, and you feel the urgent need to go find the coyote for a fuck.";
				SanLoss 15;
				if Intelligence of Player > 15:
					StatChange "Intelligence" by -1;
			else if lastFuck of Diego - turns is 24: [three days after fucking around with Diego the last time]
				say "     [bold type]All of a sudden, you feel a flush of heat rise inside you, with your throat feeling bone-dry and parched. Moistening your lips with your tongue, you swallow to dispel the weird feeling, which makes your throat bob and flex against the collar resting tightly around it - at which point you realize that the leather is rather... warm. You raise a hand to the collar and hook your finger under the it, trying to pull the firm band away from your skin without having much success. Instead it seems to pulse with inner energy, ramping up whatever it is doing and making your head swim dizzily.[roman type][line break]";
				if Cunt Count of Player is 0:
					now Cunt Count of Player is 1;
					now Cunt Depth of Player is 5;
					now Cunt Tightness of Player is 3;
					say "     You feel a tingling dampness at your groin that soon turns into a wet gush of fluids as your flesh splits open into a brand new pussy. This dripping cunny is sopping with feminine juices from its orgasmic formation.";
				say "     Closing your eyes to keep the room from spinning, you can hear Diego's voice in your mind, getting stronger by the second. ";
				if "Male_Player_Collared" is listed in Traits of Diego: [player was male when originally collared]
					if Player is not male:
						say "'Yes, you'll be a good little slut for me, won't you boy? Having a dick was such a waste of your potential - when we both know your true purpose always was to be a nice, little, obedient bitch instead! MY little bitch!' ";
					else:
						say "'Yes, you'll be a good little slut for me, won't you boy? No need to try fighting it - that tiny little prick of yours isn't even worth mentioning!' As he says this, your heart starts racing and you quickly grab for your [cock of Player] manhood, feeling its [if Cock Length of Player > 15]mighty [else if Cock Length of Player > 10]sizable [else if Cock Length of Player > 6]above-average [else if Cock Length of Player > 3]admittedly average [else]diminutive [end if]length, only to find it shrinking out of your grasp and pulling closer to your body. Without being able to do anything about it, your cock transforms into the nub of a clit! 'We both know your true purpose always was to be a nice, little, obedient bitch instead! MY little bitch!' ";
						now Cock Count of Player is 0;
						now Cock Length of Player is 0;
						now Ball Size of Player is 0;
				else if "Female_Player_Collared" is listed in Traits of Diego: [player was female when originally collared]
					say "'Yes, you'll be a good little slut for me! Accept it, this always was your true purpose: being a nice, little, obedient bitch! MY little bitch!' ";
				else if "Neuter_Player_Collared" is listed in Traits of Diego: [player was neuter when originally collared]
					say "'Yes, you'll be a good little slut for me! I saved you from being a sexless freak, so accept your true purpose: Being a nice, little, obedient bitch! MY little bitch!' ";
				say "An image of your grinning coyote master flashes before your mind's eye, with him leaning in closely and licking his lips. Then he reaches casually between your legs with his paw-hand, self-confident in his freedom to do with you whatever he decides. Fingers brush over the sensitive nub of your clit before sliding lower, tracing your nether lips and spreading them apart. You can't help but feel intensely aroused and wet as two digits slide into you - by which time you realize they're your own fingers by the wetness on your skin! Is this more of Diego messing with you, or did you just start masturbating on your own while thinking of him?!";
				say "     No matter which, this feels too good to just stop with suddenly, so you keep going, sinking more of your fingers into the sopping pussy between your legs and curling them to brush just the right spots. At the same time, you move your other hand in to rub at your clit, frigging it hard as you think of the trickster doing this to you himself. Touching your sex, licking it, bringing the big canine shaft of his up against your opening! You shove your digits deeper into your body, which sadly is a weak comparison to Diego's glorious cock spearing your sex. Even as you finger-fuck yourself with ever more frantic movements, all this does is keep your arousal going, without hitting the true goal of sating your need. Panting and fingering yourself while imagining the coyote, you can almost feel his fur brushing against the side of your neck as a voice seems to whisper into your ear, 'You know where to find me, little bitch! Be a good girl and I'll give you what you need!'";
				WaitLineBreak;
				say "     Knowing that you won't get off like this, you open your eyes and pull your hands away from your sex. Looking at the slick, sexual fluids sticking to your fingers, you feel very, very tempted to rush back to Diego and get your sweet reward. For the next little while, little else fills your mind.";
				say "     [bold type]This is getting out of hand! You don't know what'll happen if you don't go back to Diego for a good fucking soon![roman type][line break]";
				SanLoss 20;
				if Intelligence of Player > 10:
					StatChange "Intelligence" by -1;
			else if lastFuck of Diego - turns is 32: [four days after fucking around with Diego the last time]
				say "     [bold type]All of a sudden, you feel a flush of heat rise inside you, with your throat feeling bone-dry and parched. Moistening your lips with your tongue, you swallow to dispel the weird feeling, which makes your throat bob and flex against the collar resting tightly around it - at which point you realize that the leather is almost uncomfortably hot against your skin. You raise a hand to the collar and hook your finger under the it, trying to pull the firm band away from your skin without having much success. Instead it seems to increase the strength of inner energy that pulses into you, ramping up whatever it is doing and making your head swim dizzily.[roman type][line break]";
				if Cunt Count of Player is 0:
					now Cunt Count of Player is 1;
					now Cunt Depth of Player is 5;
					now Cunt Tightness of Player is 3;
					say "     You feel a tingling dampness at your groin that soon turns into a wet gush of fluids as your flesh splits open into a brand new pussy. This dripping cunny is sopping with feminine juices from its orgasmic formation.";
				say "     Closing your eyes to keep the room from spinning, you can hear Diego's voice in your mind, getting stronger by the second. ";
				if "Male_Player_Collared" is listed in Traits of Diego: [player was male when originally collared]
					if Player is not male:
						say "'You're a needy bitch now, boy! So why are you acting like a bad little girl and keep yourself from me? You know your true purpose is to be an obedient cock-sheath for my dick!' ";
					else:
						say "'Remember that you're a bitch now, boy - MY little bitch! Yet you continue your attempts to resist and keep yourself from me. But there is no sense in fighting your true purpose - and especially nit if that tiny little prick of yours isn't even worth mentioning!' As he says this, your heart starts racing and you quickly grab for your [cock of Player] manhood, feeling its [if Cock Length of Player > 15]mighty [else if Cock Length of Player > 10]sizable [else if Cock Length of Player > 6]above-average [else if Cock Length of Player > 3]admittedly average [else]diminutive [end if]length, only to find it shrinking out of your grasp and pulling closer to your body. Without being able to do anything about it, your cock transforms into the nub of a clit! 'You'll learn your place before long!' ";
						now Cock Count of Player is 0;
						now Cock Length of Player is 0;
						now Ball Size of Player is 0;
				else if "Female_Player_Collared" is listed in Traits of Diego: [player was female when originally collared]
					say "'Why are you acting like a bad little girl and keep yourself from me? Accept it, this always was your true purpose: being a nice, little, obedient bitch! MY little bitch!' ";
				else if "Neuter_Player_Collared" is listed in Traits of Diego: [player was neuter when originally collared]
					say "'Why are you acting like a bad little girl and keep yourself from me? I saved you from being a sexless freak, so accept your true purpose: Being a nice, little, obedient bitch! MY little bitch!' ";
				say "An image of your grinning coyote master flashes before your mind's eye, with him leaning in closely and licking his lips. Then he reaches casually between your legs with his paw-hand, self-confident in his freedom to do with you whatever he decides. Fingers brush over the sensitive nub of your clit before sliding lower, tracing your nether lips and spreading them apart. You can't help but feel intensely aroused and wet as two digits slide into you - by which time you realize they're your own fingers by the wetness on your skin! Is this more of Diego messing with you, or did you just start masturbating on your own while thinking of him?!";
				say "     No matter which, this feels too good to just stop with suddenly, so you keep going, sinking more of your fingers into the sopping pussy between your legs and curling them to brush just the right spots. At the same time, you move your other hand in to rub at your clit, frigging it hard as you think of the trickster doing this to you himself. Touching your sex, licking it, bringing the big canine shaft of his up against your opening! You shove your digits deeper into your body, which sadly is a weak comparison to Diego's glorious cock spearing your sex. Even as you finger-fuck yourself with ever more frantic movements, all this does is keep your arousal going, without hitting the true goal of sating your need. Panting and fingering yourself while imagining the coyote, you can almost feel his fur brushing against the side of your neck as a voice seems to whisper into your ear, 'Such a needy, slutty bitch! Whimpering and moaning my name as she craves a cock inside her!'";
				WaitLineBreak;
				say "     At that point, you realize that there's something more going on than just your phantasies running wild, as a paw-hand slides over your shoulder from behind and pulls you back, against the furred front of someone. At the same time, a second paw pulls your head to the side, with a wet tongue lapping over your lips, then worming its way into your mouth. Eyes flicking open in shocked surprise, you find yourself face to face with your coyote master Diego, who makes out with you in a firm, dominant fashion that leaves you helpless to resist. His fingers move over you, groping and stroking what is his, each new touch driving shivers of lust up and down your spine. He keeps going for some time, long tongue exploring your mouth and wrestling against your own, before finally pulling back, licking his chops and giving you the trademark trickster grin. 'Now, now [if Player is not defaultnamed][Name of Player] [end if]- why are you trying to be a bad little girl? We're connected and yet you wander off and make me find you!'";
				if "Male_Player_Collared" is listed in Traits of Diego: [player was male when originally collared]
					say "     'Are you still confused about having been a guy? Put that out of your head, sweet little bitch! You're meant to take cock, MY cock!' ";
				else if "Female_Player_Collared" is listed in Traits of Diego: [player was female when originally collared]
					say "     'Still trying to be 'your own woman'? Forget that, you're meant to take MY cock, and obey! You know you need this!' ";
				else if "Neuter_Player_Collared" is listed in Traits of Diego: [player was neuter when originally collared]
					say "     'Are you still confused about having been sexless? Put that out of your head, sweet little bitch! You're meant to take cock, MY cock!' ";
				say "With that said, he suddenly reaches down and pulls your hand aside from where it is covering your crotch, snorting in amusement as he sees that your fingers are drippingly wet, as are the insides of your thighs. As his questing fingers find your clit and pinch lightly it, then roll the sensitive nub between the coyote's fingertips, your built-up arousal is released all at once in an orgasm that makes your knees go weak like jelly! Shouting out uncontrolled moans while femcum squirts from your pussy, you can't even keep standing, with Diego thankfully keeping a grip on your body and lowering you to the ground. Panting breathlessly and shivering in lust as you ride out the wave of pleasure, you find yourself lying on your side by the time you can form proper thoughts again.";
				WaitLineBreak;
				say "     Two tan-furred paws steps into your line of sight next, with your gaze following them up along Diego's toned legs to his thighs, then his crotch. The coyote's balls are full and round, promising all the virile loads you can handle when he fucks you with the red rocket of a canine cock sticking out from his sheath. Just thinking of having him breeding you, with Diego's cubs soon to grow in your belly, makes your arousal soar again despite just having gotten off. With a chuckle, the dominant coyote says, 'Let me show you what you've been missing!' With that, he lifts one paw and places it against your raised hip, pushing it to the side to roll you fully on your back. Not wasting any time, he gets between your legs, and lines his glorious shaft up with your sopping wet slit. The mere act of his erection rubbing over your nether lips makes you tremble and whimper while reflexively humping your crotch against his cock.";
				say "     'Shh - it's all good now, daddy's here,' Diego tells you in a surprisingly warm tone, then slides his cock into your welcoming pussy. The sensation of his warm, firm shaft spreading your insides around its perfect width, fitting just right as if your sex was literally made for him, gives you a mini-orgasm all on its own! Waves of lust washing over you, you see stars dancing in front of your eyes and writhe under your beloved master. In this moment, you can barely even comprehend how you managed to last for days without feeling him inside you. He slides all the way in, until the orbs of his furry balls press against your crotch, then leans forward to kiss you full on the mouth once more. Entwined like that, Diego begins to fuck you without restraint, really hammering your needy pussy deep with the dick it was meant to take!";
				WaitLineBreak;
				say "     The coyote feels so very right and incredibly good inside you that he easily pushes you past the point of no return of two orgasms in quick succession, pacing himself and simply resting balls-deep while your inner muscles squeeze his shaft from all sides. All the while he keeps stroking and kissing you, intermixed with telling you that you're meant to be his bitch, his little fucktoy and soon will be the mother of his cubs. As you writhe in pleasure from everything that the canine man does to you, thoughts of continuing your normal life - or however 'normal' it was while doing what you had to in surviving in this city - seem to lose focus and importance to you. After you come down from your newest orgasm, Diego tells you to say lewd things to him, begging for his cock and calling him master, then pleading to be knocked up - and you do it all eagerly in the lusty haze you are in.";
				say "     This time, Diego really goes all out, no longer slowing down to keep himself from cumming. While the bulge near the base of his shaft provided some nice stretching before, it grows further now, really straining your nether lips as he pops the growing knot in and out, until finally forcing it in a final time as it inflates the rest of the way, locking your bodies together while he begins to unload a deluge of virile coyote seed into your depths. You can feel his cock throb against your stretched insides as spurt after spurt fills you, soaking your womb in Diego's cum and cementing his claim on your body. While he is still filling you, the anthro canine kisses you on the mouth and puts on a very satisfied grin, followed by a little bit of pillow-talk. 'I think I'll keep you close for the next little while until you've internalized that you're mine. And at least until after the first litter - having cubs will help you settle down more easily!'";
				trigger ending "Diego's Runaway Bitch";
				end the story saying "You tried to keep your distance from Diego, but he finally took you as his full-time bitch!";

a postimport rule:
	if diego's heirloom collar is equipped:
		if "Male_Player_Collared" is not listed in Traits of Diego and "Female_Player_Collared" is not listed in Traits of Diego and "Neuter_Player_Collared" is not listed in Traits of Diego:
			add "Male_Player_Collared" to Traits of Diego; [default value for people importing from old versions]


to say DiegoMasterSex: [kicked off by the player coming to him for sex]
	say "     As you approach your canine master with lust on your mind, the coyote chuckles and says, 'That's a good girl, coming to her man to get what she needs!'";
	DiegoMasterSex_Intro; [intro and transformation (if needed)]
	DiegoMasterSex_Choosing; [picking what he wants to do]

instead of resting while (diego's heirloom collar is equipped and Diego is visible and lastFuck of Diego - turns > 3 and a random chance of 1 in 2 succeeds): [kicked off by the player wanting to rest within sight of Diego]
	say "     As you get ready to lay down and sleep, Diego saunters closer and lets out a wolf whistle, making you turn towards him and look at your canine master. 'Ready to lay down and get comfortable? How about I join you for some fun time first? You'll sleep nice and deep afterwards, I'm sure of that!'";
	DiegoMasterSex_Intro; [intro and transformation (if needed)]
	DiegoRestFuck; [Diego fucks the player and they rest afterwards]

an everyturn rule: [kicked off by the player waiting within sight of Diego]
	if diego's heirloom collar is equipped and Diego is visible and lastFuck of Diego - turns > 3 and a random chance of 1 in 2 succeeds:
		say "     As you stand around, waiting, Diego saunters closer and lets out a wolf whistle, making you turn towards him and look at your canine master. 'Since you don't have anything to do right now, I know a little something that we can use to while away the time...'";
		DiegoMasterSex_Intro; [intro and transformation (if needed)]
		DiegoMasterSex_Choosing; [picking what he wants to do]

to DiegoMasterSex_Intro: [& transform, if needed]
	say "He steps forward and [if Player is not naked]commands you to strip, enjoying the slow, drawn-out show that he makes you do before he [end if]lets his eyes roam up and down over your body. Reaching out to let his paw-hand slide between your legs, the canine trickster is ";
	if Player is male: [cock present - so male or herm]
		now Diego_PlayerSceneStartingGender is "Male";
		say "somewhat annoyed to bump against your cock. 'Now what's this? No proper bitch of mine should have one of those dangling around! Especially not such a puny little prick that isn't even worth mentioning!' As he says this, your heart starts racing and you look down at your [cock of Player] manhood, seeing its [if Cock Length of Player > 15]mighty [else if Cock Length of Player > 10]sizable [else if Cock Length of Player > 6]above-average [else if Cock Length of Player > 3]admittedly average [else]diminutive [end if]length shrink and shrivel second by second, as your body molds itself in reaction to Diego's comment. Without being able to do anything about it, your cock transforms into the nub of a clit some scant moments later! At the same time, your balls get smaller and smaller, then merge into the smoothness of your crotch, leaving nothing behind. 'Looks much better this way, more natural for a needy little bitch! MY little bitch!'";
		now Cock Count of Player is 0;
		now Cock Length of Player is 0;
		now Ball Size of Player is 0;
		if Player is not female: [no pussy]
			say "     Then Diego goes on to rub over your crotch, which splits readily before his questing finger, forming a brand new pussy that allows his digit to dip into your body. Right away after coming into existence, your cunny is already dripping with feminine juices, being slick and ready for anything that your master might want to do with you. He dips two fingers in between your nether lips, pumping them in and out a little and spreading your folds around them. ";
		else:
			say "     Then Diego goes on to rub over your crotch, dipping two fingers in between your nether lips. He pumps them in and out a little and spreads your folds with his digits them. ";
	else if Player is female:
		now Diego_PlayerSceneStartingGender is "Female";
		say "grinning as he dips two fingers in between your nether lips, pumping them in and out a little and spreading your folds around them. ";
	else if Player is neuter:
		now Diego_PlayerSceneStartingGender is "Neuter";
		say "somewhat surprised to find a complete absence of genitals. 'Now what's this? Lost something, little bitch? I'll help you out with that!' Then Diego goes on to rub over your crotch, which splits readily before his questing finger, forming a brand new pussy that allows his digit to dip into your body. Right away after coming into existence, your cunny is already dripping with feminine juices, being slick and ready for anything that your master might want to do with you. He dips two fingers in between your nether lips, pumping them in and out a little and spreading your folds around them. ";
	say "Being fingered like this, you can't help but whimper and moan lustfully, pushing your crotch against his touch. Diego eventually withdraws and holds his hand out in front of your face, a toothy smile spreading over his muzzle. You can't really if it is the collar's influence, or your own growing submission to the coyote, but you immediately suck his fingers clean, swallowing your own juices in ecstasy.";
	if Cunt Count of Player is 0: [if the player was male or neuter, they got a free pussy above]
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 5;
		now Cunt Tightness of Player is 3;
	[the player should now be returned to a proper female configuration, with no dick and a pussy]
	if "Male_Player_Collared" is listed in Traits of Diego: [player was male when originally collared]
		if Diego_PlayerSceneStartingGender is "Male":
			say "     'Why are you even still trying to cling to your old, male life? Getting yourself a cock somewhere - pfft! I got you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! Just forget being a guy, you got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
		else if Diego_PlayerSceneStartingGender is "Female":
			say "     'Good to see that being a bitch is taking properly. Had you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! Just forget being a guy, you got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
		else:
			say "     'Hope you only ended up without genitals because of some accident with the nanites, not you trying to get back to your old male self, because you can forget about that! Had you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! Just forget being a guy, you got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
	else if "Female_Player_Collared" is listed in Traits of Diego: [player was female when originally collared]
		if Diego_PlayerSceneStartingGender is "Male":
			say "     'You were a proper female when that collar went on, so where the hell did you pick up a dick? No matter, it's gone again and I want you to watch out for whatever gave it to you and avoid that! Hell, you sure don't need it - had you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! You got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
		else if Diego_PlayerSceneStartingGender is "Female":
			say "     'That's how I like my bitches - sweet and receptive! Had you moaning like a needy slut in just a moment or two, with nothing more but my fingers in that sweet little cunt! You got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
		else:
			say "     'You were a proper female when that collar went on, so where the hell did you lose your pussy? No matter, it's back again and I want you to watch out for whatever took it from you and avoid that! I mean it - just think of the fun I just gave you - had you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! You got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
	else if "Neuter_Player_Collared" is listed in Traits of Diego: [player was neuter when originally collared]
		if Diego_PlayerSceneStartingGender is "Male":
			say "     'Still confused about what proper gender you should have, eh? Poor little slut. You might think that anything is better than being neuter, but not for me - and not for my bitch! Just stay having a pussy and avoid whatever slapped that dick on you! Hell, you sure don't need one - had you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! You got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
		else if Diego_PlayerSceneStartingGender is "Female":
			say "     'Good to see that being a bitch is taking properly. Had you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! Just forget being a guy, you got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
		else:
			say "     'Still confused about what proper gender you should have, eh? Poor little slut. You might think that anything is better than being neuter, but not for me - and not for my bitch! Just stay having a pussy and avoid whatever slapped that dick on you! Hell, you sure don't need one - had you moaning like a needy bitch in just a moment or two, with nothing more but my fingers in that sweet little cunt! You got a proper future ahead of you as my cock-sheath and the mother of my cubs!'";
	say "With that said, Diego leans in close and licks your cheek in a gesture that combines possessive dominance and affection, then gropes you some more while he decides what exactly he wants to do with you right now.";

to DiegoMasterSex_Choosing:
	say "...Random Picking, depending on Diego's moods";

to DiegoRestFuck:
	say "....Diego Fucks the player and they take a rest afterwards";


Section 6 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Hunter's Bitch"	"BadEnd"	"Sex Slave"	Hunter's Bitch rule	20	false
"Player fucked Diego"	"NPC"	""	Player fucked Diego rule	900	false
"Diego's Runaway Bitch"	"BadEnd"	"Sex Slave"	Diego's Runaway Bitch rule	20	false

This is the Player fucked Diego rule:
	if DiegoBitched is 2: [player fucked FemDiego]
		trigger ending "Player fucked Diego";
		if humanity of Player < 10:
			if Player is male:
				say "     Not long after you surrender to your new instincts, Diego begins to hunt you down, worried that you haven't come by to claim your bitch in a while. Seeing the coyote bitch looking for you, you remember some of the tricks the two of you played before, and your instinct-driven mind comes up with a cunning plan. With a bit of work, you manage to trap yourself an unsuspecting coyote, and are more than happy to show [PosAdj of Diego] just how happy you are to 'play' with [PosAdj of Diego] still malleable body. Soon the tricky coyote is changing again into a more suitable form to be your mate, as you coat [PosAdj of Diego] with your seed, coaxing [PosAdj of Diego] into begging and moaning for the changes you work on [PosAdj of Diego] body. Eventually you let your new pet loose, properly trained, and with [PosAdj of Diego] belly already swelling with your offspring, the two of you head out into the city and to embrace your new life together.";
			else:
				say "     Not long after you surrender to your new instincts, Diego does as well, unable to resist the strong needs of a coyote bitch in heat as [SubjectPro of Diego] hunts you down. The bitch seems happy to see you too have given in to the pleasures of a purely female form, and eagerly joins you in your new life, even though [PosAdj of Diego] form is slightly different than your own, [SubjectPro of Diego] seems strongly attached to you. Eventually the results of your mating with [PosAdj of Diego] begin to show though, and [SubjectPro of Diego] retreats into the city to bear your coyote pups. You only see [PosAdj of Diego] occasionally after that, the needs of your pups distracting her, as well as [PosAdj of Diego] driving instincts to find a new coyote mate keeping [PosAdj of Diego] busy, just as your own instincts do for yourself...";
		else:
			if Player is male:
				say "     Rescued from the city with your mind intact, you meet Diego again in the military camp, the coyote bitch being picked on by several of the soldiers for all the tricks [SubjectPro of Diego] pulled on them. Unable to just let it happen, you stand up for your bitch and shame the soldiers into leaving [PosAdj of Diego] alone. Diego is extremely relieved to see you, and is glad to let you know that [SubjectPro of Diego] has been the model of a good coyote bitch while [SubjectPro of Diego] waited for you to return and claim her. The military is more than eager to release the two of you together, practically shoving you out of the camp in an attempt to get the tricky coyote as far away from them as possible.";
				say "     The situation makes you grin as you head out with Diego to try to figure out how to fit into the world after your experiences in the city. Though soon it is obvious that some of your playing around in the city bore fruit, as Diego starts to show evidence of being pregnant with a litter of pups. [SubjectProCap of Diego] eagerly moves in with you when you eventually find a place to stay, and quickly begins devoting that crafty mind of hers to find way to better increase your standing in your new life. Soon though, your strange little family is enlarged by a quartet of coyote pups, and Diego's attention is diverted to [PosAdj of Diego] new role as a happy mother, although [SubjectPro of Diego] does start dropping hints about wanting to be 'claimed' again sometime soon...";
			else:
				let randomnumber be a random number from 1 to 2;
				if randomnumber is:
					-- 1:
						say "     Rescued from the city with your mind intact, you meet Diego again in the military camp. The coyote bitch is happy and eager to see you there, if somewhat disappointed in the fact that you are lacking your glorious cock. Still [SubjectPro of Diego] is more than happy to point out that your claiming of [PosAdj of Diego] body has borne fruit, as evidenced by [PosAdj of Diego] softly swelling belly. When the military finally let you go, the tricky coyote bitch manages to get herself released as well, following you out into the world and staying as near you as possible as you both try to fit back in with society.";
						say "     You come to enjoy [PosAdj of Diego] amusing company enough that you hardly protest when [SubjectPro of Diego] moves in with you, taking care of most of the chores even as [PosAdj of Diego] belly grows larger. Soon your strange little family is enlarged by the addition of several cute little coyote pups around the place, getting into things and making you both smile. You settle into your life outside the city even easier with a new companion like Diego to keep you company and amused, although you start to worry when the coyote starts talking about finding a nice stud to claim you both...";
					-- 2:
						say "     Rescued from the city with your mind intact, you meet Diego again in the military camp. The coyote bitch is happy and eager to see you there. [SubjectProCap of Diego] seems amused at the fact that you too have ended up changed into a proper female, and [SubjectPro of Diego] is more than happy to rub and tease your new body even as [SubjectPro of Diego] tells you how happy [SubjectPro of Diego] is with [PosAdj of Diego] own change. When the military finally release the two of you, Diego stays in close contact with you, often sending you teasing letters about how happily [PosAdj of Diego] belly is swelling from your mating in the city, and how much more fun [SubjectPro of Diego] is having as a proper bitch.";
						say "     [PosAdjCap of Diego] happy acceptance of [PosAdj of Diego] new female status perks you up as you try to settle into your new life, and the pictures [SubjectPro of Diego] sends you of your little coyote pups can't help but make you smile. Although [PosAdj of Diego] latest teasing letter about finally finding a lovely coyote stud to play with, and the invitation to come join [PosAdj of Diego] sometime so [PosAdj of Diego] new stud can return the favor you did for [PosAdj of Diego] in the city and give you some pups in your own belly, is strangely attractive...";
	else if DiegoBitched is 1 or DiegoChanged is 2 or DiegoChanged is 1: [player fucked HermDiego, or femDiego]
		trigger ending "Player fucked Diego";
		if humanity of Player < 10:
			say "     Not long after you give in to your new instincts, Diego gives into hers as well, the powerful instincts of both a male and female coyote finally overcoming the trickster's resistance. Soon the new coyote herm is prowling the streets, setting traps and tricks for both infected and military alike, and eagerly enjoying the bodies of anyone [SubjectPro of Diego] can manage to trap. [PosAdjCap of Diego] very presence on the streets makes things more dangerous for many of its inhabitants, but somewhere in your new more instinct driven mind, you know that if you ever were to encounter the coyote again, you could have such fun turning the tricks on [PosAdj of Diego] once more...";
		else:
			say "     When the rescue comes, the coyote you tricked is still waiting at the park for the military to arrive, several of whom are less than pleased to see the trickster that was plaguing their advance waiting there so casually. A few hours later, in one of the advance camps around the city, Diego finds [PosAdj of Diego] new body put to great use by the military men - with them taking out their pent-up sexual frustration on her. Distracted in the heat of the moment by arousal and the need to pay Diego back for every taunting comment about how easy their buddies were to trick, the soldiers gang-bang the coyote all night long - totally forgetting that [SubjectPro of Diego] is still very much infectious.";
			say "     The next morning a lovely new group of coyotes spreads out throughout the military camp, reveling in their canine bodies as they trick the rest of the soldiers into surrendering, as well as sabotaging most of the machines and weaponry. The advance into the city grinds into a halt not long after you are released back out into the world, and from what you hear, it is unlikely to start again anytime soon with many of these devious tricksters loose in and around the city...";
	else if DiegoChanged is 0 and DiegoButtSlut is 0 and CoyoteTricks > 1: [not feminized, not OK with anal and gay sex]
		trigger ending "Player fucked Diego"; [The player might not have had sex with Diego, but still the same scenario. No need for extra complexity I guess. (@Stadler#3007)]
		if humanity of Player < 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     When the military finally sends more soldiers to evacuate all those not actively resisting from the city, Diego the coyote meets them on [PosAdj of Diego] own terms - meaning that the crafty trickster only ever gets 'caught' by squads of female soldiers. Despite [PosAdj of Diego] rising infamy in official military circles, the smooth-talking canine always manages to convince the women to let [ObjectPro of Diego] go after a few hours in [PosAdj of Diego] company. What might have something to do with that are the whispered barracks-rumors about [PosAdj of Diego] skills with a long tongue and knotted cock, leaving [PosAdj of Diego] human captors more than curious to experience it themselves - and willing to free Diego in their post-coital bliss.";
			say "     Thanks to the more and more widespread use of transformation immunity booster shots, none of the women sprout fur or tails afterwards, but what usually gets forgotten in all the chaos is that laying with a highly potent male bears other risks... and after a week or two, the number of pregnancies with coyote cubs spikes to all-time heights. Meanwhile, Diego enjoys doing [PosAdj of Diego] tricks on everything and everyone in the city, often playing one group of transformed beings against another or causing all sorts of mishaps for the advancing troops from outside the city. [PosAdjCap of Diego] exploits become legendary before much longer when communication with advance camp Bravo in the city is re-established, revealing [PosAdj of Diego] masterpiece of trickery - a whole camp of army men and women talked into servicing a horny minotaur...";
	else if DiegoButtSlut is 1: [OK with anal]
		trigger ending "Player fucked Diego";
		if humanity of Player < 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     When the military finally sends more soldiers to evacuate all those not actively resisting from the city, Diego the coyote meets them on [PosAdj of Diego] own terms - meaning that the crafty trickster only ever gets 'caught' by rather small squads of soldiers in more out of the way places of the city. Despite [PosAdj of Diego] rising infamy in official military circles, the smooth-talking canine always manages to convince the men and women involved to let [ObjectPro of Diego] go after a few hours in [PosAdj of Diego] company. What might have something to do with that are the whispered barracks-rumors about [PosAdj of Diego] skills with a long tongue and knotted cock, as well as a grippingly tight ass, leaving [PosAdj of Diego] human captors more than curious to experience it themselves - and willing to free Diego in their post-coital bliss.";
			say "     Thanks to the more and more widespread use of transformation immunity booster shots, none of Diego's bed-mates sprout fur or tails afterwards, but what usually gets forgotten in all the chaos is that laying with a highly potent male bears other risks... and after a week or two, the number of pregnancies with coyote cubs spikes to all-time heights. Meanwhile, Diego enjoys doing [PosAdj of Diego] tricks on everything and everyone in the city, often playing one group of transformed beings against another or causing all sorts of mishaps for the advancing troops from outside the city. [PosAdjCap of Diego] exploits become legendary before much longer when communication with advance camp Bravo in the city is re-established, revealing [PosAdj of Diego] masterpiece of trickery - a whole camp of army men and women talked into servicing a horny minotaur...";
	else if DiegoButtSlut is 2: [had anal with the player]
		trigger ending "Player fucked Diego";
		if humanity of Player < 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     Rescued from the city with your mind intact, you meet Diego again in the military camp, the coyote being picked on by several of the soldiers for all the tricks [SubjectPro of Diego] pulled on them. As it turns out, [SubjectPro of Diego] was finally captured since [SubjectPro of Diego] kept returning to your usual spot outside the park entrance, hoping to meet up with you again. After getting some hints from questioning people they were rescuing, these soldiers set a trap for your sexy coyote friend, out of which even the crafty trickster couldn't escape. Unwilling to leave your fuck-buddy canine to their mercy - especially after some comments about 'showing that mutt how it feels to be fucked over' start to come up from one or two guys rubbing their crotches - you stand up for Diego and shame the soldiers into leaving [ObjectPro of Diego] alone.";
			say "     Diego is very relieved to see you and strokes a paw-hand down your side as [SubjectPro of Diego] leans in to give a doggy kiss in greeting. With a wink, [SubjectPro of Diego] whispers that [SubjectPro of Diego] did have a foolproof plan to trick the guys and get of dodge after enjoying being dicked, and that [SubjectPro of Diego] nevertheless is quite happy for you to have come to [PosAdj of Diego] 'rescue'. As eventually an officer comes to investigate what's going on with the prisoner having a visitor and all the whispering, Diego lets him know that [SubjectPro of Diego] promises to from now on be a poster boy of a good coyote citizen (standing beside him, you see the crossed fingers behind [PosAdj of Diego] back). With all the other troubles they have, the military is more than eager to release the two of you together, practically shoving you out of the camp in an attempt to get the tricky coyote as far away from them as possible.";
			say "     The situation makes you grin as you head out with Diego to try to figure out how to fit into the world after your experiences in the city. Though [SubjectPro of Diego] gets [PosAdj of Diego] own place - rent-free, thanks to some clever tricks that leave the landlord mightily confused - the coyote usually hangs out with you, always happy to share details about [PosAdj of Diego] newest plans - and your bed. Thanks to that crafty mind of [PosAdj of Diego], your shared lot in the somewhat chaotic society emerging after the advent of the nanite age is usually on the rise, allowing for some very nice time to be had. All in all, the coyote is a really nice friend, wing-man and fuck-buddy to have.";
	else if DiegoButtSlut is 3: [Diego mpreg-able]
		trigger ending "Player fucked Diego";
		if humanity of Player < 10:
			say "[MaleDiegoSuccumbEnding]";
		else:
			say "     When the military finally sends more soldiers to evacuate all those not actively resisting from the city, Diego the coyote meets them on [PosAdj of Diego] own terms - meaning that the crafty trickster only ever gets 'caught' by rather small squads of soldiers in more out of the way places of the city. Despite [PosAdj of Diego] rising infamy in official military circles, the smooth-talking canine always manages to convince the men and women involved to let [ObjectPro of Diego] go after a few hours in [PosAdj of Diego] company. What might have something to do with that are the whispered barracks-rumors about [PosAdj of Diego] skills with a long tongue and knotted cock, as well as a grippingly tight ass, leaving [PosAdj of Diego] human captors more than curious to experience it themselves - and willing to free Diego in their post-coital bliss.";
			say "     Thanks to the more and more widespread use of transformation immunity booster shots, none of Diego's bed-mates sprout fur or tails afterwards, but what usually gets forgotten in all the chaos is that laying with a highly potent male bears other risks... and after a week or two, the number of pregnancies with coyote cubs spikes to all-time heights. Meanwhile, Diego's own altered physiology (thanks to your little trick with bottles of orc cum) leaves the trickster to a surprising discovery too - as [PosAdj of Diego] trained abs eventually swell with the child of one of the hunky soldiers [SubjectPro of Diego] took up [PosAdj of Diego] ass and unknowingly let breed him. The coyote chuckles at the realization, leaving [ObjectPro of Diego] to remember you fondly for a very nice trick indeed. Soon [SubjectPro of Diego] is joined by a teenage son in [PosAdj of Diego] efforts to play tricks on everything and everyone in the city. They often play one group of transformed beings against another or cause all sorts of mishaps for the advancing troops from outside the city. Diego's exploits become legendary before much longer when communication with advance camp Bravo in the city is re-established, revealing [PosAdj of Diego] masterpiece of trickery - a whole camp of army men and women talked into servicing a horny minotaur...";
	else if DiegoButtSlut is 4: [Diego mpregged]
		trigger ending "Player fucked Diego";
		if humanity of Player < 10:
			say "     While you give in to your new instincts, Diego proves resistant to [PosAdj of Diego] more basic urges and keeps being the crafty trickster that you knew. Soon after, [SubjectPro of Diego] spots you out in the streets and starts to think up an all new trick to involve [PosAdj of Diego] former associate in. It doesn't take all that long for [ObjectPro of Diego] to arrange things, and before the next sunrise the trickster successfully lures you to a blind alley, at the end of which two rather worse-for-wear soldiers hide, a man and a woman. Disarmed, with ripped uniforms, and quite exhausted from fleeing the immensely dangerous - but relatively slow - hydra that Diego goaded into attacking them, the two of them aren't in any shape to fight back against anything at that moment.";
			say "     As you pick up and devour the last piece of candy that the coyote laid down to lure you in, you hear a little bit of noise from the alley (an old can, casually dropped from an overlooking window by a familiar paw-hand) and move to investigate, soon finding the people Diego chose to put at your mercy. The coyote watches what happens next with a grin from up high, grinning all the while, then eventually gives a mock salute and quietly says, 'So long buddy, and have fun. I certainly will, while looking out for you.' With a gentle pat on the bulge of [PosAdj of Diego] stomach holding your child, the coyote murmurs, 'It's the least I can do for what might have been a trickster as good as myself.' Then, [SubjectPro of Diego] steps back into the darkness, already thinking up a new trick to play on someone...";
		else:
			say "     Rescued from the city with your mind intact, you meet Diego again in the military camp, the coyote being picked on by several of the soldiers for all the tricks [SubjectPro of Diego] pulled on them. As it turns out, [SubjectPro of Diego] was finally captured since [SubjectPro of Diego] kept returning to your usual spot outside the park entrance, hoping to meet up with you again. After getting some hints from questioning people they were rescuing, these soldiers set a trap for your sexy coyote friend, out of which even the crafty trickster couldn't escape. Unwilling to leave your fuck-buddy canine to their mercy - especially after some comments about 'showing that mutt how it feels to be fucked over' start to come up from one or two guys rubbing their crotches - you stand up for Diego and shame the soldiers into leaving [ObjectPro of Diego] alone.";
			say "     Diego is very relieved to see you and strokes a paw-hand down your side as [SubjectPro of Diego] leans in to give a doggy kiss in greeting. With a wink, [SubjectPro of Diego] whispers that [SubjectPro of Diego] did have a foolproof plan to trick the guys and get of dodge after enjoying being dicked, and that [SubjectPro of Diego] nevertheless is quite happy for you to have come to [PosAdj of Diego] 'rescue'. As eventually an officer comes to investigate what's going on with the prisoner having a visitor and all the whispering, Diego lets him know that [SubjectPro of Diego] promises to from now on be a poster boy of a good coyote citizen (standing beside him, you see the crossed fingers behind [PosAdj of Diego] back). With all the other troubles they have, the military is more than eager to release the two of you together, practically shoving you out of the camp in an attempt to get the tricky coyote as far away from them as possible.";
			say "     The situation makes you grin as you head out with Diego to try to figure out how to fit into the world after your experiences in the city. While still working on getting new jobs and places to stay at, your coyote buddy seems to develop some sort of stomach bug all of a sudden - chucking up [PosAdj of Diego] breakfast one morning. A quick trip to a doctor soon after that does reveal that it isn't anything bad but rather the opposite - turns out that your little trick with the orc cum created another interesting result - Diego is pregnant with a small litter of coyote pups, fathered by yourself. Finding himself a soon-to-be parent, Diego reacts with tail-wagging joy and pulls you close for a deep kiss.";
			say "     Soon after, the two of you find a new place together - rent-free, thanks to some clever tricks that leave the landlord mightily confused - with the coyote sharing your life and bed, happily awaiting the birth of your children. Thanks to that crafty mind of [PosAdj of Diego], your shared lot in the somewhat chaotic society emerging after the advent of the nanite age is usually on the rise. All in all, the coyote is a really nice friend and partner to have, and the trio of little pups [SubjectPro of Diego] gives birth to are the joy of your lives. Diego's attention is somewhat diverted to [PosAdj of Diego] new role as a happy father, although [SubjectPro of Diego] does start dropping hints about wanting to be bred again sometime soon...";

to say MaleDiegoSuccumbEnding:
	say "     While you give in to your new instincts, Diego proves resistant to [PosAdj of Diego] more basic urges and keeps being the crafty trickster that you knew. Soon after, [SubjectPro of Diego] spots you out in the streets and starts to think up an all new trick to involve [PosAdj of Diego] former associate in. It doesn't take all that long for [ObjectPro of Diego] to arrange things, and before the next sunrise the trickster successfully lures you to a blind alley, at the end of which two rather worse-for-wear soldiers hide, a man and a woman. Disarmed, with ripped uniforms, and quite exhausted from fleeing the immensely dangerous - but relatively slow - hydra that Diego goaded into attacking them, the two of them aren't in any shape to fight back against anything at that moment.";
	say "     As you pick up and devour the last piece of candy that the coyote laid down to lure you in, you hear a little bit of noise from the alley (an old can, casually dropped from an overlooking window by a familiar paw-hand) and move to investigate, soon finding the people Diego chose to put at your mercy. The coyote watches what happens next with a grin from up high, grinning all the while, then eventually gives a mock salute and quietly says, 'So long buddy, and have fun. I certainly will.' With that, [SubjectPro of Diego] steps back into the darkness, already thinking up a new trick to play on someone...";


This is the Hunter's Bitch rule:
	if ending "Hunter's Bitch" is triggered:
		if Player is female:
			say "     Having succumbed to the alpha husky's indoctrination, your next few days are spent being fucked again and again, until you are nothing but another husky bitch in Hunter's pack. Still, you only ever play second fiddle to Garnet, whom he is absolutely obsessed by, having gone so far as to search out the movie starlet to take for himself and make her a bitch. Therefore, most of your alpha's time is spent having sex with her. You're drawn into his play with the transformed movie star too, often being ordered to lick cum from her pussy or make out with the woman, with Hunter watching or fucking you as you do so.";
		else: [male & neuter]
			if "Male Preferred" is not listed in feats of Player: [can transform to female]
				say "     Having succumbed to the alpha husky's indoctrination, your next few days are spent being fucked again and again, with the dominant canine gleefully commenting about[if Player is male] your cock shrinking more and more, until [end if]the moment when the flesh of your crotch forms the first folds of a new and virgin pussy. Not that you keep your cherry more than a few minutes, as he takes great pleasure to [']claim['] you fully by humping a heavy load into the virginal womb of yours. Still, you only ever play second fiddle to Garnet, whom he is absolutely obsessed by, spending most of the day having sex with her. You're drawn into his play with the transformed movie star too, often being ordered to lick cum from her pussy or make out with the woman, with Hunter watching or fucking you as you do so.";
			else: [player can't become female]
				say "     Having succumbed to the alpha husky's indoctrination, your next few days are spent being fucked again and again, with the dominant canine growling a little about the fact that your gender doesn't seem to want to change at all. Still, he breaks you in good as his bitch-boy, used to taking that thick shaft all the time and serving as his guard for when the dominant male goes all out fucking Garnet. Having gone so far as to search out the movie starlet in the middle of the nanite apocalypse, just to take her for himself and make her a bitch, the man is absolutely obsessed with her. You're drawn into his play with the transformed movie star too, often being ordered to lick his cum from her pussy, with Hunter watching or fucking your ass as you do so.";
		the Player is enslaved;

This is the Diego's Runaway Bitch rule:
	if ending "Diego's Runaway Bitch" is triggered:
		say "     True to his word, Diego keeps you with him for several days, with most of your waking moments spent receiving his canine cock. This treatment drives his desires for your future home in your mind, and you become the obedient little bitch what he wants you to be. Before long, you wake up one morning and realize that your tummy is starting to swell, with the coyote's seed having taken hold in your receptive womb. Diego is more than satisfied when you reveal your pregnancy to him, kissing you deeply and then showing you breathtaking pleasure as he rewards his 'good girl' for being just what he always wanted in a mate. Now that he is more sure about you, the coyote goes back to his old tricks, often leaving for hours or most of a day to set up some hilarious 'incidents' throughout the city - but he always comes back to you, and even has you play the part of a willing accomplice in some of his plans.";
		the Player is enslaved;


Diego ends here.
