Kitsune Hideaway by Shadowwolf94 begins here.
[original by Kaleem Mcintyre]
[1.1 - Moved to Shadowwolf94's folder]
[1.2 - Player Dominant scenes added - Prometheus]
[1.3 - Talk Menu Expanded]

"Adds a Foxy Hideaway"

Section 1 - Foxy Hideaway

Table of GameRoomIDs (continued)
Object	Name
Foxy Hideaway	"Foxy Hideaway"

Foxy Hideaway is a room. It is fasttravel. It is private.

Description of Foxy Hideaway is "All around you the scents of flora and fauna surround the small, enclosed area kept hidden behind a single door. The smells of the various plants range from jasmine, to lavender, to roses, to honeysuckles, filling up the silver vulpine's den. From what you can see, Kitsune has placed a large four-poster bed in the middle of his hideaway - strange considering that there is grass growing from the floor around the feet of the plush sleeping pallet. There are also two nightstands on either side of the room with elegant lamps dominating the top of said stand; both are on, but running at a low lighting. On both the left and right sides of the walls are tapestries with silver and white nine-tailed kitsunes standing regal in place, almost as though they were watching the room for intruders. Besides the flowers growing throughout the room, there are small ornaments, such as vases and other assorted pottery, placed onto the floor with incense sticks burning within them. With all of this grandiose ensemble collected together, the room should feel oppressive, but it instead feels... open, for some reason.".

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
Cunt Depth of Kitsune is 0. [X Cunt]
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
Description of Kitsune is "A beautiful silver vulpine stands on two digitigrade legs while looking at you with heated, but controlled eyes. Nine tails dance teasingly behind the fox-man's back as he smiles at you good-naturedly. His long and lithe form seems to almost sway slightly with the subtle motions of Kitsune rocking his hips from side to side. His smile soon turns saucy as Kitsune looks you up and down, his eyes lingering a particularly long time on your groin as though studying a tempting morsel, before he looks up to your face once again. With a predatory grin crossing his muzzle, you can't help but feel slightly on edge as the feral nature of the other shines through the graceful visage that the vulpine puts on for you. Though somewhat human-like in appearance, there is no doubt of the fox-man's animal nature as Kitsune stares at you with a growing hunger. A slow sweep of a red tongue along full and pale lips lets you know not to forget this.".
Conversation of Kitsune is { "Hmmm!" }.
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
		say "     'I've been waiting for you, little mortal. I'm so glad that you've finally decided to come and claim your reward. The question next, however, is what will you claim exactly?' Kitsune looks at you with a predatory smile before winking knowingly in your direction. You swallow thickly as you wonder that yourself.";
		say "     'You've done such a wonderful job at entertaining me that I think I'll stick around on this world to enjoy it some more. If you just so happen to come by every once in a while to visit, then that would make things all the better for the both of us, don't you think?' Kitsune winks at you before licking his lips playfully.";
		increase Kitsunetalk by 1;
	else if Kitsunetalk is 1:
		say "[KitsuneTalkMenu]";

to say KitsuneTalkMenu:
	say "[line break]";
	say "The Kitsune smiles upon seeing your approach, raising a paw in greeting. 'Come to talk? What do you wish to talk about?'";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Knowledge of the City";
	now sortorder entry is 1;
	now description entry is "Has he got anything interesting to tell you about the city";]
	[]
	choose a blank row in table of fucking options;
	now title entry is "His impression of you";
	now sortorder entry is 2;
	now description entry is "What is the Kitsune's opinion of you";
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
				[if (nam is "Knowledge of the City"):
					say "[KitsuneTalk1]";]
				if (nam is "His impression of you"):
					say "[KitsuneTalk2]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You stand up, indicating an end to the conversation. The Kitsune smiles at you, gracefully fanning his tail behind him.";
			WaitLineBreak;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

[to say KitsuneTalk1:
	say "     'You want me to tell you about the city? Aren't you the one gallivanting about?' the Kitsune responds before relenting. 'Fine. I suppose I haven't been entirely idle, and I may have some insight that could help you. But revealing all would be dull, so don't expect me to tell you everything. Hmm... what to tell you...";
	say "     [KitsuneLocationComment][KitsuneGroupComment][KitsuneIndividualComment]";]

to say KitsuneTalk2:
	say "     'Aren't you self-centered?' the Kitsune chuckles before looking at you properly. 'Looking for my approval, or are you hoping to show off? Stand still and let me have a look at both your outward as well as inward form. After all, this seems like something that it is worth being thorough for. [if player is not naked]Remove your clothes for me please. I don't know why you lot insist on wearing anything beyond a collar or jewelry anyway. It just gets in the way.' Complying, you quickly strip and give the vulpine an unimpeded view of your naked body, turning when directed. [else]I must commend you on how liberated you are. Most of your kind seem to try and hide their bodies beneath cloth and armor, so it is refreshing to find someone like you who understands that it just gets in the way when you want to 'frolic'. You unabashedly display your naked form to the vulpine, turning when directed. [end if]'Hmm. Very nice. I haven't seen a soul quite like this for a while... Alright, what did you want to know? My impression of your physical state, or your mental condition?'";
	say "     [bold type]Would you rather his opinion on your form or your mind? (Only Form available at the moment, sorry.)[roman type][line break]"; [Mind yet to be added]
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Form. What is his impression on your outward appearance?";
	[say "     ([link]N[as]n[end link]) - Mind. You are curious what he can tell about your psyche.";]
	if Player consents: [Physical]
		say "     [KitsuneGenderComment] [KitsuneGenitalComment]";
		say "     [KitsuneSpeciesComment] [KitsuneSizeComment]";
	[else: [Mental]
		say "     [KitsuneHHMLComment] [KitsuneLevelComment]";
		say "     [KitsuneFeatComment]";]
	[WaitLineBreak;
	say "     [KitsuneClothesComment] [KitsuneWeaponComment] [KitsunePetComment]";]


Section 3 - Kitsune Comments

to say KitsuneGenderComment: [Comments on player's gender]
	if player is herm and breast size of Player is 0: [Male Herm]
		say "     'I see that you bear the organs of both man and woman. I would be curious to know whether you were born as such, or inherited them from the ongoing catastrophe. One advantage that I hope that you have taken advantage of is the improved ability to penetrate while being penetrated. If you and your partners are flexible enough, you might even be able to have [italic type]all [roman type]of your holes filled at once. I am however noticing a flat chest though, which I must say has its own appeal even though it means that there is less of you to caress. [if player is mpreg_ok]I'm also sensing that you have a little secret. Something to do with an anal birthing chamber perhaps? [end if]";
	else if player is herm and breast size of Player > 0: [Herm]
		say "     'I see that you bear the organs of both man and woman. I would be curious to know whether you were born as such, or inherited them from the ongoing catastrophe. One advantage that I hope that you have taken advantage of is the improved ability to penetrate while being penetrated. If you and your partners are flexible enough, you might even be able to have [italic type]all [roman type]of your holes filled at once. I also like that you have breasts. Gives me more to caress and stroke while we speak of sweet nothings. [if player is mpreg_ok]I'm also sensing that you have a little secret. Something to do with an anal birthing chamber perhaps? [end if]";
	else if player is male and breast size of Player is 0: [Male]
		say "     'Oh my. Such a handsome man you are. If you've always had these looks then I'm sure that you were greatly admired by women, and probably men too. Otherwise, the outbreak in the city has really been kind to you. It would be selfish of you not to want to grace as many people with your presence, some more closely than others. Myself included, I might add[if player is mpreg_ok]. I'm also sensing that you have a little secret. Something that males don't normally have the ability to do[end if]. ";
	else if player is male and breast size of Player > 0: [Dick Girl]
		say "     'I don't know where to look. Your breast or your cock. They're both calling to me, and I don't know which I like more. I would be curious to know whether you have always been gifted so, or whether the ongoing catastrophe granted you such a pleasing body. All the fun of being able to penetrate someone while having them caress the curves of your chest. [if player is mpreg_ok]I'm also sensing that you have a little secret. Something to do with an anal birthing chamber perhaps? [end if]";
	else if player is female and breast size of Player is 0: [Cuntboy]
		say "     'I hope that you've been making mischief with that flat chest and the slit between your legs. Trick people into thinking that you bear the gifts of manhood, then shock them when you reveal that treasure between your legs. Having a flat chest has its own appeal, but it does mean that there is less of you to run my hands over. [if player is mpreg_ok]I'm also sensing that you have a little secret. Something to do with an anal birthing chamber perhaps? [end if]";
	else if player is female and breast size of Player > 0: [Female]
		say "     'Aren't you just a delight to sex-starved eyes, my dear. Have you had problems with men and women following you home and wanting to get to know you? I'm sure that the residents of the city have been noticing you too. I wouldn't mind being a little closer to you, running my hands over your breasts, then across your tummy before sneaking down towards your cleft for just a moment. [if player is mpreg_ok]I'm also sensing that you have a little secret. Something to do with an anal birthing chamber perhaps? [end if] ";
	else: [Neuter]
		say "     Oh. Well, you're a bit boring. Why are you so determined to miss out on the fun that you would disfigure yourself? Or was this forced upon you? If so, I'm sure there must be some sort of drug that can fix you one way or another. Pills? Potions? The loving touch of an over-enthusiastic lover to heal you of your deformity? Please excuse my rudeness, but your lack of genitals causes a sense of unease in me. [if player is mpreg_ok]I'm also sensing that you have a little secret. Something to do with an anal birthing chamber perhaps? [end if]";

to say KitsuneGenitalComment: [Comments on player's genitals]
	if cock length of Player is 0: [No penis]
		say "Focusing on your groin, I can plainly tell you that you don't appear to have a penis. Were you aware of this? I certainly hope so. ";
	else if cock length of Player < 5: [Small penis]
		say "Your cock isn't even half the size of mine, but I get the impression that you know how to use it. Technique is more important than size[if CockName of Player is listed in infections of KnottedCockList]. I'm loving the knot as well. It really improves a penis[end if]. ";
	else if cock length of Player < 8: [Average penis]
		say "That looks to be a pretty normal sized cock. Not particularly large or small, though the average in the city is probably a bit bigger[if CockName of Player is listed in infections of KnottedCockList]. I'm loving the knot as well. It really improves a penis[end if]. ";
	else if cock length of Player < 15: [Large penis]
		say "That is an impressive cock you have there. Could really fill a person up, and there are plenty of candidates for such a filling[if CockName of Player is listed in infections of KnottedCockList]. The knot is an added bonus, just to make sure your partner stays where you want them[end if]. ";
	else if cock length of Player < 21: [Huge penis]
		say "Goodness. You're cock is nearly twice the size of mine! That's going to be more than a mouthful when that goes in, or the equivalent of any other orifice that you have offered to you[if CockName of Player is listed in infections of KnottedCockList]. Also, the knot will nicely stretch whomever you plug it into, ensuring that they won't forget being with you[end if]. ";
	else: [Monstrous penis]
		say "Watch where you swing that thing. You could definitely call that thing a spear, and I hope that you give it a regular polish, preferably with help[if CockName of Player is listed in infections of KnottedCockList]. You might want to warn your partners about the effect your knot may have on them though[end if]. ";
	if Ball Size of Player is 0 or CockName of Player is listed in infections of InternalCockList: [No balls]
		say "Either you don't have any balls, or you're hiding them from me. Rest assured, I will find out if you are hiding them from me. ";
	else if Ball Size of Player is 1: [acorn-sized]
		say "Ooh. Aren't your balls cute. They don't look like they'll whip up much batter, but I imagine that they'll sufficiently complete the cake. ";
	else if Ball Size of Player is 2: [Dove egg size]
		say "How delightfully normal your balls are. I'm glad to see that you haven't gone too wild with the growth hormones that I've seen your kind using. ";
	else if Ball Size of Player is 3: [Chicken egg size]
		say "Your balls are on the large side, aren't they? All the better for producing semen and letting your partner know when you have bottomed out. ";
	else if Ball Size of Player is 4: [Goose egg size]
		say "Your balls look like they would be noticeably heavy. Don't close your legs too quickly or you'll hurt yourself, though I imagine that they give you a lot of cum to plaster people with. ";
	else if Ball Size of Player is 5: [Ostrich egg size]
		say "Are you sure that your balls need to be that large? They make quite a nice target I would imagine, and you might then have trouble walking. On the up side, you can probably admire the bulge of your partner's tummy from your seed. ";
	else if CockName of Player is "Tanuki":
		say "From the look of it, you have a sleeping bag between your legs, along with the facilities to feed a small starving nation. You Tanukis really do love your balls. ";
	else if Ball Size of Player is 6: [BasketBall Size]
		say "I think that you have gotten carried away with growing your balls. Beyond being able to do a one man bukkake, there can't possibly be any advantage to having them that size, can there? ";
	else: [Beach Ball Size]
		say "Your balls look silly. I have no idea how you even walk. Do you perhaps bounce along on them before bathing in your own cum from the stimulation? ";
	if cunt depth of Player is 0: [No vagina]
		say "Unless I'm mistaken, you don't seem to have a pussy. Such a shame, I would have liked to pet it. ";
	else if cunt depth of Player < 5: [Small vagina]
		say "Your partners must love you, considering how tight I imagine you are, though I doubt they can go particularly deep. ";
	else if cunt depth of Player < 8: [Average vagina]
		say "I think that you should be able to fit most normal cocks in your pussy, though you might want to be careful with the extremely well-endowed. ";
	else if cunt depth of Player < 15: [Large vagina]
		say "Making sure you can take any cock you want in your pussy? Unless they are obscenely large, I think you've achieved your aim. ";
	else if cunt depth of Player < 21: [Huge vagina]
		say "Do you think that perhaps you've gone too far? There shouldn't be any cock that you can't fit in your pussy. ";
	else: [Monstrous vagina]
		say "I think by this point it isn't so much about what cocks you can fit in your pussy, but rather whether you can fit a person in there. I hope you have good muscle control in your vaginal walls. ";
	if breast size of Player is 0: [Flat-chested]
		say "Some might think that the absence of breasts detracts from your image. Not me. It has its own appeal and means that I can feel your heartbeat more easily.'";
	else if breast size of Player < 3: [A or B]
		say "I think that your breasts are very pretty. They compliment your appearance and give enough for a discerning fox to have a pleasurable squeeze.'";
	else if breast size of Player < 5: [C or D]
		say "Now those are some nice breasts if ever I saw some. Enough to give someone a comfy head rest while snuggling or snoozing, but small enough that your life can go on without much difficulty.'";
	else: [E and upwards (Maybe DD. I don't know breast sizing)]
		say "Those are quite considerably sized breasts. I think that you could almost use them as weapons, especially given the current state of the city.'";

to say KitsuneSpeciesComment: [Comments on player's species]
	if player is not pure or Bodyname of Player is "Hybrid":
		say "     'Couldn't just settle on one infection could you? Had to try multiple, and now you don't really count as anything in particular beyond being chimeric. I suppose that I shouldn't discount the possibility that this was forced upon you though. If it pleases you, I could make you into quite the attractive kitsune like myself. Fluffy fur, multiple tails, dashing figure... what's not to like? That was a rhetorical question, just in case you were going to answer. I like myself and that's the main thing, just like it is important that you are content with whatever form you take. ";
	else if BodyName of Player is "Kitsune":
		say "     'Now there's an attractive form. I must compliment you on your impeccable choice in appearance, and whomever it was that gave you such a fine figure deserves a reward. Such lush fur and beautiful coloration really brings out your eyes. If I were you, I would be careful to stay looking like this while adventuring around the city and perhaps convincing others to consider it as a look. Because to be honest, who wouldn't look good as a multi-tailed fox? However with such a form comes responsibilities such as mischief and trickery, though not of the malicious kind, we aren't monsters. Perhaps you can tell me about your activities when you have the time. Preferably in [italic type]great detail[roman type]. ";
	else if BodyName of Player is "Tanuki":
		say "     'The intention seems to be there, but look at me. A kitsune. Now look at you. A tanuki. While I'm sure that you can be just as mischievous, don't you think that you would look better doing so with multiple tails and a dashing figure rather than waddling along with just one large tail? Well, I suppose the Tanuki in the park wins this round, but don't expect me to give up on you. I'll have you showing off luxuriant fur and the rakish smile of a fox eventually. Criticism aside, your form suits you admirably, and as long as you uphold the tradition of trickery, then I won't have much to complain about. ";
	else if BodyName of Player is "Jackalman":
		say "     'Came out on top over the shopkeeper in the mall, did you? I would imagine that you had help, and I think I know who from... Be careful of Nermine. She has access to allies that she shouldn't have, and I do not know her end goal. But you weren't asking about her, so back to you. I must say that the fur looks sleek and has its own inherent warmth, and such a lustrous black. The ears are a little large for my taste, but I would imagine that they allow you to hear things a lot more effectively. I also appreciate the toned body that it has given you, not too bulgy, but also giving one something firm to caress or hold while you are being intimate. ";
	else if BodyName of Player is "Jackalboy":
		say "     'Under the sway of the shopkeeper, are you? Be careful of her. She has access to allies that she shouldn't have, and I do not know her end goal. But you weren't asking about her, so back to you. I must say that the fur looks sleek and has its own inherent warmth, and such a lustrous black. The ears are a little large for my taste, but I would imagine that they allow you to hear things a lot more effectively. I also look forward to seeing how your body feels. There must be muscles somewhere, but you look so soft, just waiting for my paws to caress you. ";
	else if BodyName of Player is "Nightmare":
		say "     'Your form belies more power than one would expect from a horse. You also look a lot more... malevolent. Therefore, I deduce that you have taken over the Stables Hotel and are the new 'Stable Master'. Perhaps you should have considered other options for defeating him before you became a manifestation of nightmares. Between bored deities, practitioners of magic, and the few remaining scientists in the city, someone might have had more ideas on overcoming him. But I'm letting my prejudices control me. If you are happy with how you look, then who am I to judge? To be honest, I'm a little afraid of you. But only a little. ";
	else if BodyName of Player is listed in infections of TaurList:
		say "     'Ooh, you're tauric. How interesting. Has this change encouraged an interest in archery, or has it given you an obsession with pretending to be rider and steed, swinging your weapon at your foes? I jest, but you have to admit that it sounds pretty fun. Being a taur must give you all sorts of new possibilities. Increased speed, height advantage over many others, the ability to strap people beneath you [if player is male]so you can fuck them [end if]while you run... Or maybe you enjoy having them atop you, whether it is in the bedroom or galloping through the city. Explore these new possibilities. Take my word, it's fun. ";
	else if BodyName of Player is listed in infections of LatexList:
		say "     'I think that you're taking [']kinky['] to the next level by being made completely from latex, though I would imagine that it makes cleanup considerably easier after you've had your fun. Do you creak or squelch when you move as latex seems to do when worn as clothing, or does it just move out of the way, allowing you to move stealthily and avoid attracting the attention of predatory latex enthusiasts? While it isn't a form I would want to have myself, I can appreciate your adventurousness choosing it. So many of the city's residents seem to be boringly furry canines... ";
	else if BodyName of Player is listed in infections of FoodList:
		say "     'You're taking the capabilities of the nanites a little too far, don't you think? You're literally food. Gazelles might get hunted by lions, deer by wolves, and mice by hawks, but I think that even the prey might want a piece of you. Do you provide your own lubrication with syrup or perhaps creampies are a little more literal for you? The craftsmanship of your form is exquisite but surely there is the constant temptation to just have a lick to see what you taste like, possibly even a bite. Luckily the nanites will repair you so should you succumb to your curiosity... ";
	else if BodyName of Player is listed in infections of MachineList:
		say "     'You seem to have taken on a more mechanical appearance, and I'm not sure whether I would consider you a cyborg now considering your severely reduced organic matter. I'm a little saddened by this to be honest. Your world places greater importance on engineering marvels and less on the wonders of nature that are already surrounding you. I will however admit that you're less machine as much as inorganic life, so you do have some redeeming factors. Be careful of people offering you upgrades. You don't want to sacrifice autonomy for such tawdry features such as flashy lights or larger genitals. ";
	else if BodyName of Player is listed in infections of SlimeList:
		say "     Aren't you the cutest jelly I've ever seen. Or do you prefer to be called a pudding, flan, or slime? Whatever you call yourself, you look soft and wobbly, desirable traits in the current climate of the city. Do you have a flavor, or are you merely gelatinous? Sorry, my curiosity is overwhelming my manners. Your form looks like it would make squeezing through small gaps a lot easier, though you probably also need to be careful of gratings and drains. I won't even pretend to understand how your insides work, but you look happy and moderately healthy, so I shall leave it at that. ";
	else if BodyName of Player is listed in infections of HumanList:
		say "     'Well, aren't you the adventurous one? With all the beasts roaming the city and you still look human. Is there a particular reason behind this? A strong fondness for such a mundane appearance, or perhaps you haven't found the form which you desire? Might I suggest a certain fluffy vulpine form with the potential to gain an ever increasing number of tails as you age? I'd be more than willing to assist you. Though if you are sentimental about being human, I must say that I admire your willpower when surrounded by so much temptation. ";
	else if BodyName of Player is listed in infections of AmphibianList:
		say "     'You look... damp. I'm glad to see that you have found a source of moisture within the city to keep yourself well. I won't ask what it is, but I have a few ideas... I would imagine that there are some advantages to being perpetually slick such as always being lubed up, being able to fit through tight gaps, and going down slides would be immense fun with how you fast you could go. Equally, there must be disadvantages such as slimy handshakes and the fear of mold. No matter how you look, there are pros and cons. Except for me. I'm perfect. ";
	else if BodyName of Player is listed in infections of AquaticList:
		say "     'You look like a fish out of water, though apparently one with lungs. It would be unfortunate if you asphyxiated after all. Your flesh is quite eye-catching and seems to retain just enough moisture to remain shiny, almost as if you've just finished a shower in preparation for kinky times. The shimmer is mildly distracting, a feature that I hope you are taking advantage of. Make sure you are careful of any bigger fish in the figurative pond, or cats. No one is allowed to hurt my little fishy. At least, not without your permission. ";
	else if BodyName of Player is listed in infections of AvianpredList:
		say "     'I must say, your plumage looks soft, and such a regal look it gives you. Not as much as having nine tails would, but definitely a respectable image. Sharp claws to defend yourself, keen eyes to avoid missing any detail, and the mobility that your wings give you is something that even I'm a bit jealous of. I bet rodents are glad that you aren't hunting them because you would surely catch them with those looks. Or pitch, if that's your preference. Make sure you avoid patrolling aircraft as they are very confrontational with those trying to escape the city. ";
	else if BodyName of Player is listed in infections of AvianList:
		say "     'Aren't you flashy? Such resplendent plumage really dazzles the eyes. Have you considered using that against your foes? While I would imagine that it has its advantages for attracting a mate, you might also catch the eye of someone a bit more... predatory. Especially the large cats roaming the city, though more for sexual conquest than food, fortunately. Having wings would certainly help you too, for escape or to explore, just make sure you avoid patrolling aircraft as they are very confrontational with those trying to escape the city. ";
	else if BodyName of Player is listed in infections of BovineList:
		say "     'I was unaware that there were any farms nearby, or did you wander here from the plains? I jest, but with the number of wolves stalking the streets, a herbivore such as yourself is likely in a considerable amount of danger of becoming prey. Luckily, in the current situation, they are more likely to sate their lusts than their appetites, and with how you pull off the look, even I'm considering letting my instincts loose and basting you in sauce. I hope that I'm not making you uncomfortable. I wouldn't ever do something like that. At least not without your consent. ";
	else if BodyName of Player is listed in infections of CanineList:
		say "     'Who's a good [if player is male]boy[else if player is female]girl[else]doggy[end if]? Yes, it's you. Yes it's you. I'm sure I have some balls around here somewhere that you could play with if you wanted. You just have that look that makes me want to rub your tummy and maybe a bit more. Endearing eyes, soft fur, and such an expressive tail. Do you have a preference for herding sheep, hunting deer, or strengthening your bond with a companion? If so, make sure that these are your own thoughts, and not the programming of the nanites taking control of you. ";
	else if BodyName of Player is listed in infections of CervineList:
		say "     'You're slightly more adventurous with your form than I would expect from a mortal. Deer and elk are usually for the extra horny, if I might make an observation. With such muscular haunches, you must be quite the hit with the lupine community skulking around the city, though I imagine that a few other people will have also expressed interest in you. Don't be afraid to stand up for what you want. A moose with sharp hooves and hard antlers is no easy prey, even for a pack of wolves. So as long as you can mimic their strength, there will be few who can refuse your desires. ";
	else if BodyName of Player is listed in infections of EquineList:
		say "     'What a strapping steed you look. Elegant face and muscular haunches. I wonder whether this form has also gifted you with the speed and endurance that your species is known for, though equally, perhaps you have inherited the stubbornness of a mule. There's an entire hotel of your sort, though from what I hear, the manager is a bit of a nightmare to work with. Some of the employees aren't particularly kind-hearted either. I hope that you're getting enough socialization around the city, whether it is mere companionship or passionate copulation. We know how important that is to animals that live in herds. ";
	else if BodyName of Player is listed in infections of FelineList:
		say "     'Aren't you just the cutest kitten? Sharp claws, adorable tail, and yes... there's the pent-up rage dancing behind your eyes, or maybe that's lust. The two do have some similarities, and felines are renowned for both, especially in the tales. I imagine that this transformation has helped your hand-eye coordination and agility, but who knows? Perhaps you were ungainly and clumsy beforehand. Either way, you ooze a sense of reserved superiority, though perhaps that isn't the only thing you ooze, nor do I believe that it is always your dominant feeling. You wouldn't want people to think you predictable after all. I shall avoid giving you a tummy rub just in case. ";
	else if BodyName of Player is listed in infections of InsectList:
		say "     'You seem to be more adventurous with your form than many in the city. Well, those who have a choice anyway. There are rather a few ants, bees, and wasps hidden from the view of the military. The segmented body really accentuates your waist and your color really suits you. I wonder, do you feel an overwhelming urge to be part of a hive, or is your will stronger than that? Just think of all those drones rushing around at your beck and call, feeding, fucking, and comforting you. On the other hand, independence is one of your most attractive traits. That and your insightful conversations. ";
	else if BodyName of Player is listed in infections of LeporineList:
		say "     'You look like prey and that may not play into your advantage. Or maybe you use it to lure your enemies into a false sense of security and you take advantage of others instincts. I'm sure that many find you adorable either way with you cute wiggly nose, long soft ears, and penchant for nibbling upon vegetables. Just be sure that none of them decide to try and take you for their own and your speed doesn't save you. I know of at least a few wolves in the city with a fetish for predator/prey roleplaying and you look like you might fit the part. Hopefully you would be able to [']fit their part['] too, if you know what I mean. ";
	else if BodyName of Player is listed in infections of MarsupialList:
		say "     'Do boomerangs or venomous creatures evoke intense feelings of lust from you? Weirdly, I've only seen your sort hopping about the Red Light District, but I'm sure that's just a coincidence. You have admirably strong legs, and I'm sure that some people would salivate at the thought of having them wrapped around their heads while they serviced you. The pouch may even allow you to transport your children around to help you defend yourself from aggressors, because there couldn't possibly be anything wrong with using your young as living weapons. ";
	else if BodyName of Player is listed in infections of MustelidList:
		say "     'That's quite the pungent odor you have there. I imagine it can be detected at quite a distance so you may be able to warn some people not to mess with you. There is also the chance that they could use this to prepare for your approach and ambush you instead, but everything has a trade off. Your form should allow you to squeeze through some gaps and fold yourself quite nicely, almost like an odorous noodle. Just make sure you don't get stuck. Some of the denizens of the city are quite opportunistic, and uninvited cream fillings can be embarrassing. ";
	else if BodyName of Player is listed in infections of OrcList:
		say "     'You're looking a little green? Are you alright, or have you contracted Orc? Orc is a condition where you bulk up and often experience noticeable tooth growth. Severe cases even exhibit elevated violent tendencies and a desire to rut or be rutted. I don't think that my skills are of a medical standard, but if I'm not mistaken, you are indeed an orc. I think that it has done wonders for your musculature, just make sure that you don't forget that you have a brain as well as brawn. Sex isn't as fun when your partner is busy trying to flex rather than thinking of innovative ways to spice up the coupling. ";
	else if BodyName of Player is listed in infections of PlantList:
		say "     'Hmm. From your appearance, it would seem that plant-life is making an effort to compete against animal and machine transformations. If someone looked closely enough, I think that they would see chloroplasts in your cells. With thickened cell walls, you may even have increased rigidity in some areas if you know what I'm saying... Bah, what do I know? I'm not a scientist. I hope that you have control of some vines so that you can use them like tentacles. While I doubt that the city needs it, with enough understanding of your form, you might be able to release pheromone-laced spores to aid in seduction. ";
	else if BodyName of Player is listed in infections of PorcineList:
		say "     'I really hope that you are polite with your sexual advances, or you're going to get called a pig in a not-so-nice manner. Between your generous body size, bristly hide, and distinguishing squeals and grunts, I hope that you don't put people off before they get to know your personality. Some advantages that you have are a keen nose, admirable intellect, and enough padding to allow the tightest of hugs to feel reassuring rather than restrictive. You may develop a greater appreciation of mud puddles but make sure you wash before attempting to woo someone who is less enthusiastic about dirt. ";
	else if BodyName of Player is listed in infections of PrimateList:
		say "     'You aren't that far off being human, so I don't think that I can complement your imagination, but you definitely look different. The muscular limbs, firm tummy, and characteristic gait of your species really shine through. If you ask nicely, I might even let you have a banana, though don't tell anyone as I wouldn't want them to know that you're my favorite. With how you are built, I would imagine that you could pummel your opponents quite easily, and, luckily for you, the nanites will fix them in time for you to claim your reward. Just remember that there is always someone, somewhere, who can defeat you and may give you a taste of your own medicine. ";
	else if BodyName of Player is listed in infections of ReptileList:
		say "     'Aren't you a majestic scaley beast. Pearly fangs, sharp claws, leathery hide... You really invoke deep feelings of lust for me... Please excuse my outburst, I shall try and give a more useful opinion. Your scales look like they could give you a decent amount of protection, though I hope that you don't have to contend with the perils of being ectothermic. Your visage should inspire respect from those you meet, but as some of them are utter boors, I wouldn't rely on this as a tactic. Instead you should probably demonstrate your skill with tooth and claw, but not too severely, especially if you want to claim your reward. You may also want them to be able to remember their foolishness in challenging you. ";
	else if BodyName of Player is listed in infections of RodentList:
		say "     'How often do people tell you that they can smell a rat? I would imagine that it gets old very quickly, as would, I assume, comments on the emotions a long hairless tail evokes. Because you've probably heard all of them, I shall speak no further on the subject and instead focus on your more savory features. Your eyes look sharp, as do your claws, though in obviously different ways. While I wouldn't suggest testing it, you may be able to contort through smaller gaps and survive greater falls. But you don't want to get stuck where a wandering creature might take advantage of you, nor do you want to become a stain on the pavement. ";
	else if BodyName of Player is listed in infections of UrsineList:
		say "     'I see that you have a thing for bears. Is it a size thing, or do you have a fetish for really tight hugs? The feel of a larger body pressed up against your own, wrapping you in an embrace and allowing you to feel their warmth through their fur... Mmmmm, such a delightful image. Perhaps I could persuade you at some point to allow me this feeling, or perhaps you would prefer to be the one hugged? Why not both? I have all the time in the world, or at least as long as your soldiers don't move in. I get the impression that they aren't big on hugs at the moment. ";
	else if BodyName of Player is listed in infections of VulpineList:
		say "     'So close to the perfect form, but you missed out slightly, don't you think? Still, such lush fur and beautiful coloration really brings out your eyes, and you only need a few more tails to improve the look. If you ask nicely, I might help you in the final step to becoming a kitsune. All it would take would be a hand in collecting some of my essence, or possibly a mouth... But back to you. Even as a normal fox, there are certain expectations. Ignore the myth about foxes only enjoying being penetrated themselves. Your sexual preferences should be your own. Also, while you don't need to be as mischievous as that coyote in the park, at least try and commit some trickery. There is a reputation to maintain. ";
	else if Bodyname of Player is listed in infections of BodyHorrorList:
		say "     'Well then... would you look at you. I don't think I've seen anything as, shall we say, [']full of character['] for quite some time. I can't imagine that there are many denizens of the city who would willingly choose to look like that or find it attractive, but the majority is quite often wrong so you have my admiration for your confidence in going out looking like that. You really do look like the stuff of nightmares, though humans really do have an obsession with chaos, evil, and the Nightmare Realms so I suppose that I shouldn't be too surprised. Just promise that you won't let the corruption of the outside seep to deeply into your soul or you might find yourself hunted by more competent individuals that soldiers. ";
	else if Bodyname of Player is listed in infections of OtherworldlyList:
		say "     'Someone's enjoys their science fiction and isn't afraid for everyone to know it. Yes, I know what sci-fi is, this isn't the first time I've visited your world and I must say that it is entertaining at leats for a while before you have parasites ripping their way out of a host's body or ripping someone's spine out. I much prefer xenophilic relationships deepening as opposed to attempts at conquest but to each their own. At least with how this city is at the moment sex is much more prevalent. If you do require a host for your young at least find someone willing and impregnate them in a more conventional manner. Childbirth may be painful, but much less so when they don't cause permanent damage to the mother. ";
	else: [Anything else]
		say "     ERROR. If you are seeing this, then it means that you are of an infection that we haven't covered in the dialogue. Could you please report this to the bug channel of the Flexible Survival Discord server, and we will try to remedy this. Thank you.";

to say KitsuneSizeComment: [Comments on player's size]
	if scalevalue of Player is 1:
		say "My goodness, you are small. I would imagine that you have to be extra cautious of the infected in the city. Being stepped on, eaten, blown away, drowned in cum... so many things could go wrong. I don't know whether to view you as courageous or a fool.'";
	else if scalevalue of Player is 2:
		say "You're a little smaller than I would have thought, but I must say, it really emphasizes your cuteness. How could anyone hurt such an adorably-sized being such as yourself? Unless you're into that sort of thing, then I suppose they might be allowed to with permission. But if anyone bullies you, you know where to come.'";
	else if scalevalue of Player is 3:
		say "You seem to be a standard size for the creatures of this realm. Not too large, not too small. Being of similar height, it makes it easier for me to use your buildings and seats. Puts you on an even footing with the other infected too.'";
	else if scalevalue of Player is 4:
		say "You're a little larger than I would have thought, but I imagine such height comes with its advantages. You can see over most people's heads and look more intimidating. Are most of the infected cautious of you, or do their lusts overwhelm the fear response?'";
	else: [Size 5]
		say "You... are big. And even that feels like an understatement. Forget about looking over people, you could look over vehicular transports. I can't imagine how much you need to consume to sustain yourself, but I really hope that you haven't been feeding on other people. I doubt that the infected run at the sight of you, but if they could still think logically, they probably would.'";


Section 4 - Kitsune requests

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
	ItemGain food by 1;
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
	ItemGain water bottle by 1;
	now lastwaterrun is turns;
	increase Kitsunewater by 1;
]

Section 5 - Fucking Kitsune

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
				wait for any key;
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
				say "     As your coupling progresses, the pre coating the Kitsune's length becomes more copious, allowing you to more easily slide it into your throat. You begin to experiment with ways to further excite him, a fresh spurt of pre rewarding you each time you do, the flavor different to any that you have experienced before. The two of you begin to sync your head movements, gulping noises squeezing from your mouth as he thrusts as deep as he can, his climax approaching. You doubt that your own will be far behind, the cocky vulpine seemingly well practiced at orally pleasuring his partners, simultaneously stimulating your clitoris, vaginal walls, and vulva with his talented tongue. Realizing that you have been neglecting his knot, you begin to rub it with your fingers even as you press your head further down his length so that your lips can kiss at it too. You hear an appreciative murmur behind you and redouble your efforts, determined to prove yourself a fair master over the experienced fox.";
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
	infect "Kitsune";
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
	infect "Kitsune";
	now lastfuck of Kitsune is turns;

to say Kitsune_DomDoggystyleAnal:
	say "     After taking your hand into his own, Kitsune leads you back to his four-poster bed with a sly smile. The silver vulpine seems to exude an air of submission about himself as he slowly strips himself of his loincloth and then proceeds to crawl onto his mattress on all fours. Quickly all nine of his tails spread out for into a wide fan to reveal the other's pink puckered tailhole and from what you can see, the vulpine has already oiled himself in preparedness for his encounter with you. Not seeing any reason to delay in giving the willing fox-man what he obviously desires, you hurriedly strip your clothes off and then casually kick them to the side before pouncing on your lover. Crawling over onto Kitsune's backside, you waste little time in lining your rigid cock up with the other's tailstar and then once you have a clear aim you slowly press your hips forward so as to stretch the vulpine open with your hard [Cock of Player] dick. A quiet hiss makes you look up at your lover, but a slow shake of the fox-man's head lets you know that the other is okay, or at least making a good pretense of the situation.";
	say "     Not wanting to bring the other man any undue pain you still your hips for a moment and allow Kitsune the time needed to adjust. It takes almost a minute before the vulpine is ready, but once he is you can almost not believe how tight and warm Kitsune is as he thrusts himself back onto you. Taking you all the way to the hilt the fox-man is quick to show you how submissive he is not as he pounds himself back and forth over you with growing abandon. Quickly seeing that the other is trying to control the situation between you two you grab Kitsune around the waist to hold him steady before showing him exactly who is in charge here. A quiet keen from the other has the silver vulpine submitting himself to you and then going still slightly as he allows you to fully dominate his body. Grunting and groaning with restless desire you slide your eager cock back and forth inside of Kitsune's vice tight fuckhole, loving the feel of his warmth and tightness, while at the same time leaning over him to brush your front against his back. Panting heavily into the vulpine's ears you take one of his pointed appendages in your mouth and then nibble on it playfully before reaching a hand down to stroke the fox-man's twitching cock.";
	WaitLineBreak;
	say "     A yelp of praise goes through Kitsune as he had not been expecting that; however, the vulpine takes it with growing adoration for you as his insides clamp down almost painfully tight onto your length. Moaning and gasping as the heat and feel of your lover overcomes your senses, you can feel that you'll explode inside of him soon as you hammer inside of Kitsune's ass with increasing force. The bed beneath the two of you beats against the wall like a war drum before battle as you continue to thrust both fast and furious inside of your lover. Kitsune lets out wailing howl when he feels you pull on one of his tails, your twitching hands having felt the plush appendage and grabbed onto it before you could stop yourself. The yowl seems to be more of excitement than of pain and in your sex-addled mind you can't help but tug just a little harder on the fluffy attachment to coax more cries from your partner.";
	say "     Muzzle panting, tails waving, and body growing heady with the pleasant scent of both sweat and sex mingling into his fur, you soon find Kitsune becoming an incarnation of ecstasy as he gives himself over to the passion of the moment. You smile predatorily as you release the other's now soggy ear in favor of biting down onto the fox-man's nape in a dominating hold. That seems to do it for Kitsune because just as soon as your teeth clamp down onto the vulpine's tender neck the other yelps, freezes, and then lifts his head to let out a howl so loud that you're sure someone outside must be hearing it. Though your concern for the outside world is almost moot at this point as you feel the vulpine splatter the hand you have stroking his cock with his cum. At the same time the fox-man is releasing himself into your palm the muscles of Kitsune's rear lock up so tight onto you that your orgasm can't help but discharge itself inside of the depths of the other's heated rump. Yelping in time with Kitsune's yowl you both find your climaxes coming together with the same intense force just as shudders rack up and down the sides of both of your spines.";
	WaitLineBreak;
	say "     By the time the two of you come down from your respective sexual highs, both of you can't help but pant and shiver as the pure ecstasy of the moment caresses itself up and down your bodies. Kitsune whines as you pull your hand out from under him - his cock is still shooting cum after all - and upon looking at the mess the other has made you find yourself smiling in perverted delight right as you lift your wet hand up to lick Kitsune's seed up from off of your fingers.";
	now Kitsunearoused is 2;
	infect "Kitsune";
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
	infect "Kitsune";
	now lastfuck of Kitsune is turns;

[to kitsuneinfect: [puts Kitsune as lead monster]
	setmonster "Kitsune";
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [No monster is selected here]
	infect "Kitsune";
	now non-infectious entry is true;]


Section 6 - Creature Insertion

to say Kitsune loss:
	say "These are filler messages and should not be seen, as there's no fight with Kitsune.";

to say Kitsune attack:
	say "These are filler messages and should not be seen, as there's no fight with Kitsune.";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Kitsune"; [name of the overall species of the infection, used for children, ...]
	add "Kitsune" to infections of VulpineList;
	add "Kitsune" to infections of FurryList;
	add "Kitsune" to infections of NatureList;
	add "Kitsune" to infections of MythologicalList;
	add "Kitsune" to infections of MagicalList;
	add "Kitsune" to infections of MaleList;
	add "Kitsune" to infections of TaperedCockList;
	add "Kitsune" to infections of KnottedCockList;
	add "Kitsune" to infections of SheathedCockList;
	add "Kitsune" to infections of BipedalList;
	add "Kitsune" to infections of TailList;
	now Name entry is "Kitsune";
	now enemy title entry is "Kitsune";
	now enemy Name entry is "Honoka";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The tall fox man laughs while shooing you away playfully. A blue ball of flame appears in his hand when you don't back down.[at random]";
	now defeated entry is "[Kitsune loss]";
	now victory entry is "[Kitsune attack]";
	now desc entry is "A silver furred vulpine stands on two digitigrade legs while looking at you calculatingly. Piercing azure eyes glare at you somewhat hotly as if the fox-man is trying to undress you with his eyes. Just exactly who or what is this creature that stands with nine soft and flowing tails at his backside? The loincloth tied over his waist tells you nothing, save that the other is well endowed."; [ Description of the creature when you encounter it.]
	now face entry is "elongated, with a silver foxy muzzle. While it may appear to belong to a normal anthro at first glance, the fact that your eyes are colored in an almost otherworldly, piercing blue easily disproves that assumption. Deep and fathomless as they are, anyone meeting your gaze can say that there is an air of wisdom and mystery about you"; [ Face description, format as "Your face is (your text)."]
	now body entry is "now that of a creature who is one of both vulpine and human in genetic makeup. A lithe frame hides the dense muscles you have underneath your thick pelt of soft fur. On down your twin digitigrade legs hold you steadily as you balance yourself on your rough paw pads. Grace and poise seem to be the words that define you as the power inside of your veins almost sings with mystical energy"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]silver-furred[or]heavily pelted[or]kitsune-coated[or]supremely fluffy fox-furred[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
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
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 5;
	now SeductionImmune entry is false;
	now libido entry is 30; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender" Use [one of] to vary ]
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is true;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 7 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Kitsune Infection"	"Infection"	""	Kitsune Infection rule	1000	false

This is the Kitsune Infection rule:
	if Player has a body of "Kitsune":
		trigger ending "Kitsune Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     Without knowing it your mind soon begins to push all of your human thoughts away to replace them with that of a kitsune's. This turns out to be both a blessing and a curse as new thoughts and memories, many of them too indescribable to the human mind, soon start to flood into your brain without you being able to control them. A keening cry soon makes you drop down onto your knees as your body begins to illuminate with a bluish light, the likes of which start to actually make the shadows around you crawl around like snakes. Power. Pure and unadulterated power is now coursing throughout your body, but without the control needed to handle it your form is soon turning in on itself to try and stop the sudden influx of energy. A cool hand ghosts over your head and instantly everything just stops. Blinking and then looking up with confused azure eyes you find the one that had given you your form staring down at you somewhat bemused.";
			say "     'I had a feeling that this might happen, though honestly I was hoping that it wouldn't,' Kitsune says, and you can only tilt your head to the side as you try and figure out what the other means. 'Don't try and think right now. You'll only make yourself sick, little kit.' The soothing voice of the other kitsune speaks into your head and instantly you want to do nothing more than cuddle up with the other in order to bury yourself underneath the older male's fluffy silver tails. 'Let's leave this place and return home, there is much I have to begin teaching you about how to be a proper kitsune.' With a flick of his graceful silver hand Kitsune summons up a large blue ball of fire and then brings it to his muzzle to blow against the flame. The mystic fire turns into a rolling cloud that soon over takes both you and he and the next thing that you know you are being transported away from the mundane world of humans. No one you know would ever see you again because in the other world where Kitsune resides you would spend the next nine hundred plus years studying how to be a proper kitsune. Though four hundred or so of those years would be spent as the other's bed mate.";
		else:
			say "     By the time the military comes in to clean up the city, you and Kitsune have gotten close enough to each other than you decide not to part. The silver fox-man is amused with the human's attempts to study him, but only because he spends nine-tenths of the time confusing their machines on the who/how/what of what he is. In the end they scientist who had examined the two of you end up releasing you after Kitsune's strain finally makes them surrender to their own ignorance. Of course this matters little to you because once you and Kitsune have stepped out into the free world you both spend the next hundred or so years getting to know each other even better than before, while at the same time you receive lessons on how to be a proper kitsune from the other male. As the years roll by more and more tails slip out from your backside, beautifully fluffy as well as luxuriously soft, the flowing appendages become the key sight for others to know you by as the title Many-Tales soon follows you around like a restless spirit. One reason why others call you this is because of your numerous tails, which you almost never seem to conceal with your powers, and two because of the stories you tell others when asked by them to retell some of your past during your more idle hours. Kitsune spends a lot of time teasing you about this when you two are alone together, but you return his jibes by calling him Old Man whenever he does. This results in a lot of fights between you two, though most of them good natured one, but it also ends with a lot of passionate make up sex with your long time friend.";


Kitsune Hideaway ends here.
