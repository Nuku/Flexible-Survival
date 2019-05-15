Version 2 of Hyper Squirrel by Nuku Valente begins here.
[Version 2.1 - Alternate 'Vaginal on Snow' scene - Stripes]

"Adds a situation to Flexible Survival with a hyperactive mechanic squirrel."

Section 1 - Hyper Squirrel Girl Event

Table of GameEventIDs (continued)
Object	Name
Hyper Squirrel Girl	"Hyper Squirrel Girl"

Hyper Squirrel Girl is a situation.
hsrp is a number that varies.
squirrelfucked is a number that varies. squirrelfucked is usually 0.
nosquirrelanal is a truth state that varies. nosquirrelanal is usually false.
squirrelspot is a number that varies.
when play begins:
	add Hyper Squirrel Girl to badspots of furry;
	add Hyper Squirrel Girl to badspots of hermaphrodite;

After resolving a Hyper Squirrel Girl, try looking;

Instead of Resolving a Hyper Squirrel Girl:
	project the figure of Snow_icon;
	if hsrp is 0:
		say "     As you wander around, you get the feeling that you're being watched. Catching a few brief glances of red fur, you realize your pursuer is playing with you. Growing tired of this, you sit down, and wait. A few minutes pass, when you hear a giggle to you left. You whip your head around, and there stands a squirrel girl, wearing the tattered remains of a buttoned shirt, buttons long gone. Squirrel herm, you correct yourself, as you notice the large bulge in her pants. Before you can call out to her, she takes off... but you have a feeling she'll be back.";
		increase hsrp by 1;
	else if hsrp is 1:
		say "     You once again feel someone's eyes on you, probably that squirrel herm again. Attempting to catch her off guard, you bolt to the nearest building, trying catch her before she runs again.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 20:
			say "You find a great hiding place and hurry to it as quietly as you can.";
		else if diceroll > 12:
			say "You spot an acceptable hiding place and creep towards it.";
		else:
			say "You don't see any good hiding places, so you just try to quietly duck down.";
		now bonus is ( ( diceroll minus 12 ) divided by 2 ) plus (( the Dexterity of the player minus 10 ) divided by 2);
		now diceroll is a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 15:
			say "You find a good spot to hide, and as she tries to locate you, she walks right past your hiding spot. You dive at her, pinning her to the ground... where she giggles again. 'That was fun! It's been far too long since someone's played with me.' Before you can ask her what she means, in the blink of an eye, she's out of your grasp, in front of you.[line break][line break]You get up, in a sitting position, and ask how she became a squirrel. 'Well,' she begins, 'I was on my way to classes, when two squirrel herms that looked kinda like I do now appeared... Anyway, one pinned me down, while the other forced me to suck her off...' Her eyes glaze over as her erection, ever present, seems to grow another inch, forcing her pants ever-tighter. She rubs you with her breasts, arousal showing on your own parts.";
			increase Libido of Player by 10;
			if Libido of Player < 50:
				say "     'You are cute and all,' she says, sighing, 'But I get the feeling you wouldn't keep up with me. Learn to be half as hungry as I am and we can talk, ok?' She rises up and leans over, kissing your forehead before she departs with a wink.";
				stop the action;
			say "     She sits and talks with you for a short time, explaining who she is, 'I'm Snow. I was a nice normal student before it all went down... Could be worse though. Most of the varmints around here are pretty braindead if you know what I mean. The huskies are kind of fun, but banging pure sluts gets old. Say, you seem like you have something between your ears.' She reaches and rubs the top of your head lightly, 'What say I come with you? I promise to not leave the toilet up and clean up after myself. It will be fun!";
			say "     Do you permit her to come?";
			if Player consents:
				say "     'Wait. I need something first. My breasts are too small,' she complains, though you have reason to doubt the truth of this statement, watching her mammaries jiggle about. 'You have something to fix that?'";
				say "     Give her something?";
				if Player consents:
					if the distilled milk is owned:
						decrease carried of distilled milk by 1;
						say "     'Awesome! Let's go.' She grabs your distilled milk and swallows it down even as she urges you to lead the way. She rises and follows you back to the bunker with a grin. As she walks, her already large, furry, breasts swell several inches. Her paws rub over them encouraging as she walks, eyes half lid and soft moans echoing the pleasure she feels. When you arrive at the bunker, she sets up shop upstairs, in the library.";
						now snow is in Grey Abbey Library;
						move player to Grey Abbey Library;
						increase score by 5;
						now Resolution of Hyper Squirrel Girl is 1; [Snow Recruited]
						now Hyper Squirrel Girl is resolved;
					else:
						say "     'Aw, you don't have what I need. You get some, and you got yourself a girl with talents. Trust me, it will be worth it.' She leans over to kiss either of your cheeks, then dances off into the city in a prance.";
				else:
					say "     'Well fine, play that way. I need a bigger chest. You want me, find me, and bring the goods,' she says, vanishing back into the city.";
			else:
				say "     'Well shoot then, I can do just fine on my own,' she insists, and is gone in a trail of hyperactivity.";
				now Resolution of Hyper Squirrel Girl is 2; [Snow rejected]
				now Hyper Squirrel Girl is resolved;
		else:
			say "     You think she won't be able to find you here, in this dark corridor. You hear her footsteps echoing ever-closer, when they fall silent. Suddenly, she appears behind you, lightly tapping your back. As you curse in surprise, she laughs at your feeble attempt to grab her. 'Too slow again! Come on, catch me...' You follow her giggles outside, as she turns a corner, and vanishes.";


Section 2 - Snow

Table of GameRoomIDs (continued)
Object	Name
Squirrel Den	"Squirrel Den"

Squirrel Den is a room. It is private.	[This is just a holding spot and not a real room]

The description of Squirrel Den is "Not a literal squirrel den, a basement actually. It is warm and dark in here. You can see books piled in messy stacks, and a small cot set to the side. It seems whomever lives here is stocked for the long haul, with small bottles of water and packaged food up on a shelf. There is a soft, musky, scent in the air.".

Table of GameCharacterIDs (continued)
object	name
Snow	"Snow"

Snow is a person.
ScaleValue of Snow is 3. [human sized]
Cock Count of Snow is 1.
Cock Length of Snow is 18.
Ball Size of Snow is 4. [goose egg sized balls]
Ball Count of Snow is 2.
Cunt Count of Snow is 0.
Cunt Length of Snow is 0.
Cunt Tightness of Snow is 0.
Nipple Count of Snow is 2.
Breast Size of Snow is 10.
[Basic Interaction states as of game start]
PlayerMet of Snow is false.
PlayerRomanced of Snow is false.
PlayerFriended of Snow is false.
PlayerControlled of Snow is false.
PlayerFucked of Snow is false.
OralVirgin of Snow is true.
Virgin of Snow is true.
AnalVirgin of Snow is true.
PenileVirgin of Snow is true.
SexuallyExperienced of Snow is false.
MainInfection of Snow is "Hyper Squirrel".

The description of Snow is "[SnowDesc]";

to say SnowDesc:
	project the figure of Snow_icon;
	say "     This sexual beauty is about six feet tall, with the features of a squirrel. She sports a massive pair of heaving breasts, larger than any you've seen, and a large bulge in her pants, barely covering the massive cock and huge balls. She normally has her tattered shirt and 'too-tight' pants, but they always seem to vanish before they can be damaged any further.[line break][line break]Snow loves messing with weapons and armor. Type [bold type]upgrade (weapon/armor)[roman type] and she'll give it a working over.";

Snow is in Squirrel Den.
The conversation of Snow is { "I love tinkering around with things, making them better.", "I was earning a degree in engineering!", "If we get rescued, what am I gonna do?", "Wonder what happened to the two that grabbed me...", "You have anyone you care about out there?", "Howdy!" }.
the fuckscene of Snow is "[sexwithsnow00]".
the scent of snow is "[snowscent]".

to say snowscent:
	if skinname of Player is "Hyper Squirrel":
		say "Snow's powerful scent is very alluring now, reminding you of those wild squirrels, which gets your blood pumping and your loins ache with increasing arousal.";
	else:
		say "Snow smells has a musky and alluring scent, a mix of male and female. Her scent has hints of sex, nuts, oil and metal to it beneath that powerful smell of herm squirrel.";


Section 3 - Smithing

A person can be a smither.
An armament can be improved.
An equipment can be improved.
Snow is a smither.

Smithing is an action applying to one thing.

Understand "upgrade [owned grab object]" as smithing.

Check smithing:
	if the noun is not owned, say "You can't offer what you don't have." instead;
	if a smither is not visible, say "Who is going to upgrade it? I see no one here." instead;
	if the noun is not armament and the noun is not equipment, say "They can only work on weapons or armor." instead;
	if the noun is nanite collector, continue the action;
	if the noun is equipment and ( AC of noun is 0 or effectiveness of noun is 0 ), say "They can only work on weapons or armor." instead;
	If the noun is improved, say "It is as good as it gets." instead;
	if the noun is wielded, say "Stop wielding it first." instead;
	if the noun is equipped, say "Stop wearing it first." instead;

Carry out smithing:
	project the figure of Snow_icon;
	say "     You offer up [the noun] to Snow. Snow smiles and blows you a kiss before moving off with it and tinkering it with a while before offering it back to you, mildly improved.";
	if the noun is armament, increase the weapon damage of the noun by 1;
	if the noun is nanite collector:
		if nanitemeter is 0:
			say "     Where did you get one of these? Did you swipe it? Hey, I'm not going to get myself into trouble modifying stuff you've stolen.";
		else if nanitemeter is 1:
			say "     Showing Snow the modified nanite collector, she gives it a once-over and a quick tune-up. 'I've still got those parts I took off, if you want me to restore it to how you got it. Or I can even add on that extra pump and the bigger reservoir if you want me to soup it up some more. Which would you like?";
		else if nanitemeter is 2:
			say "     Showing Snow the nanite collector you've obtained, she checks it out with a critical eye. 'This is a pretty fancy piece of tech. I don't quite understand how all of it works, but I certainly see a few ways to mod it. Now, I can bypass a few systems and take them out to make it lighter, but it'll be a little less effective. Otherwise, I can add an extra pump and larger reservoir. That'll make it work a bit better, but it'll be a little heavier too. Otherwise, I can just leave it alone. Which would you like?'";
		else if nanitemeter is 3:
			say "     Showing Snow the modified nanite collector, she gives it a once-over and a quick tune-up. 'How's that extra pump and bigger tank working out for you? If it's too heavy, I can take them off and restore it to how you got it. Or I can even strip it down some more and make it even lighter still. Which would you like?";
		say "     Modify it? [link]Light (1)[as]1[end link], [link]Standard (2)[as]2[end link], [link]Heavy (3)[as]3[end link] or [link]No Change (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 3:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "     Snow tinkers away at the nanite collector for a while. She strips out a few parts, bypassing them with hoses and wires to make the bulky thing somewhat lighter. By the time she's done, it is considerably lighter than when it started.";
			now nanitemeter is 1;
		else if calcnumber is 2:
			say "     Snow tinkers away at the nanite collector for a while, restoring it back to its original state and level of function.";
			now nanitemeter is 2;
		else if calcnumber is 3:
			say "     Snow tinkers away at the nanite collector for a while. She adds an additional pump and a larger tank to it, making it more powerful. By the time she's done, it is notably heavier than when it started.";
			now nanitemeter is 3;
		else:
			say "     You decide to not modify it, instead just sticking with just getting it cleaned and tuned up.";
		if calcnumber > 0:
			repeat with y running from 1 to number of filled rows in table of game objects:
				choose row y in table of game objects;
				if Name entry is "nanite collector":
					if nanitemeter is 1, now weight entry is 16;
					if nanitemeter is 2, now weight entry is 25;
					if nanitemeter is 3, now weight entry is 32;
					break;
	else if the noun is equipment:
		if the slot of noun is "shield":
			let boost be ( AC of noun * 5 ) / 100;
			if boost < 2, now boost is 2;
			increase AC of noun by boost;
			if AC of noun > 100, now AC of noun is 100;
			let boost be ( effectiveness of noun ) / 10;
			increase effectiveness of noun by boost;
		else:
			let boost be ( AC of noun * 5 ) / 100;
			if boost < 2, now boost is 2;
			increase AC of noun by boost;
			if AC of noun > 100, now AC of noun is 100;
			let boost be ( effectiveness of noun ) / 10;
			increase effectiveness of noun by boost;
	now the noun is improved;


Section 4 - Sexing up Snow

to say sexwithsnow00:
	project the figure of Snow_icon;
	if lastfuck of Snow - turns < 8:
		say "     She laughs loudly and gives you a shove. 'Hey, I want to keep it fresh. Go find something else to do, huh?'";
	else if skinname of Player is "Hyper Squirrel" and HP of Snow > squirrelspot:
		if HP of Snow is 1:		[Met Wild Squirrels once]
			now squirrelspot is HP of Snow;
			say "     Snow looks at you with some shock a moment before she grabs at your thick white fur, 'Oh, you ran into them!' she exclaims, 'And you got away, and you're sexy!' She stops talking then, shuddering and growing painfully hard. She begins to pant, almost hyperventilating as she shoves you up against a wall and kisses you fiercely for a moment, robbing you of breath. Finally, she draws back, swallowing heavily, 'I... am so sorry. You just... smell like them. God, I... I almost didn... stayed with them. It was hard, ok?' She smiles gently, 'I'm glad you got away.'";
			now tailname of Player is "Hyper Squirrel";
			now tail of Player is "You have a short white squirrel's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
			say "[snowsexmenu]";
		else:				[Met Wild Squirrels again since seeing Snow last]
			now squirrelspot is HP of Snow;
			say "     Snow buries her face in your thick, white fur again, taking in the squirrel scent with a deep, longing moan. 'Oh, you found them again. I can still smell them on you. Mmm... so sexy!' She wraps her arms around you tightly, kissing you fiercely as she rubs her throbbing cock against you. 'Oh, that smell makes me want to go out and find them again. I know we shouldn't, but my body keeps wanting to do it.' Shall you help Snow resist or give in along with her? (Y=resist, N=give in)";
			if Player consents:
				say "     You take Snow's cock in hand and stroke it, telling her that you're here for her and that she can satisfy herself with you as much as she needs. Kissing you passionately again, she moans her thanks and grinds her throbbing meat against you. 'Oh, I really need to get off. Let's have some fun.'";
				say "[snowsexmenu]";
			else:
				say "[snowsquirrelgivein]";
	else:
		say "[snowsexmenu]";

to say snowsexmenu:
	say "     Snow gives a bright giggle as you advance on her and she grabs at your right hand, drawing you tight to her curvy front. She grinds against you, the lump in her pants growing firm as she bites at an ear, 'Want to play? I am in the mood!'[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal on Snow";
		now sortorder entry is 1;
		now description entry is "fuck the horny squirrel";
		if Cock Length of Player > 4 and Cock Length of Player < 16 and nosquirrelanal is false:
			choose a blank row in table of fucking options;
			now title entry is "Anal on Snow";
			now sortorder entry is 2;
			now description entry is "fuck the squirrel's tight hole";
	if Player is female and Cunt Length of Player >= 10 and Cunt Tightness of Player >= 4:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal on player";
		now sortorder entry is 3;
		now description entry is "get fucked by the squirrel";
	if Player is not neuter:
[		if anallevel > 1:
			choose a blank row in table of fucking options;
			now title entry is "Anal on player";
			now sortorder entry is 4;
			now description entry is "get butt-fucked by the squirrel"; ]
		if Player is submissive and ( player is female and Cunt Length of Player >= 10 and Cunt Tightness of Player >= 4 ) or anallevel > 1:
			choose a blank row in table of fucking options;
			now title entry is "Dommed and fucked";
			now sortorder entry is 5;
			now description entry is "have the squirrel take you hard";
	choose a blank row in table of fucking options;
	now title entry is "Fellatio";
	now sortorder entry is 6;
	now description entry is "suck the squirrel's big cock";
	choose a blank row in table of fucking options;
	now title entry is "Cunnilingus";
	now sortorder entry is 7;
	now description entry is "eat out the squirrel's snatch";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Vaginal on Snow":
					say "[sexwithsnow01]";
				else if nam is "Anal on Snow":
					say "[sexwithsnow02]";
				else if nam is "Vaginal on player":
					say "[sexwithsnow03]";
				else if nam is "Anal on player":
					say "[sexwithsnow04]";
				else if nam is "Dommed and fucked":
					say "[sexwithsnow05]";
				else if nam is "Fellatio":
					say "[sexwithsnow06]";
				else if nam is "Cunnilingus":
					say "[sexwithsnow07]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Snow is turns;
	increase squirrelfucked by 1;
	now nosquirrelanal is false;
	wait for any key;
	clear the screen and hyperlink list;


to say sexwithsnow01:	[Vaginal on Snow]
	if Cock Length of Player < 8: 		[ expand player's equipment ]
		say "     She grabs at your groin and examines your [cock size desc of Player] [cock of Player] member critically, 'You know, with this whole crazy thing going on, we can be as big as we want, let me show you.' She nuzzles against the head of your shaft, tickling it with her soft muzzle fur before her warm wet tongue caresses over the tip slowly, sending oddly sharp tingles through your member. Even as she begins to slurp at the tip, it starts to grow pink and firm, growing into her slowly stroking hands as she descends on it, suckling and nibbling most carefully.";
		increase Cock Length of Player by 2;
		follow cock descr rule;
		say "     As pleasure radiates from your groin, she looks up into your eyes, smiling around your [descr] shaft as it swells slowly against her lustful attentions, pressing all the more firmly against you. With a wet pop, she draws free, flicking tongue over the tip one last time. 'See, already getting better,' she says encouragingly as she strokes in long lazy motions over your excited flesh, other hand moving to rub at your [skin of Player] balls, caressing the [Ball Size Adjective of Player] orbs gently as they begin to tingle and grow as well. The pleasure of it is too much, and you explode in thick strands of fertile spunk, painting Snow across her snout. She yelps out a laugh before sealing her lips around that bulging opening, swallowing the rest down eagerly before letting your satisfied member settle down. With a final nuzzle, she rises up, 'You get used to that bad boy, and we can continue later.'";
		increase Ball Size of Player by 2;
		now cockname of Player is "Hyper Squirrel";
		now cock of Player is "bright pink";
	else:
		if a random chance of 1 in 2 succeeds:
			say "     She draws you forward, fingers gently tugging at your clothes as she presses her large breasts to your front, 'I want to feel you on the inside,' she breathes into an ear, nipping it as she lays back with you on top, grinding her firm groin to you. When you are both disrobed, her furry fingers curl about your [cock size desc of Player] [cock of Player] spear and guides it up towards her moist petals. She hooks a leg around you as she angles it in, drawing you forward. You thrust into her firmly and she shudders with delight, her sopping passage offering nothing but pleasure to the abrupt entry. She grabs at you and pulls herself tight, rubbing her curvaceous front against you as she begins to rock her hips along that intruding shaft.";
			say "     Her tail flickers and spasms, brushing against your [Ball Size Adjective of Player] cum filled orbs occasionally as she coos and moans with satisfaction. Her own shaft, hard and aching with sexual awakening, prods gently into your belly as you rock deeply into the willing squirrel. The tool drips thick gobs of pre seed along both bellies, neglected but not forgotten. She grabs a hand suddenly, and pulls it up to her huge chest, encouraging you to caress and explore its thick fur and thicker soft flesh.";
			say "     She urges you on faster, faster, seemingly capable of taking any punishment you can mete out for her, each hearty pound making her body jiggle in a most distracting way as her passage clenches and trembles along your [cock of Player] cock, welcoming your building load. You bite at her neck and cheek, hugging tight to her as she grows like a vice around you. You can hold it no longer, filling her cunt with great jets of seed, your [Ball Size Adjective of Player] balls drawing up tight as you flood her womb with your fertile spunk. Worn with sudden fatigue, you settle on her, and she gently cuddles with you, holding you close and whispering sweet things in your ears.";
		else:
			say "     'Heck yeah!' Snow responds, paws already going to her pants and shirt. She's quickly nude and is helping you get undressed next. A paw finds its way to your [cock size desc of Player] manhood as soon as there's nothing in its way and she's stroking you the whole rest of the time you're undressing. Once stripped, she leans over her impromptu work table and flags up the fluffy tail of hers.";
			say "     Placing your hands on the squirrel's shoulders, you thrust into the warm confines of her wet cunt. She gives a chittering moan and pushes back onto you, curling that fluffy tail around your back. 'Come on. Let's see what you've got,' she says with a playful little butt wiggle. You grin and give her ass a playful swat along with a firm thrust to make her moan again.";
			say "     You bang away at the lustful squirrel, drawing more pleasured chitters and moans. Her swollen tits are mashed under her and spill out on either side of her furry body. Those big nuts of hers slap against [if cockname of Player is listed in infections of InternalList]your thighs[else]your own[end if] as they rock pendulously. As things heat up further, you start to hear her large shaft slapping against the underside of the table. The hyper-endowed squirrel makes for quite the sexy sight.";
			say "     When you are about to cum, you push fully into her with a last groan. Your [cock size desc of Player] cock pulses inside her squeezing tunnel as you unload shot after shot of semen. By the time you're done, you've emptied a [Cum Load Size of Player] load into her cunt and womb. And from her chittering moans, the way her ballsack twitches against [if cockname of Player is listed in infections of InternalList]your thighs[else]yours[end if] and the sticky splattering you hear below, you know she's unloading her hefty payload as well. By the time you've pulled out, she seems quite satisfied and remains flopped out on her work table while she recovers[if Ball Size of Player > 4] and while your excess load drains from her gaping vagina[end if].";
	now Wild Squirrels is active;

to say sexwithsnow02:	[Anal on Snow]
	say "     Snow looks you over and gives you a coy grin before turning around and slipping down her pants. She lifts her tail, flashing her ass and pussy at you, giving her rear a wiggle. 'Mmm.. I'm in the mood for something different, hon? How about you take the back door and stuff my tight nut hole?' she asks with a grin. 'What's the problem? Can't a girl-boy want something a little kinkier?' She swishes her tail around again while fingering her wet pussy, then spreading her juices over her pucker, getting it slick and glistening. Will you take her up on her offer?";
	if Player consents:
		say "     As you move in and grind your stiffening member against her behind, she grins in pleasure and braces herself against the nearby workbench. Pleased as punch, she moans happily as you press your glans to her slick hole and leak precum onto it, getting her even more wet and ready. As you sink your throbbing shaft into her, you grip her hips and press yourself to her back. 'Ohhh... that's so [if Cock Length of Player < 10]nice[else]big[end if]. Do me, baby! Stuff my tight, squirrely ass,' she demands, giving a squeeze around your [cock size desc of Player] [cock of Player] cock before pushing herself further onto it. Needing no more encouragement, you start pounding away at the eager herm.";
		say "     With your cock stuffed fully inside her plush rump, you move your hands to her bosom, groping those large tits of hers she enjoys so much. You pinch and tease her nipples, making her whimper and squirm all the more in delight as you fuck her, making the ride even more pleasant as those shivers of pleasure translate into ripples of her inner walls around your [cockname of Player] shaft. She releases the table and ends up pressed down atop it as she brings her paws to stroke her neglected cock and finger her pussy at the same time. You ride her good and hard until finally you push deep inside her fuzzy bottom and unleash your hot seed, filling her ass with your creamy cum. She's set off as well, spraying a sizable load of squirrel cum under her worktable and soaking her other paw in her juices. Worn out from the heavy fucking and satisfying finish, you both stay slumped there for a while, enjoying the pleasure of your kinky romp together while you tell her what a sexy squirrel she is.";
		now Wild Squirrels is active;
	else:
		say "     Snow frowns a little. 'Well, fine, be that way then. It's too bad you don't know a good thing when you see it, but I guess not everyone's into that kind of thing. I'm still up for some fun, hon. Let's see what other trouble we can get into,' she adds with a grin.";
		WaitLineBreak;
		now nosquirrelanal is true;
		say "[snowsexmenu]";

to say sexwithsnow03:	[Vaginal on player]
	setmonster "Hyper Squirrel";
	say "     She grabs at your hips and suddenly thrusts you up against a library counter, deft fingers working at your clothes, 'You won't be needing any of that,' she promises as she leaves it pooled around your ankles with a bright grin and increasingly large, throbbing, bulge in her pants. The presence looks almost painful as she gives you a firm slap across your [bodyname of Player] ass. She starts to squirm free of her pants as she speaks softly, 'Now don't you worry none. I'll be right gentle.' She allows her huge pink member to pop free, bulging with thick veins along its human-shaped but inhumanly pink and massive length. Thick gobs of preseed run down its underbelly towards her heavy, grapefruit-sized balls. At least she's not as big as those panther taurs.";
	say "     She brushes the tip of the member against your [cunt size desc of Player] [cockname of Player] nethers, teasing at you for a long moment before she eases into you, giving a playful growl as she does so. 'You know,' she says, suddenly looking thoughtful even as she plunges into you, '[one of]I cannot remember if I was a girl or a boy to start[or]Fucking you is the best fuck I ever had[or]Will you bear my child? You would make an awesome mom, I bet[or]Maybe next time you can be on top[at random].' As the moment of glib passes, she grips your hips more firmly, starting to rock against you in deep, urgent, pushes, pistoning against your wet sex as she leans in against your back.";
	say "     Her breasts as absolutely huge, aided in part by her gift of distilled milk, pressing their furry mass against your [skin of Player] back as she grinds against you, moaning with increasing fervor as her heavy balls slap against your thighs with every rapid pierce into your [bodyname of Player] body, her hands eagerly caressing you from behind, exploring your every contour. With a sudden lurch, she seals herself against you, and heat spreads through your body in pulsing waves of rich squirrel seed running through your body.[impregchance]";
	now Wild Squirrels is active;

to say sexwithsnow04:	[Anal on player]
	say "***";

to say sexwithsnow05:	[Dommed and fucked]
	setmonster "Hyper Squirrel";
	say "     Snow grins and moves in on you, grabbing your wrists and pressing you back against one of the stone wooden columns. 'Mmm... now, I can tell you're the kind that likes to let someone else take charge, so I think I'll do just that,' she says with a husky rumble of arousal in her voice. She grinds her throbbing manhood against your hip and looks you over with lustful intent";
	if Player is female and Cunt Length of Player >= 10 and Cunt Tightness of Player >= 4:
		say ". She presses a paw between your legs, roughly fingering your pussy as she sizes you up. Finding you adequate for her imposing manhood, she grins all the wider and turns you around, pressing you face first against the pillar.";
		say "     With your face pressed up against the cool wood, you feel another kind of wood pressed against your ass and then getting lined up with your juicy cunny. Giving your neck a firm nip with her rodent teeth, Snow pushes her pink shaft up and into you, spreading your dripping pussy around her thick rod. Her dominant treatment of you has already gotten your submissive tendencies aroused but even with that, your cunt aches a little from the rapid intrusion of her plump cock. But soon that discomfort fades as her energetic thrusting fills you with a haze of lust-addled pleasure.";
		say "     Keeping her firm grip on you, the lustful squirrel goes at you hard and fast. You can feel those hefty nuts of hers slapping against your thighs, their rich contents churning as they're readied to fill you. Her breathing grows heavier as she drills deeper into you. [one of]'Mmm... how about I knock you up, you horny thing?' [or]'I'm going to enjoy stuffing your slutty hole.' [or]'Time to dump a nice load of my nut butter into you.' [or]'You're mine to fuck and fill now, slut.' [or]'I'm going to enjoy hiding my nutty load inside you.' [at random]That proves to be enough to push you over the edge and you cry out in orgasmic release.";
		say "     Feeling your quivering hole clenching down around her excites the herm all the more and she gives you a few final hard thrusts before burying her rod deep inside you and filling you up with her sticky cum. Blast after blast of her semen is pumped into your womb before she finally pulls out and lets you sag to the floor, your belly rounded and your cunny leaking out the excess. You feel wonderfully used and can't help but finger your sticky hole as you bask in the afterglow.[impregchance]";
	else:
		say ". [if Player is female]She presses a paw between your legs, roughly fingering your pussy as she sizes you up. Finding you inadequate for her imposing manhood[else]Noting your lack of juicy pussy for her to use[end if], she still grins and turns you around, pressing you face first against the pillar. 'Well, I guess I'll just have to content myself with your ass.'";
		say "     With your face pressed up against the cool wood, you feel another kind of wood pressed against your ass and then getting lined up with your tight pucker. Giving your neck a firm nip with her rodent teeth, Snow pushes her pink shaft up and into you, spreading your anal ring around her thick rod. Her dominant treatment of you has already gotten your submissive tendencies aroused but even with that, your ass aches from the rapid intrusion of her plump cock. But soon that discomfort fades as her energetic thrusting fills you with a haze of lust-addled pleasure[if Player is male]. The feel of her throbbing meat against your prostate more than makes up for the pain until the burning sensation fades[end if].";
		say "     Keeping her firm grip on you, the lustful squirrel goes at you hard and fast. You can feel those hefty nuts of hers slapping against your thighs, their rich contents churning as they're readied to fill you. Her breathing grows heavier as she drills deeper into you. [one of]'Mmm... you like it up the ass, don't you?' [or]'I'm going to enjoy stuffing your slutty hole.' [or]'Time to dump a nice load of my nut butter into you.' [or]'You're mine to fuck and fill now, slut.' [or]'I'm going to enjoy hiding my nutty load inside you.' [at random][if Player is neuter]This soon proves to be too much for you and your [bodydesc of Player] body trembles and quivers with unfocused release[else]That proves to be enough to push you over the edge and you cry out in orgasmic release[end if].";
		say "     Feeling your anus clenching down around her excites the herm all the more and she gives you a few final hard thrusts before burying her rod completely inside you and filling you up with her sticky cum. Blast after blast of her semen is pumped deep into your bowels before she finally pulls out and lets you sag to the floor. Your belly is left rounded and a steady trickle of creamy while cum leaks out of your sorely stretched asshole. You feel wonderfully used and can't help but finger your sticky hole as you bask in the afterglow.[mimpregchance]";
	now Wild Squirrels is active;

to say sexwithsnow06:	[Fellatio]
	say "     'I feel like these need a work out,' she says, reaching below her legs to slowly rub over her distended balls through her pants. She gives off a soft chittering sigh as soft churning is heard, her cum factories ramping up production even as she leers at you lustfully. 'You are going to pucker up and give me a big ole kiss where it counts,' she insists, undoing her pants and letting her huge pink member bob into the air, demanding attention.";
	say "     Give her what she wants?";
	if Player consents:
		say "     You help Snow up onto a counter where she leans back against a pile of books and runs her hands down her form, cupping her large member and caressing along it before she directs it up at you. You run your fingers along the excited member, drawing a soft, appreciative chitter from Snow as she half lids her eyes. Your tongue flicks over the sensitive tool, lapping up the precum as it flows. It is strangely sweet across your tongue with a tangy hit almost hidden in it. You wrap your [facename of Player] lips around it and begin to suckle softly at the head, letting your tongue taste of the prefluids as they flow more powerfully with every touch.";
		say "     Your fingertips find her bulging veins, tracing them as you lightly stroke the member, feeling its heat and angry throbbing. Snow is moaning and cooing with delight at the attention, her breath short and rapid as she watches you fellate her with gusto. As you sink down along the tool, she suddenly grabs at you, yelping, then shrieking. You can see her balls lurch visibly, then your mouth is flooded with huge blasts of cum, pouring in salty sprays into your waiting gullet as she rocks her hips into you, trying to bury as much of her tool into you as she can, left panting and exhausted, but with a happy smile on her face.";
	else:
		say "     She looks at you a bit hurt, and lowers a hand to rub at her balls lightly, 'Well damn, don't go getting a girl all riled up just to shoot her down. Excuse me, I need some alone time,' and she retreats to the far corner of the area. Not long after, soft indecent sounds begin to be heard.";

to say sexwithsnow07:	[Cunnilingus]
	say "     She hops back, looking thoughtful for a moment before she drops her tight pants to the ground and flops back onto a chair, wide legged, 'Today, my fine survivalist, you are going to show me how good you are diving for treasure.' She rolls over and presents her rump towards you, tail raised up over her back. Her nethers glisten in the light, pinkened where visible through the soft fur, demanding attention. You approach her and run your hands lightly over her ass, petting and admiring her fine rump as she chitters quietly. Your fingers gently work towards her slickened sex, rubbing against the hot lubricants and exploring the contours of those swollen lips.";
	say "     She leans back against you, giving a sudden whine, and you don't keep her waiting longer. You press forward, extending your tongue and lapping across her hot lips. She is a sweet girl, juices flowing sweetly across tongue as you softly nibble at those delicate folds. You find her clit, erect and aching and make her squeal with the lashing you deliver to it, her tail flailing about above her as her toes curl and quiver in the intense pleasure of it. The pussy lips gush eagerly against your exploring tongue as she begins to get messy, coating your face with the sticky fluids as she trembles in climax. You give her no quarter, working her higher and higher as you nuzzle deeply into those yielding folds. You lose track as you pleasure the busty squirrel, but when she finally pushes you back, the seat is absolutely filthy with the deep musk of her pleasure, and the ground beneath is sticky with a puddle of cum produced by her neglected cock, still dripping with seed.";


to say snowsquirrelgivein:
	say "     Taking Snow's paw in yours, you rush out with her, leaving the Abbey behind before either of you can think better of it. Whether by some scent on the air of by blind luck, you soon run into the pair of lustful squirrels. Finding you with Snow, they are all the more pleased and chitter happily as they welcome you both into their arms. Soon you are all rolling around in the grass, fucking like wild animals. Snow is made to stuff her cock down your throat while your [if Player is female and Cunt Length of Player > 8]dripping pussy[else]tight rump[end if] is stuffed by one of the wild squirrels while Snow is getting the same treatment from the other. You moan around Snow's throbbing meat, tasting her leaking pre growing more addictive and arousing as you watch the light of intelligence fading from her eyes even as you can feel your own mind fading away. Your last coherent thought is how happy you are that you'll be sharing this new life with the beautiful Snow.";
	if "Male Preferred" is not listed in feats of Player:
		if Nipple Count of Player < 2, now Nipple Count of Player is 2;
		if Breast Size of Player < 4, now Breast Size of Player is 4;
		if Player is not female, now Cunt Count of Player is 1;
		if Cunt Length of Player < 9, now Cunt Length of Player is 9;
		if Cunt Tightness of Player < 6, now Cunt Tightness of Player is 6;
		if "Modest Organs" is listed in feats of Player:
			now Cunt Length of Player is 8;
			now Cunt Tightness of Player is 5;
	if "Female Preferred" is not listed in feats of Player:
		if Player is not male, now Cock Count of Player is 1;
		if Cock Length of Player < 9, now Cock Length of Player is 9;
		if Ball Size of Player < 6, now Ball Size of Player is 6;
		if "Modest Organs" is listed in feats of Player:
			now Cock Length of Player is 8;
			now Ball Size of Player is 5;
	say "     After guzzling down her now infectious seed and each getting filled from behind, you become more and more a wild squirrel for your sexy lover and mate. You pull her into your arms and chitter happily as your loins change, becoming better suited to please her and she chitters back as she changes as well";
	if Player is male:
		say ". Pulling her into your lap, you push your cock into her pussy and bounce her in your lap, her large breasts pressed to your chest. The wild squirrels stand to either side of you, letting you both suck squirrel cock while fucking your new mate. This bestial fucking goes on until you cum hard, filling her womb with your cum and each getting another tasty load from the squirrels down your throat. After that, you're mounted again by the wild pair while Snow takes a turn sucking you off. The romp continues on like this through a myriad of pairings and positions for hours despite the fact you both succumbed long ago. Eventually, you four run off together back to the their nest to rest before going off in search of others to share your addictive lust with.";
	else:
		say ". Pulling you into her lap, Snow slides her cock into your pussy and bounce her in your lap, her large breasts pressed to your chest. The wild squirrels stand to either side of you, letting you both suck squirrel cock while fucking your new mate. This bestial fucking goes on until she cums hard, filling your womb with her cum and each getting another tasty load from the squirrels down your throat. After that, you're mounted again by the wild pair while Snow takes a turn eating out your cum-leaking box. The romp continues on like this through a myriad of pairings and positions for hours despite the fact you both succumbed long ago. Eventually, you four run off together back to the their nest to rest before going off in search of others to share your addictive lust with.";
	now bodyname of Player is "Hyper Squirrel";
	now skinname of Player is "Hyper Squirrel";
	now body of Player is "curved but athletic looking, a dancer's body perhaps. Your legs are thick and powerful, built for swift climbing and terminating in paws that have sharp grasping claws";
	now skin of Player is "white furred";
	now tailname of Player is "Hyper Squirrel";
	now tail of Player is "You have a short white squirrel's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
	now face of Player is "set of two long white squirrel ears twitching above your head, a long rodent snout with bucked teeth jutting out a little";
	now facename of Player is "Hyper Squirrel";
	now cockname of Player is "Hyper Squirrel";
	now cock of Player is "bright pink";
	now humanity of Player is 0;
	now Libido of Player is 100;
	now scalevalue of Player is 3;
	now bodydesc of Player is "[one of]athletic[or]curvy[or]agile[at random]";
	now bodytype of Player is "[one of]rodent[or]squirrel-like[at random]";
	now SleepRhythm of Player is 0;
	now humanity of Player is 0;
	end the story saying "You and Snow have lost your minds to the attentions of the two squirrels, your body becoming covered in thick white fur, face becoming pointed and narrow even as your new muzzle is filled with thick shots of seed. You moan and chitter as your belly swells with the gifts of your lovers, your body blossoming into buxom hermaphroditic squirreltude as your humanity eludes you. You feel at home with these two and take a turn with each, enjoying every combination of cock, cunt and mouth with them and petting their long bushy tails before you all rise, satisfied, and hunt the city together.";
	WaitLineBreak;
	follow the turnpass rule;
	stop the action;


Section 5 - Wild Squirrels

Table of GameEventIDs (continued)
Object	Name
Wild Squirrels	"Wild Squirrels"

Wild Squirrels is a situation.
Wild Squirrels is inactive.

Instead of resolving a Wild Squirrels:
	say "     As you wander, you get the feeling that you are being watched somehow...";
	let bonus be (( the Perception of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll > 17:
		say "You notice some chittering nearby. A moment later, you catch sight of a blur of white movement. Shall you turn and flee or continue on to see how this plays out?";
		if Player consents:
			say "     Rather than wait for the trap to be sprung, you turn and flee the area. You can hear some loud chitters from behind you as you make your escape.";
			say "     Phew. Close call.";
			stop the action;
	say "A crushing weight descends on you from behind as a beast tackles you. Its teeth nip at your ear as great soft paws grab at your front and belly, rubbing you quite affectionately. It feels very curvy, with the exception of a very stiff erection that shoves rudely against your backside as it molests you eagerly. Just as you start to struggle against the beast, another grabs you at the face, paws at your cheeks as it guides you up to look at it. It looks like Snow, but isn't, no intelligence in those eyes as it chitters soothingly and leans in to kiss you firmly, bestial lips to yours.";
	say "     Resist?";
	if Player consents:
		let bonus be (( the Strength of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 17:
			say "You manage to throw off the beast on top of you with a mighty shove! She squeaks in surprise and tumbles away even as the other grabs at you. Her soft white paw closes on your [if Cock Count of Player > 1][cock size desc of Player] [cock of Player] dick[else]chest[end if] but you're having none of it, pulling away from her and fleeing to safety, their angry chitters echoing behind you as you leave the squirrels in your dust.";
			stop the action;
		else:
			say "Despite your protests and struggles, you find your mouth being guided to a large, pink dick. The squirrel presses it into you as pre splashes across your tongue, and resistance seems to melt from you. As you start to nurse, she fills your mouth with that salty fluid, each gulp draining the will from you as you gulp down a few mouthfuls, now pliant and ready to play with the squirrels.";
			decrease the humanity of Player by 10 + HP of Snow;
	if HP of Snow is even:
		if Player is female and Cunt Length of Player > 8:
			say "     One of the squirrels grabs you at the hips and rubs across your sides and backs with those, oh so soft, paws as she eases up into you. Her thick, pink, shaft buries warmly into your waiting snatch as she pulls you back into her lap, slowly settling to the ground with you, bouncing you up and down in her lap as she grunts and coos with pleasure. Your body tingles with growing delight as her infectious seed already works at your insides, weakening your desire to resist her and filling you with an urge to be filled with her.";
		else:
			say "     One of the squirrels makes a sad sort of noise, almost apologetic, before she shoves you forward, grabs your hips, and plunges her thick cock into your back door, rocking easily into your ass as the thick sprays of her pre lubricate you, both in body and mind. Her rough attentions feel better by the moment as you find yourself moaning with desire, pressing back against her as she claims you.";
		say "     The other squirrel approaches from the front. She reaches for your [skin of Player] [if Breast Size of Player > 0][breast size desc of Player][else]flat[end if] chest and rubs slowly as she presses slowly to your front, her stiff erection rubbing against your belly as she guides you to a large white furred breast. You are soon nursing at her, filling your belly with the intoxicating and warming fluids she can offer. Part of you wonders how Snow got away from these two at all as you feel your will to do so crumbling with time, your body aroused as never before even as she pulls you from her teat and pushes her cock to your lips, slowly easing the thick pink length into your mouth and rocking slowly against you.";
		decrease the humanity of Player by 10 + ( HP of Snow * 3 );
	else:
		if Player is male:
			say "     After thrusting her tasty cock into your mouth a few times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms. Guided onto the ground atop her, she kisses you lustfully while her partner lines up your cock with the squirrel's pussy even as she lines up her own cock with your [if Player is female and Cunt Length of Player > 8]wet snatch[else]tight asshole[end if]. They chitter softly between themselves for a moment, holding you in place before the one behind you pushes forward, easing her throbbing cock into you and making you moan as you are made to thrust into her partner at the same time. As you are sandwiched between them while they fuck you, your body tingles with growing delight as her infectious pre leaks into you, arousing you further and making you long to be filled by her.";
			say "     The one beneath you chitters happily at the fucking she's getting and licking and kissing all over your face as her cock leaks precum as its pressed between your bodies. It seems all too soon that you're cumming hard into her even as your [if Player is female and Cunt Length of Player > 8]hot pussy[else]tight ass[end if] is filled by the other herm as she drains her heavy balls into you. As you are stuffed with the warm, intoxicating cum, you can feel a growing longing to stay with them. The same longing that Snow must have felt. Your will to resist them crumbles further as you cum hard again into the squirrel herm before passing into a hazy afterglow.";
		else if Cunt Count of Player > 1 and Cunt Length of Player > 8:		[2+ adequate cunts]
			say "     After thrusting into your mouth a few more times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms. Guided onto the ground atop her, she kisses you lustfully while her partner lines up one of your pussies with the cock of the lower squirrel even as she lines up her own cock with another waiting pussy. They chitter softly between themselves for a moment before the one atop you thrusts into your waiting snatch, pushing you down onto her partner's cock at the same time. Having both well-endowed herms filling you at the same time is very arousing, especially as their infectious and arousing precum leaks into you. You are fucked wildly by the both of them, making you moan and climax several times.";
			say "     Your strongest climax comes of course as the pair orgasm with loud chitters, blasting their seed into you one after the other. You can feel their hot loads shooting into you, filling you with warmth and arousal. With their intoxicating fluids filling you, you can feel a growing longing to stay them. The same longing that Snow must have felt. Your will to resist them crumbles further as you orgasm loudly before passing into a hazy afterglow.";
		else if Cunt Count of Player is 1 and Cunt Length of Player > 8:		[1 adequate cunt]
			say "     After thrusting into your mouth a few more times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms. Guided onto the ground atop her, she kisses you lustfully while her partner lines up your pussy with the cock of the lower squirrel even as she lines up her own cock with your tight asshole. They chitter softly between themselves for a moment, dripping precum onto your back entrance to prepare you, before the one atop you thrusts into your slick hole, pushing you down onto her partner's cock at the same time. Having both well-endowed herms filling you at the same time is very arousing, especially as their infectious and arousing precum leaks into you. You are fucked wildly by the both of them, making you moan and climax several times.";
			say "     Your strongest climax comes of course as the pair orgasm with loud chitters, blasting their seed into you one after the other. You can feel their hot loads shooting into you, filling you with warmth and arousal. With their intoxicating fluids filling you, you can feel a growing longing to stay them. The same longing that Snow must have felt. Your will to resist them crumbles further as you orgasm loudly before passing into a hazy afterglow.";
		else:
			say "     After thrusting into your mouth a few more times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms. Guided onto the ground atop her, she kisses you lustfully while her partner lines up your snug asshole with the cock of the lower squirrel even as she grinds her own cock with your tight asshole. They chitter softly between themselves for a moment, dripping precum onto your back entrance to prepare you, before the one atop you grinds down on your ass, pushing you down onto her partner's cock at the same time. You are made to ride in her lap until you're nicely stretched by the herm's cock. Once your hole is relaxed and you feel only pleasure because of their arousing precum, you are made to slide off her cock to allow the one atop you to have a turn. They take turns with you like this, sharing you between them back and forth. Having the well-endowed herm swapping between you is very arousing, especially as their infectious and arousing precum affects you more and more. You are fucked wildly by the both of them, making you moan and climax several times.";
			say "     Your strongest climax comes of course as the pair orgasm with loud chitters, blasting their seed into you. First one shoots her load into your bowels, then the next has her cock quickly stuffed into you to keep her partner's load inside as she fills you as well. Their hot semen fills you with warmth and arousal. With their intoxicating fluids inside you, you can feel a growing longing to stay them. The same longing that Snow must have felt. Your will to resist them crumbles further as you orgasm loudly before passing into a hazy afterglow.";
		decrease the humanity of Player by 10 + ( HP of Snow * 4 );
	increase HP of Snow by 1;
	if the humanity of Player < 10:
		now bodyname of Player is "Hyper Squirrel";
		if "Male Preferred" is not listed in feats of Player:
			if Nipple Count of Player < 2, now Nipple Count of Player is 2;
			if Breast Size of Player < 4, now Breast Size of Player is 4;
			if Player is not female, now Cunt Count of Player is 1;
			if Cunt Length of Player < 9, now Cunt Length of Player is 9;
			if Cunt Tightness of Player < 6, now Cunt Tightness of Player is 6;
			if "Modest Organs" is listed in feats of Player:
				now Cunt Length of Player is 8;
				now Cunt Tightness of Player is 5;
		if "Female Preferred" is not listed in feats of Player:
			if Player is not male, now Cock Count of Player is 1;
			if Cock Length of Player < 9, now Cock Length of Player is 9;
			if Ball Size of Player < 6, now Ball Size of Player is 6;
			if "Modest Organs" is listed in feats of Player:
				now Cock Length of Player is 8;
				now Ball Size of Player is 5;
		wait for any key;
		end the story saying "You lose your mind to the attentions of the two squirrels, your body becoming covered in thick white fur, face becoming pointed and narrow even as your new muzzle is filled with thick shots of seed. You moan and chitter as your belly swells with the gifts of your lovers, your body blossoming into buxom hermaphroditic squirreltude as your humanity eludes you. You feel at home with these two and take turns with each, enjoying every combination of cock, cunt and mouth with them and petting their long, bushy tails before you all rise, satisfied, and hunt the city together.";
	else:
		setmonster "Hyper Squirrel";
		say "The pleasure overwhelms you as your front and back explode in the ecstasy of being filled. You manage a loud, muffled moan of bliss as darkness gently slips over you. Despite passing out, you can still, somehow, feel the squirrels settling you to the ground and kissing over your body as it changes, growing furrier and more squirrel like by the moment. Their soft tongues clean you entirely before they leave, and finally the dreams come. When you awaken, they are nowhere in sight.[impregchance]";
	now bodyname of Player is "Hyper Squirrel";
	now skinname of Player is "Hyper Squirrel";
	now body of Player is "curved but athletic looking, a dancer's body perhaps. Your legs are thick and powerful, built for swift climbing and terminating in paws that have sharp grasping claws.";
	now skin of Player is "white furred";
	now tailname of Player is "Hyper Squirrel";
	now tail of Player is "You have a short white squirrel's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
	now face of Player is "set of two long white squirrel ears twitching above your head, a long rodent snout with bucked teeth jutting out of your";
	now facename of Player is "Hyper Squirrel";
	now cockname of Player is "Hyper Squirrel";
	now cock of Player is "bright pink";
	now scalevalue of Player is 3;
	now bodydesc of Player is "[one of]athletic[or]curvy[or]agile[at random]";
	now bodytype of Player is "[one of]rodent[or]squirrel-like[at random]";
	now SleepRhythm of Player is 0;
	now Wild Squirrels is inactive;


Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Hyper Squirrel"; [Name of your new Monster]
	now enemy title entry is "Hyper Squirrel";
	now enemy Name entry is "Snow";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[NonCombatError]"; [ Description of the creature when you encounter it.]
	now face entry is "topped by a set of two long white squirrel ears twitching above your head, while a long rodent snout with bucked teeth juts out at the front of your head"; [ Face description, format as "Your face is (your text)."]
	now body entry is "curved but athletic looking, a dancer's body perhaps. Your legs are thick and powerful, built for swift climbing and terminating in paws that have sharp grasping claws"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "white furred"; [ skin Description, format as "your body is covered in (your text) skin."]
	now tail entry is "You have a short white squirrel's tail above a shapely ass. It twitches when you're excited, wagging back and forth."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "bright pink"; [ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "WIP"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "WIP"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "WIP"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "WIP"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "WIP"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 10;
	now dex entry is 14;
	now sta entry is 12;
	now per entry is 10;
	now int entry is 14;
	now cha entry is 16;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 28;
	now lev entry is 2; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 4; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Location of monster, in this case the City Hospital]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 50; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]athletic[or]curvy[or]agile[at random]";
	now type entry is "[one of]rodent[or]squirrel-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
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


When play ends:
	if Snow is in Grey Abbey Library:
		if HP of the player > 0:
			if humanity of Player < 10:
				say "     Snow abandons the idea of being saved when you go feral and she joins you in the city, remaining close at your side and becoming like a pack member to you, adoring and loving. Your life with her as a wild squirrel is one of bestial lust as you spend much of your day fucking one another in the squirrel's den they've set up in a small home near a cluster of acorn trees. From time to time, you and the others will snag a poor, unprepared person and fuck them into submission, adding another squirrel to your numbers. When there gets to be too many for your small home, a group breaks off to find a new home to claim as a nest. But you and Snow always remain there along with your first pair of wild lovers";
			else:
				if bodyname of Player is "Hyper Squirrel":
					say "     Your squirrel body arouses little interest, being a rather mundane creature, if one they've only seen in you and Snow to date. You don't mention the arousing power of the wild squirrels you and Snow encountered for fear they'd think you capable of the same. After your eventual release, you and Snow settle down together, becoming lovers and mates.";
					say "     You get a small home together in the suburbs of a new city, picking one with a large acorn tree out front. Your neighbors are a little shy and nervous around you at first, though squirrels are cute and safe enough that they soon get used to you. And when you start making acorn butter and other nut treats for them come fall, they're even friendlier still. Though it certainly doesn't hurt that the acorn butter is made with some squirrel cum. While not able to infect them, it gets them quite aroused and soon you and Snow are often having sex with many of your neighbors, both men and women";
				else:
					say "     Snow settles down after being rescued. She turns to you for affection more consistently, and eventually asks to be your girlfriend/boyfriend. She is a wonderfully friendly and helpful companion, always willing to help you out on a project or making repairs to your home";
				if Sandra is in Bunker:
					say ". Snow approaches Sandra one day when you are out. When you come back, Sandra has a silly expression on her face and Snow looks pleased. After that day, the two are very close friends and begin to act openly affectionate with one another, often dragging you into their play";
			if Player is male:
				say ". Snow eagerly bears children for you over time, enjoying the expansive effect each kit has on her already huge bustline.";
				increase score by 5;
			if Player is female:
				say ". You both are quite pleased as well when Snow manages to get you knocked up with some squirrel kits.";
			else:
				say ".";

Hyper Squirrel ends here.
