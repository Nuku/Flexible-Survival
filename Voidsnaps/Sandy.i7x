Sandy by Voidsnaps begins here.

[This character is gated behind progressing Thomas's questline.]

a postimport rule:
	if Libido of Thomas is 1: [After saving Sandy.]
		move Sandy to Dry Plains;

Section 1 - Character Declaration

Table of GameCharacterIDs (continued)
object	name
Sandy	"Sandy"

Sandy is a woman.
ScaleValue of Sandy is 4. [Horse-sized. She's a centaur!]
Body Weight of Sandy is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Sandy is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Sandy is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Sandy is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Sandy is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Sandy is 5. [length in inches]
Breast Size of Sandy is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Sandy is 2. [count of nipples]
Asshole Depth of Sandy is 12. [inches deep for anal fucking]
Asshole Tightness of Sandy is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Sandy is 0. [number of cocks]
Cock Girth of Sandy is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Sandy is 0. [Length in Inches]
Ball Count of Sandy is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Sandy is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Sandy is 1. [number of cunts]
Cunt Depth of Sandy is 18. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Sandy is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Sandy is 4. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Sandy is false.
PlayerRomanced of Sandy is false.
PlayerFriended of Sandy is false.
PlayerControlled of Sandy is false.
PlayerFucked of Sandy is false.
OralVirgin of Sandy is false.
Virgin of Sandy is false.
AnalVirgin of Sandy is true.
PenileVirgin of Sandy is true.
SexuallyExperienced of Sandy is true.
TwistedCapacity of Sandy is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Sandy is false. [steriles can't knock people up]
MainInfection of Sandy is "Centaur".
Description of Sandy is "[SandyDesc]".
Conversation of Sandy is { "Hmph" }.
The scent of Sandy is "Sandy smells like sweet hay and freshly cut grass, an odd but certainly not unpleasant combination of scents."

to say SandyDesc:
	say "     Long black hair cascades over Sandy's shoulders, nearly reaching her breasts, while soft pale skin unmarred by her time spent with the brutish centaur herd covers her upper half, at odds with emerald green eyes. Sleek black fur covers her horse-half, smooth and unmarred until you reach her nearly-permanently lifted tail. She's been so 'broken in' by now that her pussy is nearly always drooling, and she's not shy when it comes to presenting it to any nearby male, though her expression seldom changes, as though the reflex is involuntary, or even unwanted. ";
	if Libido of Thomas is 2 or Libido of Thomas is 12 or Libido of Thomas is 22:
		say "She appears to be working on presenting herself less often, seeming embarassed by her inadvertent sluttiness, though Jill comforts her when she's a little too hard on herself.";

instead of conversing Sandy:
	if Libido of Thomas is 1: [Just Sandy in the herd.]
		if Player is male:
			say "     You don't even have to say anything. Sandy turns around and shows off her marehood the second you come into sight, silently inviting you to use her with a lifted tail lilting to the side. That winking clit is certainly inviting, as is the sticky trail of pussy juice drooling down over it. As you lead her out of Thomas's sight, you think about what you want to do with her.";
			say "[SandyFuckMenu]";
		else:
			say "    Sandy stares blankly at you as you greet her. The poor thing seems unable to communicate properly outside of sexual situations. You give up after a few minutes of blank expressions and even breathing, and try to think of something else to say.";
			say "[SandyTalkMenu]";
	else if Libido of Thomas is 2: [Sandy and Jill.]
		say "     Saying hello to Sandy, you observe a change in her behavior. Though her tail still instinctively lifts [if Player is male]in your presence, [else]Whenever Thomas looks in her direction, [end if]she doesn't turn around, and her eyes seem to have regained some of their luster. The cause of the change appears to be Jill, who sticks by her side at all times.";
		say "[SandyTalkMenu]";
	else if Libido of Thomas is 11: [Sandy and Felix.]
		say "     Saying hello to Sandy, you can't help but laugh at how confused she looks next to Felix. She's trying her best to present herself to him, but he's completely uninterested. Though still fairly silent, she's regained a little vitality without the constant centaur-rape. [If Player is male]Unfortunately, the second she notices you, she changes targets, showing off her hindquarters. Oh well. Baby steps.[end if][line break]";
		say "[SandyTalkMenu]";
	else if Libido of Thomas is 12: [Sandy, Felix and Jill.]
		say "     Saying hello to Sandy, you can't help but notice how much she's clinging to Jill, as though the other girl is a lifeline. Her eyes have regained a lot of luster, and she doesn't appear to be spooked by Felix's presence, though she stares at him with a strange expression, as though she can't fathom why he's not trying to mount her.";
	else if Libido of Thomas is 21: [Sandy, lost Felix.]
		if Player is male:
			say "     You don't even have to say anything. Sandy turns around and shows off her marehood the second you come into sight, silently inviting you to use her with a lifted tail lilting to the side. That winking clit is certainly inviting, as is the sticky trail of pussy juice drooling down over it. As you lead her out of Thomas's sight, you think about what you want to do with her.";
			say "[SandyFuckMenu]";
		else:
			say "    Sandy stares blankly at you as you greet her. The poor thing seems unable to communicate properly outside of sexual situations. You give up after a few minutes of blank expressions and even breathing, and try to think of something else to say.";
			say "[SandyTalkMenu]";
	else if Libido of Thomas is 22: [Sandy and Jill, no felix.]
		say "     Saying hello to Sandy, you observe a change in her behavior. Though her tail still instinctively lifts [if Player is male]in your presence, [else]Whenever Thomas looks in her direction, [end if]she doesn't turn around, and her eyes seem to have regained some of their luster. The cause of the change appears to be Jill, who sticks by her side at all times.";
		say "[SandyTalkMenu]";

to say SandyTalkMenu:
	LineBreak;
	say "What do you want to talk with Sandy about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Libido of Thomas is 2:
		choose a blank row in table of fucking options;
		now title entry is "How she's doing";
		now sortorder entry is 1;
		now description entry is "Try to ask Sandy how she's feeling.";
	[]
	if Libido of Thomas is 11:
		choose a blank row in table of fucking options;
		now title entry is "How she's fitting in";
		now sortorder entry is 2;
		now description entry is "Try to ask Sandy if she's happier with Thomas's herd.";
	[]
	if Libido of Thomas is 12:
		choose a blank row in table of fucking options;
		now title entry is "Ask Sandy if she's happy with Thomas";
		now sortorder entry is 3;
		now description entry is "Ask Sandy if she's happier with Thomas.";
	[]
	if Beach Plaza is known and (Libido of Thomas is 2 or Libido of Thomas is 12 or Libido of Thomas is 22):
		choose a blank row in table of fucking options;
		now title entry is "Ask Sandy if she'd like to go to the beach";
		now sortorder entry is 4;
		now description entry is "It's such a nice day. Why not go to the beach with the centauress?";
	[]
	if "Fucktoy No Longer" is listed in Traits of Sandy:
		choose a blank row in table of fucking options;
		now title entry is "Ask Sandy what she remembered at the beach plaza";
		now sortorder entry is 5;
		now description entry is "Ask Sandy what was bothering her at the beach?";
	[]
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
				if (nam is "How she's doing"):
					say "[SandyJillTalk]";
				else if (nam is "How she's fitting in"):
					say "[SandyFelixTalk]";
				else if (nam is "Ask Sandy if she's happy with Thomas"):
					say "[SandyThomasTalk]";
				else if (nam is "Ask Sandy if she'd like to go to the beach"):
					say "[SandyBeachDate]";
				else if (nam is "Ask Sandy what she remembered at the beach plaza"):
					say "[SandyPastTalk]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Sandy, who looks at you with a placid expression.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SandyJillTalk:
	say "     Asking Sandy how she's doing, you wonder aloud how she's adjusting to life in the herd. Is she fitting in? She takes a short while to answer, shuffling uncomfortably, unable to meet your eyes. 'I... Don't know.' She crosses her arms beneath her breasts, unintentionally pushing them forward and giving you a show. 'It's confusing. I thought mares were only used for one thing, but Jill says...' Sandy seems flustered by her attempts to remain coherent, but continues. 'Maybe I'm not just a cocksleeve, but if I'm not... What am I?' Suddenly she seems sad, and you drop the subject at the furrow of her brow. No use in pressing things!";

to say SandyFelixTalk:
	say "     Asking Sandy how she's fitting in with Felix, you show concern for her. Sadly, she just looks confused, staring at Felix for a moment before shrugging her shoulders. That's the only reaction you get out of her, outside of [if Player is male]her usual presenting and lifted tail as she notices you've stopped talking.[else if Player is not male]her usual stare toward the males in the herd and instinctively lifted tail.[end if][line break]";

to say SandyThomasTalk:
	say "     You attempt to speak to Sandy, but you get nothing but a blank stare out of the poor mindbroken mare. It seems she hasn't recovered from her position as a centaur fuckhole, but at least Thomas is less cruel than her last 'master.'";

to say SandyBeachDate:
	say "     Now that Sandy's begun to break away from her old identity of a fleshlight for horse cock, you don't have the heart to treat her like those savage centaurs did. You think for a moment, studying her curious stare and flat expression, and then remember the perfect place to show her that you care. A nice walk on the beach is sure to cheer anyone up! Letting Thomas know where you'll be taking Sandy, you get his blessing to continue, then set out for the beach with the docile mare in tow. On the way, a destroyed store catches your eye, and you notice brightly colored floral printed sundresses still hanging, relatively untouched, save a section sprayed with a suspicious off-white goo. While Sandy's lower half is difficult to hide behind cloth, you can't help but imagine that wearing SOMETHING to cover her nudity might help her regain some of her lost dignity. At the very least, it should let you keep any suitors at bay.";
	say "     You try to ask Sandy about her preferences, but she seems confused, more than anything, simply holding each dress you offer her against her chest and staring blankly at you as if she doesn't know what to do with them. How long has she walked around bare-chested? You give up when she attempts to wear a bikini top as a hat, fastening the bra straps beneath her chin. Sighing in exasperation, you pick out a floral pattern in black and white and help the centauress into it, adjusting it until her upper half looks much like any human woman would in summer. Cradling your chin with two fingers, you study Sandy's body, admiring how the cloth hides yet enhances her chest before shaking your head. You're trying NOT to objectify her! With the problem of Sandy's nudity partially solved, you make your way to the beach plaza, leading the centauress with a gentle grip on her hand. The longer you spend seeing the sights, the more this feels like a date, but a glance at Sandy's expression dashes that feeling. Though she's looking around, her eyes are still dull and listless, and the only reaction she appears to have is subtly swaying her hindquarters toward every male she sees.";
	WaitLineBreak;
	say "     'Ice cream! The first cone's free!' An opportunity presents itself when a large-breasted cow woman with a push-cart waves you over. She's hooked up to a milking machine, and judging by the fluids running through the clear tubes, she's producing quite a bit of milk. No wonder she's able to give it away! You politely try to ignore the sway and bounce of her bare chest as you ask her for two vanilla cones, confirming that she's pasteurized the milk with a boiling pot before you taste it. Sandy stares at her cone with disinterest, looking from you to the slowly melting confection. After watching you tear into yours, she mimics you, tasting the frozen treat and recoiling slightly, her eyes lighting up. 'Cold?' The mare says with a strange expression. It seems like the sensation overwhelms her, and her eyes tear up as she quickly polishes off the cone.";
	say "      [bold type]Ask her why she's suddenly emotional?[roman type][line break]";
	say "      [link](Y)[as](y)[end link]Yes, this is a good opportunity to find out more about her.";
	say "      [link](N)[as](n)[end link]No, give her a little space. She's still recovering.";
	if Player consents:
		LineBreak;
		say "     Seizing the opportunity to bring back a bit of Sandy's humanity, you wait until her tears have mostly slowed and question why she's crying. Did she not like the way the ice cream tasted? Or is she homesick already? You know it's likely neither of those, but you don't want to be presumptuous. 'I remember coming here as a little girl.' Sandy wipes her face on her arm, her usually listless eyes brightening somewhat. 'Wasn't I always a centaur? I don't think...' Trailing off, she furrows her brow. 'I wasn't always like this, was I?' Shaking her head, she huffs. 'I can't remember. Everything was hazy before they started using me. I was with someone. Who?' She doesn't seem to be able to remember anything further, shrugging and flicking her tail. 'Can we go back now? My head hurts.'";
	else:
		LineBreak;
		say "     Opting to give Sandy some privacy with her thoughts, you watch her cry herself out and wait for her to acknowledge your existence. Sure enough, after a few moments, she shakes her head and wipes her face on her arm, then fixes you with a slightly less dull and lifeless expression. 'Can we go home now? My head hurts.' She says with a slight tinge of sadness.";
	say "      Taking Sandy's words as a breakthrough, you nod and lead her toward the plaza entrance. Sandy trots purposefully, almost leading the way, and doesn't need your guidance. You can't help but notice that she's come out of her shell, though as soon as you reach the plains, she discards the dress you gave her, opting to wear nothing. Perhaps nudity feels better to a centaur? You don't feel you have any right to complain, so you let her do as she likes.";
	TraitGain "Fucktoy No Longer" for Sandy;

to say SandyPastTalk:
	say "     Curious about what Sandy remembered the last time you spoke, you ask her what's on her mind. Is she upset? Sandy shakes her head with a soft smile and looks downward. 'No, I'm fine. It comes and goes. The stuff before all of this.' Gesturing at her lower half, Sandy sighs. 'I'm a little embarrassed by how I acted. Not at the beach but- before that.' Blushing at memories of her old 'role,' the newly refreshed centauress continues. 'Thank you for not taking advantage. They were a bit rough before you came along.' Shaking your head, you tell Sandy that it's not a bother. She doesn't need to give herself to brutes if she doesn't want to! You're just glad that she's feeling a bit more like herself. After how much abuse she suffered, you weren't sure if she'd ever recover.";
	say "     'Well, I think part of me is still too 'trained.' Shifting a bit, Sandy self-consciously twirls a few strands of hair around her fingers. 'Though maybe that's not all that bad. Sometimes it felt amazing.' A soft patter of liquid on dirt from behind shows Sandy's body is still as prone to 'readiness' as it used to be. 'Actually,' she continues, her expression growing less innocent. 'If it were you, I wouldn't mind.' The mare's coming onto you- this time of her own volition! You reply that you'd love to 'take her for a ride sometime' and flirt with her a bit before cutting off your chat, promising to take her up on her offer.";
	TraitGain "Consent" for Sandy;
	TraitLoss "Fucktoy No Longer" for Sandy;

instead of fucking Sandy:
	if (lastfuck of Sandy - turns < 5):
		say "     Sandy seems worn out from the last time you fucked her. You should wait until later, no matter how willing she is!";
	else if Libido of Thomas is 1 or Libido of Thomas is 11 or Libido of Thomas is 21:
		say "     Shrugging your shoulders [if Player is male]as you approach Sandy and watch her turn around and wink her wet pussy at you,[end if] you decide to use her for the only purpose she knows. Since she's so eagerly presenting herself to anything with a cock, you take that as consent, leading her away like a docile feral horse until you're out of Thomas's sight.";
		say "[SandyFuckMenu]";
	else if "Fucktoy No Longer" is listed in Traits of Sandy:
		say "     Looking for some quick fun, you try to proposition the usually quietly slutty mare. Strangely, she doesn't seem as eager to please. 'Could we wait a little while? My head's still spinning... I don't want to go back.' Covering her chest with crossed arms, she hints at what she means. It seems she doesn't want to go back to being just a brainless slut.";
	else if "Consent" is listed in Traits of Sandy:
		say "Patting Sandy's rump as she talks to Jill, you ask her whether she has the time to make good on her offer. Judging by how quickly her tail flags and how she cuts off the conversation and excuses herself to follow you into the relative privacy of some nearby tall grass, she's just as willing as you are. She's a much more active participant now, cornering you and pressing her chest against yours as soft lips find yours in a deep, desperate kiss.";
		say "[SandyFuckMenu]";
	else if Libido of Thomas is 2 or Libido of Thomas is 12 or Libido of Thomas is 22:
		say "     You attempt to proposition Sandy, but Jill quickly intervenes before you can make your move, effectively cockblocking you. Shaking her head with a patient smile, Jill asks you to let Sandy be for now. It seems she doesn't want to see the other mare used.";

to say SandyFuckMenu:
	LineBreak;
	say "     What do you want to do with Sandy?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and "Fucktoy No Longer" is not listed in Traits of Sandy and "Consent" is not listed in Traits of Sandy:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "Fuck the slutty mare?";
	[]
	if Player is not male and player is female and "Fucktoy No Longer" is not listed in Traits of Sandy and "Consent" is not listed in Traits of Sandy:
		choose a blank row in table of fucking options;
		now title entry is "Play with her pussy";
		now sortorder entry is 2;
		now description entry is "Play with the centaur's cunt?";
	[]
	if "Consent" is listed in Traits of Sandy:
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Sandy";
			now sortorder entry is 3;
			now description entry is "Fuck the centaur?";
		[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Ask Sandy to eat you out";
			now sortorder entry is 4;
			now description entry is "Put Sandy's tongue to work.";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Eat Sandy out";
		now sortorder entry is 5;
		now description entry is "Taste Sandy's equine pussy?";
		[]
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
				if (nam is "Fuck her"):
					say "[SandyFuck]";
				else if (nam is "Play with her pussy"):
					say "[SandyPussyPlay]";
				else if (nam is "Fuck Sandy"):
					say "[SandyConsentFuck]";
				else if (nam is "Ask Sandy to eat you out"):
					say "[SandyConsentCunnilingusPlayer]";
				else if (nam is "Eat Sandy out"):
					say "[SandyConsentCunnilingus]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Sandy, who gives you a questioning look, but doesn't press the matter.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SandyFuck: [dick havers only]
	if BodyName of Player is "Centaur" and Player is pure:
		say "     The smell of a fertile female drives your inner centaur wild, and before you can think, your lower half hunches over Sandy's back, surging forward the moment your flaring cock reaches the searing heat of that needy cunt. Wet, hot flesh resists your meat, clamping down to massage every inch, and dribbling juices roll down your balls, tearing an almost feral groan from your throat. You waste no time sheathing yourself to the root, slapping your balls against that winking clit, and mashing your swollen cockhead against the willing mare's cervix, bullying it as if demanding it accepts your seed. Sloppy noises fill the air as your lower half withdraws, splattering the ground below with mixed juices. Sandy's so wet that if it weren't for her greedy, clamping inner muscles, you doubt you'd feel anything at all, but thankfully for your cock, she's as experienced as she is needy, milking every last sloppy splash of pre into her innermost depths. She's taken on a more whorish appearance, with her long, black hair to the side and her neck exposed, heaving with every breathy moan and bringing her breasts into sight from your perch on her back.";
		say "     Unable to resist those two creamy mountains, you take hold of them, squeezing them roughly and rolling their pink tips between your fingertips as if milking a cow, burying your face in her neck. You won't last long with such a sloppy slut juicing around your cock, and you don't want to, cramming yourself in until you swear your balls will join your flexing cock. Pausing with some considerable effort, you ride the edge of your orgasm with short, fast pumps, milking that lingering pleasure even as your cock screams for release until Sandy's innards twist, coiling around your shaft in obvious orgasm. Satisfied with your whorish mare's enjoyment, you let yourself go as well, spraying the entrance to her womb with thick, gooey seed and biting down on her shoulder to silence yourself.";
		WaitLineBreak;
		say "     It feels like hours that you sit there, feeling your cum dribble out around the base of your softening cock, but you finally release the limp mare's upper half, nearly bruising her breasts with one last squeeze as the gooey schlop of your cock's exit sends a shiver through you. Temporarily sated, you slap the mare's upturned rump, admiring her swollen cunt's weak attempts at closing gaped lips. There's no hiding the fact that you bred her, and you feel a strange sense of pride as you leave her to recover, gathering your things and trotting off with your half-hard shaft swaying beneath your equine lower half, still glazed with feminine cum.";
		NPCSexAftermath Sandy receives "PussyFuck" from Player;
	else: [Defaults to anthro body type. Think it's vague enough that it works for ferals?]
		say "     Since Sandy's so ready and willing, you waste no time, exposing yourself and taking hold of your hardening cock, stroking it while the mare gets into position, spreading her legs wide. It's almost too easy to get her to submit to you, but you're drawn in by glistening black pussy lips, winking open to show wetness drooling down pink walls and a sizable pink clitoris that flashes outward for a second as if begging to be touched. You couldn't resist such a wanton display if you wanted to! Taking advantage of a nearby rock, you raise your crotch to the right level to nuzzle your cock against that winking clit, marveling at the sheer heat rolling off of that steaming horse cunt. It cradles the length of your cock, coating the underside in sticky need and dribbling down your balls with sheer excess, just begging to be pounded. Deciding to savor that delicious wetness, you frot your cock upward, sawing your dick between greedy lips until the head touches Sandy's puckered equine anus, tightening visibly with her cunt's insistent clench. Stopping to tease that soft pucker, you shudder at its silky skin. It's nice and clean, and you're sure she wouldn't complain if you decided to 'take the path less traveled.'";
		say "      [bold type]Should you use her other hole or put her pussy to work?[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Time for some anal fun.";
		say "     [link](N)[as]n[end link] - Nah, you want some pussy.";
		if Player consents:
			LineBreak;
			say "     Gathering up a generous coating of pussy juice with delving fingers, you transfer it to your pulsing shaft, prodding that puckered horse hole just to hear Sandy's breath catch in her throat. It seems that even as the centaurs' whore, there are some things she hasn't done all that often. Good thing you're here to change that. Satisfied with the dripping coat of natural lube, you take hold of Sandy's tail, hiking it up out of the way as you smear your tip over her hole, leaving it sticky and glistening with pussy juice. Your cock slides in like it's a hot knife into butter, spreading those inner walls around your length and working that clenching donut down inch by inch along your shaft until it rests against your base, puckering as if to suck you deeper. Sandy's body seems to cry out for cock, and she proves it by pushing back against your sudden penetration, nearly bowling you over with her eagerness for more. Instincts as breeding stock have kicked in, and her human half has gone slack, roaming fingers touching her breasts and her open mouth panting like a mare in estrus.";
			say "     Slapping Sandy's rump and letting her know what a good mare she's being, you begin to fuck her in earnest, sheathing yourself to the root in increasingly violent thrusts that pull her hole backward as it tries its best to grip you. From the base of your dick to your aching [if Player is InternalBalls]internal [end if] balls, you can feel that sloppily slurping hole hungrily begging for your cum, and you're more than ready to satisfy it. Without regard for your centaur fuckhole's pleasure, you pound away, rushing toward your peak with wild abandon. Your final thrust makes the mare stumble with its force, but you take hold of her hindquarters with both hands, digging your fingers in as you pump a heavy dose of seed deep into her colon. It's so good that you can't help but thrust through the oversensitivity of orgasm, stirring your cum to foamy sloppiness and filling the air with increasingly sloppy sounds reminiscent of wet pasta.";
			WaitLineBreak;
			say "     Sandy shivers as you finish, her upper half quivering and her poor forgotten cunt flexing as she milks every drop from you. When you pull out, she seems almost disappointed, her back legs shaking as though they'll give out and her pussy winking as if begging for a repeat performance, even as her well-fucked donut sloppily drools down its lips, glazing her clit with your cum. Unfortunately for her, you're spent, so you pat her violated rump and tell her she can go back to the herd. She nods without another word, her tail still flagging high to inadvertently show off your handiwork. You shiver as you gather your things, feeling your cock jump at the sight. Maybe you'll have to come back and use her again sometime soon.";
			NPCSexAftermath Sandy receives "AssFuck" from Player;
		else:
			say "     Shaking your head, you abandon that tempting donut, rolling your cockhead down to part those juicy lips and testing their depths, shuddering as the first inch envelops your cock tip in velvety softness. It's too good to resist, and before long, you find yourself gripping that shapely rump, sinking yourself to the root, and pausing to savor the wet churn of inner muscles around your shaft. Sandy sighs aloud as you hilt inside, touching her breasts with eager fingers and pushing back with her entire being. Her clitoris jumps as her pussy clenches, caressing the bottom of your cock, and you can feel her juices dripping down your thighs. With all this begging, you couldn't possibly let her down, so you thrust away, jabbing your cock into that soft wetness with wild abandon and slapping your [if Player is InternalBalls]thighs against her supple hindquarters [else]balls against her clit[end if].";
			say "     It's not long before you feel your orgasm approaching, ripped from the depths of your body by that eager, stroking cunt. You try to hold out as long as you can, but that increasingly greedy grip tears it out of you, creaming that cunt with every drop your balls can pump. Intense sensations spur you to thrust through your orgasm despite the oversensitivity it brings, and by the time you finish, the mare's cunt is an overfucked mess, dripping with foamy cum. As you pull out, you're surprised by a sloppy dribble of pussy juice accompanied by a whorish moan from the usually quiet mare. It seems your breeding brought Sandy close, and all it took to send her over the edge was the underside of your shaft rolling along her exposed pleasure button. Patting her rump, you leave her to wander back to the herd with a disheveled, panting expression, still dripping with the evidence of your fun, as you gather your things. If she's always this eager, maybe you should return and do this again!";
			NPCSexAftermath Sandy receives "PussyFuck" from Player;

to say SandyPussyPlay:
	say "     Patting Sandy's rump, you say you don't have a way to breed her, but you'd like to have fun with her anyway. You take her soft shiver and winking lower lips as consent, inching your fingers lower until they brush those steaming pussy lips. She's so wet that your fingers take on a thick layer of glaze at the slightest touch, and as you smear it over her lips, you admire her unique anatomy. Silky-soft lips quiver under your fingers, puffy and onyx colored, and between, pretty pink walls peek through with every clamp, pulsing with need. It's almost like Sandy's cunt is begging for more, and you swiftly oblige them, slipping three fingers in and shivering as her insides cradle your digits, sucking them like an obedient mouth. You saw them in and out with slow, savoring thrusts, your mouth going dry as her clit winks in and out of its hood, exposing itself. Putting your other hand to work, you massage that pleasure pearl, delighting in the way those thick equine haunches sway as she tries to press back. The more aggressively you swirl your fingertips, the more she pants, and the greedier her cunt becomes until you're using all five fingers, nearly slurping your hand to the wrist. You might be able to put your whole arm into her if you like.";
	say "     [bold type]Go for it?[roman type][line break]";
	say "     [link](Y)[as]y[end link]Fuck yeah. Let's see how deep she is!";
	say "     [link](N)[as]n[end link]Nah. You're not interested in something like that. Just get her off.";
	if Player consents: [Fisting]
		LineBreak;
		say "     Curling your fingers into a fist, you test the centaur's limits, sliding deeper into moist, sloppy depths with a slurp. You suppose it's no surprise that she takes your arm nearly to the shoulder, with how used to horse cocks she must be by now, but the tightness sloshing around your arm makes you bite your lower lip. Sandy seems just as excited as you are by the oversized penetration, breathing heavily and twitching her raised tail from side to side. Before long, she's shoving backward, encouraging you to work your arm in and out of that wet horse cunt until a telltale squeeze stops you in place, surrounding your limb with a tightness that threatens to break bones. Without further warning, the centauress seizes up, gripping a nearby rock and shuddering through her peak. Juices rain down around your shoulder, and that winking pussy blasts your chest with squirting approval, marking you with pure mare. Moments later, once those clamped muscles release enough for you to pull out, you pat that ebony rump, quipping that you're better 'hung' than any of the stallions to mate her before. She should ask you for a repeat performance next time she's craving cock! Of course, your audience is too out of it to answer, standing on shaky equine legs with her gaped pussy clamping on empty air as if begging for a repeat performance. You'll take that as a yes.";
	else:
		LineBreak;
		say "      Shaking your head, you opt for a gentler approach, circling that winking clit with soft fingers and stroking it to the rhythm of Sandy's clamping pussy. Paying particular attention to her lips, you rim them with your delving fingers, spreading juices over them until they gleam, then lowering them to follow that equine pleasure button inward, massaging her G-spot with steadily increasing pressure. Sandy breaks her usual stoic silence as you continue, letting loose a litany of soft whimpers and gasps. Her legs nearly buckle as you tease her toward her peak, and the only thing that holds her up is a tenuous grip on a nearby boulder. Taking her newfound vulnerability as a challenge, you increase the intensity of your fingerplay until she loses what little composure she has, shoving backward toward you and unleashing a squirt of feminine approval that splatters as far as your chest. Not one to disappoint, you continue your expert pussy-manipulation until the centauress quietly pleads for mercy with squeaking, hitched breaths. You leave her to enjoy the quaking aftershocks of orgasm, idly touching yourself as you watch her attempt to regain her composure, tail still lifted in the air and pussy still clamping around nothing as though milking an invisible member. Storing that image in your spank bank, you pat her rump and leave her."; [Fingering]
	NPCSexAftermath Sandy receives "Stroking" from Player;

to say SandyConsentFuck:
	say "     Unwilling to wait any longer, you toss aside anything that might get in the way of breeding Sandy and use her tail to guide her over to a nearby rock, flopping your cock against her dripping pussy and sawing it between her lips, not applying enough pressure to slip in. With the underside of your cock bathed in such slippery heat, you're content to hotdog that clenching cunt, shuddering as her clit kisses the base of your cock, winking outward as if begging for attention. The combination of bestial hindquarters and the soft lips you tasted moments ago has you hard as a rock, but a decision still looms.";
	say "     [bold type]Do you want to slide into that greedy cunt, or take advantage of that defenseless donut above it?[roman type][line break]";
	say "     [link](Y)[as](y)[end link]Yes, breed that pussy.";
	say "     [link](N)[as](n)[end link]No, stuff it in her backdoor.";
	if Player consents:
		LineBreak;
		say "     Spreading those pink walls with curious fingers and listening to the gentle moan of pleasure from the centauress, you decide that you can't resist that juicy clench, lowering your cock until it pulses against her exposed pearl. Teasing for a moment, you grind there until the centauress stamps her hoof in a silent demand, then follow the heat of her juices into that silky soft pussy, pausing when your shaft reaches its root. Sumptuously silky and incredibly hot, that sweet sauna pulses with greed, massaging every inch of your cock and clamping hard enough that you worry it'll tear it off. 'Don't tease. Fuck me!' Sandy begs you to continue, swaying her rear enough that you almost schlorp from her increasingly sloppy entrance. She's openly touching herself, playing with her breasts as she leans against a nearby boulder, and her breath comes in soft pants that match her reddened face.";
		say "     Not one to ignore a lady's demands, you grind in and out with an increasingly heavy, punishing rhythm. Thankfully, Sandy's hindquarters are as sturdy as they are curved, and even when you put your whole body into every thrust, they barely move, pushing back to accept every inch. It's a miracle that you don't cum instantly, but you clench your entire being, stopping everything but a healthy flow of pre. Sloppy sounds float through the tall grass as you make a mess of your thighs and crotch, covered in Sandy's juices, but you can only shove with all your might, biting your lower lip in a desperate bid to last even a moment longer. Unfortunately, you lose the battle before you know it, and you bottom out, rope after rope of cum blasting out to baste every inch of the mare's insides and drooling down the length of your shaft to the pool of fluids below you.";
		WaitLineBreak;
		say "     'Mmph.' Losing control of herself, Sandy backs up a bit too far, bowling you over and sending you sprawling in the puddle below you, your bare ass on the rough rock. Still desperate for more cock, she follows you down, sitting hundreds of pounds of horny horse on your poor unprotected pelvis and trapping you in place. She's too desperate to listen to reason, and you're just the thing to ease her desires! With no choice but to endure, you pump your hips upward against that greedy cunt, working through the afterglow of your orgasm without skipping a beat and careening toward another. Using Sandy's tail as a handhold, you pump upward into the stifling embrace of horse rump, your moans joining hers as more liquid mare enjoyment coats every inch of your lower half. Your legs go numb just before you explode again, but thankfully for your poor hips, she finishes just as you do, squirting her pleasure over your thighs and turning the ground around you into a swampy, musky mess. Realizing her error, Sandy quickly stands, pussy still clamping on air and thickly glazed with your cum. Her hair is plastered to her chest by sweat as he speaks, and you can't help but feel pride in how utterly lost to pleasure she seems to be. 'Sorry. I- Can we- Do that again? Sometime soon?' Too exhausted to reply properly, you give the greedy mare a thumbs-up, your half-mast cock squirting its agreement.";
		NPCSexAftermath Sandy receives "PussyFuck" from Player;
	else:
		say "     Slowly dipping your dick into that wet mare pussy, you coat yourself in her juices, teasing her clit with the underside of your cock before pulling back and easing your glistening member upward until it flops on the soft, clenching donut above that teardrop-shaped cunt. Slowly, you massage your cock into that tight ring of muscle, attempting to push through and gauging the mare's reaction. When she doesn't immediately kick you in the stomach, you go for it, slurping into her backdoor with a slow thrust. 'N-Not the first time.' Sandy groans with mild discomfort as you bottom out, but she doesn't protest, though you can see her blush to her shoulders. Is she embarrassed?";
		say "     Taking advantage of the mare's acceptance, you piston your hips, stroking your cock through that velvet donut and marveling at the slick tightness. There's something so deliciously naughty about fucking the mare's backdoor when Sandy's pussy's right there, winking in protest and demanding attention, that you find yourself pumping harder and harder, watching that ass swallow you easily. It's so good that you approach your limit embarrassingly fast, but you ignore your desire to prolong the session, greedily slamming to the root until, with a loud groan, you empty your balls deep into Sandy's ass. Slowly, you withdraw, biting your lower lip at the sensitivity of your cum-coated member. It's clear that the mare didn't finish when you did, but she doesn't protest as you gather your gear, instead reaching back with some effort to touch her needy pussy and finger the drooling seed from her violated ass into herself. Did she get off on being used? The thought almost encourages you to stuff yourself back into that sloppy donut to see if she'll cum hands-free, but you gather your things instead. You can always try again later~.";
		NPCSexAftermath Sandy receives "AssFuck" from Player;

to say SandyConsentCunnilingus:
	say "     Deciding to give the mare pleasure for once, you pat her rump, settling in on a conveniently placed nearby stump and encouraging her to back up. She seems confused at first, but when your breath touches her pussy lips, she gets the picture, lifting her tail high and quivering in anticipation. Confronted with that bestial pussy, you take a moment to admire how different it looks. Pitch-black, thick teardrop lips frame the slightest hint of pink, and a matching pink pearl winks at you, bringing with it a dribble of wetness that smells of aroused mare, cloying but sweet. Nuzzling into those cradling lips, you let them meet yours, pressing soft kisses lower until that clit rises to meet you in a uniquely equine expression of arousal. You lavish it with attention, gently rolling your tongue over its length until Sandy whimpers for mercy, then nipping at it, taking the whole thing into your mouth for a deep, indulgent suck. You pause there for what seems like an eternity, nursing on that glistening pearl, until she shakes and cries out, clearly nearing her finish. You back off immediately, cleaning the gooey dribble of mare juices with a teasing tongue until you're sure she's off the edge, then greedily dig back in.";
	say "     Overwhelmed by your attempts at pleasuring her, Sandy devolves into a panting mess, barely holding herself up and preventing herself from breaking your neck with her rump's weight. The longer you tease, the more desperate she sounds until she explicitly begs you to finish her off, twitching with every touch of her overworked cunt and squeezing her breasts hard enough that you worry she'll bruise them. 'Please. Please!' Satisfied with her reaction, you continue well past Sandy's plateau, sending her hurtling over the edge into orgasm with a lashing tongue that punishes her poor clitoris. You can barely breathe with your face buried in her pussy, but you couldn't be happier, bracing yourself for the centaur's orgasm and slapping her ass as if encouraging her to let go.";
	WaitLineBreak;
	say "     Like a firehose freshly unkinked, Sandy sprays your face and chest with a heavy orgasm that might have knocked you off your feet had you not been clinging to her legs for dear life. Devolving into half-words and whispered pleas, her upper half heaves with each breath,  drool dripping from the corners of her mouth and sweat pouring down her alabaster skin. It seems it was so good that she's gone nonverbal, and even as you stand up and ask her whether she's okay, all she can do is shiver, staring off into the distance. Deciding that you'll leave her to recover, you clean yourself off, gather your things, and bid the centauress adieu, whistling to yourself and licking your lips of her sweet taste. You'll have to do that again sometime!";
	NPCSexAftermath Sandy receives "OralPussy" from Player;

to say SandyConsentCunnilingusPlayer:
	say "     As you break away from the centaur's kiss, you can think of only one thing you want from her. Those lips were so talented against your own- so why not put them to work elsewhere? Tossing aside your gear, you get down on all fours and spread your legs, asking Sandy if she'll help you with your little problem. Of course, you're referring to the wet pair of lips between your legs, but you enjoy watching her connect the dots. 'I- I-' Blushing as she kneels to bring her face closer to your cunt, Sandy looks up at you with strangely innocent eyes for former centaur breeding stock. 'I'm not sure I'll be all that good at it, but I don't mind.' Lowering her head, she uses both hands to spread your thighs, letting her tongue trail along your lips and tentatively flicking it over your clit.";
	say "     Groaning your pleasure, you encourage the centauress, wrapping your legs around her shoulders and running your fingers through long black tresses before shoving her face forward. She struggles for a moment as you grind on her face, but that tongue never stops for a moment, and as it penetrates you, you can feel her gaining confidence, sloppily working your inner walls. Guiding the centaur to your most sensitive spots, you guide her ever closer to bringing you to orgasm. Once one finger slides into you alongside a heavy tongue-lashing, you feel it begin to build, and before long, you're suffocating her with your thighs, clamping down hard and riding her face. Drenched with sweat, you scream your approval to the sky even as you force the poor girl to contend with a thick flow of juices, though thankfully for her, you relax your grip in the afterglow, letting her up to gasp for air.";
	WaitLineBreak;
	say "     'I wouldn't mind doing that again.' Sandy says with a blush, looking away from your gaze with a head of sweaty, messed up hair. Judging by her panting, she enjoyed herself, though she couldn't touch herself in that position. Thanking her for her service, you drag her into a kiss that tastes like your juices, giving her breast a parting squeeze and promising to return the favor later. Judging by the longing expression on her face as you gather your things and ready yourself to leave, she's as excited for that as you are.";
	NPCSexAftermath Player receives "OralPussy" from Sandy;	

Sandy ends here.