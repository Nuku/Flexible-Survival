Version 4 of Mogdraz by Gherod begins here.

"Adds Mogdraz to the game."

[Version 1 - File created, Mogdraz and his Hellfire Club at Red Light + a few sub scenes]
[Version 2 - Updated Mogdraz with scenes, Toron added to the club roster]
[Version 3 - New Drinks, Abyssal Edge Enchantment, New Talk option to know more about Mogdraz and Araqiel. Toron moved to his own file]
[Version 4 - Moved Hellfire Club to its own file and reworked Mogdraz]

[Stats]

[ HP - Understanding of player's gender preference ]
[ 0: Mogdraz has no confirmation of your sexual orientation ]
[ 1: Mogdraz perceives you as leaning towards males ]
[ 2: Mogdraz perceives you as leaning towards females ]
[ 3: Mogdraz perceives you as a pansexual ]

[ Energy ]
[ 0: Player only knows they are extradimensional demons - default information]
[ 1: Player understands that Mogdraz knows more than he lets on...]

[ Libido ]
[ 0: Sex content Locked (needs activation through interactions) ]
[ 1: Sex content Unlocked (it can happen at any point) ]
[ 2: Fuck option Unlocked (can approach Mogdraz for sex) ]
[ 99: Sex content LOST (player did something wrong and failed to charm Mogdraz)]

[ Lust ]
[ Measures how much Mogdraz is interested in the player. The higher, the better... ]

[ Hunger ]
[ Measures how much of your soul belongs to Mogdraz. The higher, the more influence he has on the player]
[ 25 - 1/4 of the player's soul]
[ 50 - 2/4 of the player's soul]
[ 75 - 3/4 of the player's soul]
[ 100 - Player's entire soul belongs to Mogdraz]

[ Loyalty ]
[ Measures how much Mogdraz respects the player. The higher it is, the more Mogdraz will consider the player an ally, rather than just an asset, or worse...]
[ Less than 0 - Mogdraz considers the player a liability, only a tool to be used in his favor. Total soul acquisition results in player's anihilation, their essence consumed by the Demon Lord.]
[ 0 to 2 - Mogdraz thinks of the player as an interesting asset, or sometimes a fun diversion, nothing more.  Total soul acquisition results in player's eternal enslavement]
[ 3 to 4 - Mogdraz perceives the player as an ally, and would rather keep them alive and healthy (prevents bad ends on total soul acquisition)]
[ 5 and higher - Player is a true friend to the Demon Lord. They are offered a place alongside Mogdraz in leading the Hellfires.]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Mogdraz NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Mogdraz	"Mogdraz"

Mogdraz is a man. Mogdraz is in Hellfire VIP Floor.
ScaleValue of Mogdraz is 4. [DB sized]
Body Weight of Mogdraz is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Mogdraz is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Mogdraz is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Mogdraz is 9. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Mogdraz is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Mogdraz is 8. [length in inches]
Breast Size of Mogdraz is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Mogdraz is 2. [count of nipples]
Asshole Depth of Mogdraz is 15. [inches deep for anal fucking]
Asshole Tightness of Mogdraz is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Mogdraz is 1. [number of cocks]
Cock Girth of Mogdraz is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Mogdraz is 18. [length in inches]
Ball Count of Mogdraz is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Mogdraz is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Mogdraz is 0. [number of cunts]
Cunt Depth of Mogdraz is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Mogdraz is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Mogdraz is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Mogdraz is false.
PlayerRomanced of Mogdraz is false.
PlayerFriended of Mogdraz is false.
PlayerControlled of Mogdraz is false.
PlayerFucked of Mogdraz is false.
OralVirgin of Mogdraz is false.
Virgin of Mogdraz is true.
AnalVirgin of Mogdraz is false.
PenileVirgin of Mogdraz is false.
SexuallyExperienced of Mogdraz is true.
TwistedCapacity of Mogdraz is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Mogdraz is true. [steriles can't knock people up]
MainInfection of Mogdraz is "Hellfire Demon".
Description of Mogdraz is "[Mogdrazdesc]".
Conversation of Mogdraz is { "<This is nothing but a placeholder!>" }.
The scent of Mogdraz is "     Mogdraz smells faintly of brimstone, but he has a rather attractive, masculine scent. Being near him makes you feel more [if player is submissive]submissive, your knees weakening in his presence[else if player is dominant]dominant, empowered by his mighty presence[else if player is kinky]kinky, your mind contemplating all the possibilities[else]prone to sexual debauchery[end if]".

to say MogdrazDesc:
	project figure of Mogdraz_clothed_icon;
	say "     Wearing an ominous grin in his face pretty much all the time, the owner of the Hellfire Club is the highest rank among the Hellfires, larger and more muscular than the rest. Red skinned, with bigger sharper horns with a floating flame between them and above his head, fuzzier beard and even sporting a hairier chest, Mogdraz leads the entire Hellfire faction established in Red Light District, while managing a rather peculiar business of his own. He's wearing a leather set, complete with a spiky harness adorning his jacked torso, a leather jockstrap suitable for his enormous size, a pair of crotch revealing leather pants and black boots, adorned with a few chains here and there, and to accessorize, some piercings on his left eyebrow and ear, giving him quite an edgy look. Contrarily to what one would think at first sight, however, Mogdraz is actually somewhat friendly with that welcoming grin of his... Which sends you shivers down your spine.";
	if Perception of Player >= 19:
		say "     [bold type]Perception Bonus (19)[roman type]: [italic type]But you feel like there is more to his appearance than what meets your eyes. There is a much greater power contained within him...[roman type][line break]";
	else if Perception of Player >= 15:
		say "     [bold type]Perception Bonus (15)[roman type]: [italic type]You cannot quite put your finger on why, but it seems there is a greater power contained within him...[roman type][line break]";

[***********************************************************]
Section 3 - Mogdraz Talk Menu
[***********************************************************]

MogdrazDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Mogdraz:
	project figure of Mogdraz_face_icon;
	say "     As you approach Mogdraz, he gives you a toothy grin, like one of those you would definitely see a demon doing as he was about to offer you a deal you could not refuse. 'Came to have a chat with me? Or to procure one of my many services? Don't be shy... tell me [italic type]all[roman type] about it...'";
	now MogdrazDoneTalking is false;
	say "[MogdrazTalkMenu]";

to say MogdrazTalkMenu:
	say "     [bold type]What do you want to talk to Mogdraz about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jobs";
	now sortorder entry is 1;
	now description entry is "Work for the club";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 2;
	now description entry is "Ask Mogdraz to tell you more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His demon lackeys";
	now sortorder entry is 3;
	now description entry is "Inquire him about the roaming demons, as well as their possible infection strain";
	[]
	if Energy of Mogdraz > 0:
		choose a blank row in table of fucking options;
		now title entry is "Information on nanites";
		now sortorder entry is 4;
		now description entry is "He sure knows a lot about how nanites work... Ask about it";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His business";
	now sortorder entry is 5;
	now description entry is "Question about the club he manages";
	[]
	if Libido of Mogdraz is 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 6;
		now description entry is "Inquire about the possibility of having sex with the devil";
	[]
	if resolution of Hellish Introduction > 1:
		choose a blank row in table of fucking options;
		now title entry is "His situation with Xaedihr";
		now sortorder entry is 7;
		now description entry is "Ask more about their relationship";
	[]
	if Resolution of Ambush The Purifier >= 8:
		choose a blank row in table of fucking options;
		now title entry is "His story with Araqiel";
		now sortorder entry is 8;
		now description entry is "With the most recent developments taken into account, inquire about his relationship with the purifier";
	[]
	if HP of Araqiel is 3 and Resolution of Ambush The Purifier is 5:
		choose a blank row in table of fucking options;
		now title entry is "Ask about the Purifier";
		now sortorder entry is 99;
		now description entry is "Try to know more about their most recent capture";
	[]
	if Resolution of YokLairMogdraz is 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask for his help in finding the onis";
		now sortorder entry is 99;
		now description entry is "Mogdraz would surely be able to help you, so ask him about it";
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
				if (nam is "Jobs"):
					say "[MogdrazTalkJobs]";
				else if (nam is "Himself"):
					say "[MogdrazTalkHimself]";
				else if (nam is "His demon lackeys"):
					say "[MogdrazTalkHisDemons]";
				else if (nam is "Information on nanites"):
					say "[MogdrazTalkNanites]";
				else if (nam is "His business"):
					say "[MogdrazTalkBusiness]";
				else if (nam is "Sex"):
					say "[MogdrazTalkSex]";
				else if (nam is "His situation with Xaedihr"):
					say "[MogdrazTalkXaedihr]";
				else if (nam is "His story with Araqiel"):
					say "[MogdrazTalkAraqiel]";
				else if (nam is "Ask about the Purifier"):
					say "[MogdrazTalkPurifier]"; [in Araqiel file]
				else if (nam is "Ask for his help in finding the onis"):
					say "[MogdrazTalkYokLair]"; [in Hayato file]
				wait for any key;
				if MogdrazDoneTalking is false:
					say "[MogdrazTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You give Mogdraz a polite bow as you make your leave, which he retributes.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say MogdrazTalkJobs:
	if Resolution of HellfireEscort is 99: [lost and locked]
		say "     Due to your terrible last performance while working for him, Mogdraz has dismissed your services indefinitely. You won't even ask him about it, as you know what the answer will be.";
	else if scalevalue of player > 4:
		say "     To ask the demon Lord about potential jobs, you bring up the subject as politely as possible. He immediately shakes his head in response. 'I apologize, but I have no need for someone of your particular... dimensions. Perhaps if you were to be a tad bit shorter? Even my most submissive clientele would not be able to quite endure someone with your stature...'";
	else if player is neuter:
		say "     To ask the demon Lord about potential jobs, you bring up the subject as politely as possible. He immediately shakes his head in response. 'Well, despite many of my clients being fond of either oral or anal, not sporting any kind of genitalia is a massive hindrance. I'm afraid I will have to refuse you until further notice. And if you are wondering how I can see that, well... It is quite obvious.'";
		say "     It seems you cannot work as an escort without having neither a dick nor a pussy. You must have at least one of these!";
	else if HellfireEscortCooldown - turns < 8:
		say "     To ask the demon Lord about potential jobs, you bring up the subject as politely as possible. He immediately shakes his head in response. 'I have no need of your services, right now. Perhaps later, though.' he says as he dismisses you.";
	else:
		say "     To ask the demon Lord about potential jobs, you bring up the subject as politely as possible. He looks at you, and gestures you to spin around once, in order to examine you.";
		now MogdrazDoneTalking is true;
		WaitLineBreak;
		say "[HellfireClubEscort]"; [Continues on Hellfire Club file]

to say MogdrazTalkHimself:
	say "     Intrigued by the big red demon, you try to ask him to tell things about himself. 'Me? Where does that interest arise from?! Is it my good hellish looks? Or, perhaps, I have such an intriguing personality that you cannot help but ask about...' he chuckles. 'Well, I run a business, as I have already told you. There... really isn't much else to say. I come from another realm, quite like your own, except quite different in terms of events that have taken place. But really, I have barely established myself here, anything else that comes up with will be as much as a surprise for yourself as it will be for me.' It seems he is not willing to share much about himself, personally, but you have got the basics, for now.";

to say MogdrazTalkHisDemons:
	say "     The Hellfire Demons you first encountered left a few questions in your mind, which you proceed to direct towards Mogdraz. Since you probably do not know a lot about them, the Demon Lord makes a pause to consider what he should tell you. 'The Hellfires? How should I put this... We are extradimensional to you, as you may have already realized. My kind comes from the hot depths of Hell, forged like titans from the hottest volcanoes, and we were made remarkably close to dragons, with the ability to bend fire at will. Of course, we were also made extremely attractive, in my opinion... But of course, charm isn't always the only outcome out of our image. We were created to strike fear into mortals, make them bow before us and obey... Now, well, that took quite a turn, didn't it?'";
	WaitLineBreak;
	say "     That explains their origins, but how would their existence have an effect in your world? Mogdraz then explains. 'Well, from what I've seen around here, people catch a lot of transformative effects from all the strange creatures in this place... My kind is not [']infectious['] per se, as you call it, as any direct interaction with them doesn't force your body towards any change. However, I've observed than once [bold type]something that belongs to them[roman type] is separated from their system for at least a substantial amount of time, they become as transformative as other nanite-infested items... It is quite curious.'";
	say "     What Mogdraz means is that any item you collect from one of the Hellfires works just like any other collectable from any other creature, but direct contact doesn't seem to do anything out of the ordinary. 'Toron has a theory that my lackeys and ourselves may be invulnerable to the nanites, so we don't suffer any changes nor change anyone with our body fluids. But any other part that is split from us, which would be the equivalent of splitting part of you from your immunity system, becomes vulnerable to the infection, and the nanites adapt into the closest strain possible to the part's former owner in order to provide a significant change.'";
	WaitLineBreak;
	say "     Hoping he has sated your curiosity, he gives you a polite smile with the clear indication that you should move to some other matter.";
	if Energy of Mogdraz is 0:
		now Energy of Mogdraz is 1;

to say MogdrazTalkNanites:
	say "     Another question remains, which is how does he know all this stuff about the nanites?";
	say "     His facial expression shifts into a half-drawn smile. While he does not seem very inclined to share his reasons, he does give you an answer. 'Do you take me for a fool? Obviously I've made my homework before I established a business in this chaotic place. Imagine if my demons and I were vulnerable to this apocalypse? But I know you want to know how I know all of this, rather than why... I do have my ways to gather all the information I seek. Spy imps, informants, irrefusable deals... There's always a way. Though you don't expect me to provide any further details, I hope? Because I would have to let you down.'";
	say "     It seems that his position is as clear as water. Perhaps some things are not meant to be known.";

to say MogdrazTalkBusiness:
	say "     He already told you what his business is about, but you'd like to know more. Questioning him, he's glad to clarify some aspects. 'As I have told you, my business offers many possibilities to its guests. You can either requisition a demon's services, provide your own services, match up with someone around the lounge and have some free fun... But it doesn't take a genious to realize I do some side work, right?' It looks like he is going to explain something, but then dives into a silence, breaking it only a few seconds later. 'Do take a look around and enjoy the space. Anything that troubles you, come directly to me. I will solve all, or most, of your problems, one way or another.' Despite the cryptic last part, you thank him for the words and decide to not press any further.";

to say MogdrazTalkSex:
	if Libido of Mogdraz is 99:
		say "     Of course, you can't just pretend Mogdraz isn't an extraordinarily handsome devil. His bulging muscles, the sheer size and strength of probably the biggest demon you have ever seen, and not to mention the massive bump in his jockstrap, it does make your mind wonder. Politely, you throw in the question about him having sex with his patrons, but he immediately understands your intentions. The answer that follows, however, shatters every hope you could have... 'Absolutely not. Not with you, at least. I see you as a mere business partner, nothing else. Though there are many more options around here... Surely I am not the only that strikes your eye? Flattered that you think so, however, but... I'm not interested.'";
	else:
		say "     Of course, you cannot just pretend Mogdraz isn't an extraordinarily handsome devil. His bulging muscles, the sheer size and strength of probably the biggest demon you have ever seen, and not to mention the massive bump in his jockstrap, it does make your mind wonder. Politely, you throw in the question about him having sex with his patrons, but he immediately understands your intentions. 'So you fancy me, I see...' He grins at you, spreading his legs slightly to further show off his eye-catching bulge. 'It is rather flattering that you think so. It might not seem like it, but I do love a good flirt, especially a cute mortal like yourself...' He chuckles, leaning forward towards you. 'Maybe I can give you a private session in my personal bedroom... Who knows? But you have to earn it... I don't accept any form of payment other than work effort.' Now that is a surprise, but he's not joking about it either. It seems you have to win your way into his bed. Would he, perhaps, be pleased if you helped his business?";
		if Libido of Mogdraz is 0:
			now Libido of Mogdraz is 1; [player showed interest in pursuing sex with Mogdraz]

to say MogdrazTalkXaedihr:
	say "     You further question Mogdraz about his relationship with Xaedihr. He shrugs, but replies... 'Yes, I guess you have a few questions... Was [italic type]totally[roman type] not expecting to see young Xaedihr here. He changed a lot, that much is clear...' He makes a pause, and continues speaking before you have to inquire further. 'Back in the days I was but a humble servant, and Xaedihr was, or well, is, the son of my former Lord. And once we had the rebellion, in which I had to leave, I simply offered Xaedihr a chance to escape, if he wanted. Surely, you can say I had a bit of a generous heart, there, but that would also provide a strategic advantage against that tyrant. The disappearance of his son would buy us enough time to run the operation more safely.'";
	say "     'Now, between me and Xaedihr... We are merely allies. There's not much else going on. Being the only demon he doesn't take for an automatic enemy is an earned privilege. But as you saw, we have certain disagreement points, namely due to the fact I am still a demon. I am still one with certain needs that need to be sated. What I do is definitely not something he would approve, but alas, I have more things to worry about, and I know he would understand up to a certain point if I was honest about... well, the obvious. I trust you'll keep this conversation between us, however. Know that my intentions are not to harm anyone, and I give you my word on that.' With a nod, you also thank Mogdraz for the time he took to tell you all of this.";

to say MogdrazTalkAraqiel:
	say "     Mogdraz always knows everything. Obviously, he should have known that you have discovered the truth regarding him and Araqiel, and you proceed to ask him about that. 'Bold of you to eavesdrop on us. But I suppose there's no reason to hide this from you. Araqiel is under a contract with me, and I own his soul. He has to do whatever I say, and right now, that bond is more useful than ever. For his safety, of course. I'm not heartless.' he says, with an abrupt honesty. 'And well... Since, as I said, I'm not heartless, if he feels like he needs to go out and catch some air, I can assign him as your personal bodyguard. What's a large angel with red eyes and a dandling dick in a world of sex-crazed freaks, anyway... I don't think he would be in any unnecessary danger as long as my [']special guest['] kept him under an eye, am I right?'";
	say "     You can't push away the idea that Mogdraz is actually assigning you as the angel's babysitter, instead...";
	WaitLineBreak;
	if purifier seraphim is not tamed:
		say "     (Araqiel the Purifier Seraphim is now a possible ally! You can make him your active ally by typing [bold type][link]ally Araqiel[end link][roman type] or [bold type][link]ally seraphim purifier[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Araqiel[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
		add "Tamed" to Traits of purifier seraphim;
		now purifier seraphim is tamed;

[***********************************************************]
Section 4 - Mogdraz Sex Menu
[***********************************************************]

Instead of fucking Mogdraz:
	say "[SexWithMogdraz]";

to say SexWithMogdraz:
	say "[bold type]<< Author's Note: This is not possible at the moment >>[roman type][line break]";

	[if (lastfuck of Mogdraz - turns < 7) and libido of Mogdraz > 3 and libido of Mogdraz < 99:
		say "     Mogdraz's eyebrows raise in a widened gaze as a sign of perplexity as you're about to ask him for some sex. 'Keep that up and I'll have to think about setting you down as a club's slave! What kind of audacity is this? You have gotten your share of attention, for now. Maybe later...' he says in response, adding a wink and a teasing smirk at the end.";
	else if libido of Mogdraz > 0 and libido of Mogdraz < 4:
		say "     You wish. This Demon Lord won't take a petty mortal such as yourself so easily. You have to earn his attention, first. Do some work around the Hellfire Club, and perhaps he will come to you.";
	else if libido of Mogdraz is 99:
		say "     Given what you said to him the last time you were together, it would be very inappropriate to attempt to engage in a sexual encounter with Mogdraz. You decided to stay as friends, and so that shall be the case. Nonetheless, he's always happy to see and talk to you.";

to say MogdrazDate:
	say "     With the intention of getting down with the big Master still present in your mind, you make an advance towards it by asking him if he has any plans for tonight. He tilts his head and looks at you in some surprise, but at the same time he makes his bulging crotch evident in your angle of view. 'My plans are to watch over my people, making sure nothing goes astray... But I suppose you have a better suggestion regarding how I should spend my time?' he ironically asks you, albeit the grin on his face is rather suggesting that he's just on about teasing you. Taking your previous conversation into account, you think if this would be a good time to [bold type]invite Mogdraz for a walk[roman type]... You know, to get to know each other a little better?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Invite him out.";
	say "     ([link]N[as]n[end link]) - Better not, for now.";
	if player consents:
		if Libido of Mogdraz is 1:
			Linebreak;
			say "     Few are the ones whom you still have to ask out nowadays, and you have to admit to yourself you kind of lost your way with words, but eventually you manage to forward the invitation. He doesn't answer for a good while, his perplexed expression lingering for a moment, then he throws a laughter. '[']Tis rather flattering! I would never guess you'd actually follow my words like that! My, what a good surprise you are...' You can't help but feel a little embarassed as the big devil's response reaches your ears, and no less nervous. 'Well, since you had the decency to ask first, I'll go with you. Just keep in mind I can't stay outside for long.' After all, he was quite nice in accepting your invitation! This said, Mogdraz raises from his sofa and accompanies you outside.";
			WaitLineBreak;
			say "     With this area of Red Light District being as hidden as it is, you find nothing and nobody along your path, leaving you to be able to talk in plain peace. During your time, Mogdraz tells you a little more about himself. 'Most people tend to think of demons as inherently evil and sex-crazed beasts, or worse. It's not like that, some of us who are not under the influence of Hell are quite the typical average person. We feel things, just like any other living being with half a brain, I guess.' After a while, you're both leaning against a wall, with a view facing one of the most populated streets of Red Light District, where you actually can see some depravity going on right under your nose. Specifically, a succubus getting dirty with a group of gel creatures in what seems to be a messy orgy. 'Ugh, that's why I'm very selective with my succubi. You never know what kinds of things they've been doing...'";
			say "     But there comes a time when the red devil says it has to end for now. 'As much as it pains me to drop out of this great moment, I'm afraid we'll have to call it a day. I don't feel good in leaving my club for long... Hope you understand!' He says as he approaches you, and you nod at him. '[']Tis been a good while since someone came to me as you did. I like it when people take an interest on my inner side, as well! Feels so rare... Someone actually not wanting to have sex right off the bat, y'know?' He keeps commenting about this and that throughout your walk back to the club, and you two share a little nice conversation in the meantime...";
			now libido of Mogdraz is 2;
			now lastfuck of Mogdraz is turns;
		else if libido of Mogdraz is 2:
			Linebreak;
			say "     For the second time you're hanging out, it becomes easier to invite him out. He grins at your proposal - seriously, he always looks like he's plotting something with that snark of his - and you both walk out of the club without any actual verbal response coming from him, only a slight push on your back as he guides you to the exit. 'Thanks, I was needing some fresh air. Even better when it's with good company such as yours.' he adds, only when you're away from anyone's ears at the club. The red devil takes you to a different spot of the Red Light District this time, and it isn't as quiet and peaceful as the last time...";
			WaitLineBreak;
			say "     'Here, I want to show you something.' he tells you, as you both make your way down one of the roads. In normal circumstances, any of these creatures would attack you immediately, but in the presence of the almighty Mogdraz, they all cower and don't dare to approach any of you. 'This is something that you should know... As you probably have noticed already on my minions, we share a certain aura. Mine is rather unique, and it can have certain effects on different people. I hope that doesn't push you back, by any means!' he explains, expressing some worry regarding what you feel about that. 'Though certainly, as you keep coming back to me without any immediate urge, I can be assured it has nothing to do with this... That puts me at ease.'";
			say "     So this is the explanation Mogdraz gives you to want to date someone before getting dirty with them. Perhaps it's a way to filter those who are just affected by his demonic aura from the ones with genuine desire for him? Nonetheless, you two share a good moment together. Mogdraz has actually a quite good sense of humor, telling you a few jokes and keeping you entertained throughout the stroll. This drags on for a while until it's time to call it a day. 'T'was a great time, as always. Looking forward to our next meeting, friend.' He gives you a pat on the back as you both make your way inside the club, Mogdraz returning to his usual spot. This seems to be going well, and now that he has revealed his reasons, maybe next time things can go a little differently... who knows?";
			now libido of Mogdraz is 3;
			now lastfuck of Mogdraz is turns;
		else if Libido of Mogdraz is 3:
			Linebreak;
			say "     Once more, you invite Mogdraz for a stroll around the vicinity, given the possibility of him not being busy right now. 'Yeah, sure! Let's head out, I could use the time...' With that said, he stands up and accompanies you to the exit of the club, making a turn towards the most quiet streets...";
			say "     Stopping at a completely empty one, where nobody is even lurking around, you both share a nice conversation for a good while. 'I have to say you were a nice surprise. Maybe one of the best my boys ever brought to me.' he tells you, his bright yellow eyes looking directly at you in the most sincere gaze. 'You know, I've been thinking about that question you first asked me, and well, given the fact my doubts were erased, I...' he doesn't finish the sentence, instead walking towards you... 'Y'know...' There's a wall behind you, and he doesn't seem to be stopping. His enormous frame overshadows you as he's close to pin you against the building's robust surface. By now, you can smell his scent, oddly arousing and masculine, as things around you heat up quite a lot all of the sudden. It's not long before you can feel his sizable bulge rubbing against [if scalevalue of player > 3]yours[else if scalevalue of player is 3]your midriff[else]you[end if], alarmingly huge in size and pulsing slightly. In a weird mixture of confusion and lust, you turn your face to him and ask what is going on.";
			WaitLineBreak;
			if player is submissive or HP of Mogdraz is 20:
				say "     'Realizing what you're into actually makes me interested in experimenting with you... Someone I don't have to use any kind of power to bend their will. Knowing you genuinely like me is a very good score towards gaining my affection, and I just want to show you that";
			else if player is dominant or HP of Mogdraz is 10:
				say "     'I know you prefer to dominate, and often top... But I'm a big guy with big needs, and you turn me on for your uniqueness... Say, would you like to make me happy, even as a Dom? Besides that, knowing you genuinely like me is a very good score towards gaining my affection, and I just want to show you that";
			else:
				say "     'You're curious about the fantasy of either being dominated or submitting to someone, but you're also intrigued about me, are you not? Well... Knowing you genuinely like me is a very good score towards gaining my affection, and I just want to show you that";
			say "...' His advances leave you with a decision to make. [bold type]Do you want to let this happen, or would you rather keep Mogdraz as your friend only[roman type], refusing any sex with him from now on? [if player is dominant]Note that Mogdraz is a fairly dominant individual...[end if][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - This is all you've been wanting ever since!";
			say "     ([link]N[as]n[end link]) - Let's just be friends.";
			if player consents:
				Linebreak;
				MogdrazFirstSex;
			else:
				Linebreak;
				say "     You put your hands forward, not to touch his body, but to push him away gently, turning your face over. He takes the hint, and pulls back, rather embarassed. 'Yeah, uh... sorry. I'm not good at this either. It was inconsiderate of me to assume you'd want a fuck right now...' he says, the air around you cooling down and shifting to a most awkward atmosphere. Despite this, you try telling him you'd be willing to become his friend, and keep things clear like that. 'Yeah, sure... I'd be more than happy to keep you as a friend. And you're welcome to visit my place anytime!' he says, with a sincere smile. With this out of the way, you're both free to return to the club. Things slowly come back to normal before you have to follow separate ways, and you're glad he understood your request.";
				now libido of Mogdraz is 99; [no sex with Mogdraz]
	else:
		LineBreak;
		say "     Maybe you should take it as a hint to step back for now. Mogdraz doesn't seem to be the kind of guy you'd want to mess things up with. You excuse yourself politely, and he eyes you as you go.";

to MogdrazFirstSex:
	say "     Your face is flushed, his massive hand stroking your cheek as you feel his impressive musculature pressed against you, the demonic dong still held inside his jockstrap threatening to tear the thing apart. His eyes stop on yours, fixated in your own gaze as [if player is naked]he feels up the rest of your body with his warm touch[else]he begins to take off your clothes, one by one, his warm touch making you shiver[end if]. When your fully exposed body gets in close contact with his, you can't help but feel an intense wave of lust overcome you, a much more powerful effect than those you can find on any normal hellfire demon... Your arousal builds up, [if player is male]cock rising to attention, [else if player is female]your sex moistening, [end if]body temperature increasing slightly, your skin becoming more sensitive...";
	say "     Standing in some dark alley of Red Light District makes this a lot more interesting, especially when such a powerful individual is with you, but you'd never guess an eventual date with him could end in such a steamy [']private session[']. As distracted as you are, you barely notice Mogdraz removing his jockstrap completely, only realizing that when you feel his scorching hot crimson rod throbbing against you, the thing being so big you wonder how he carries it around with such ease! 'I suppose I'm a grower, and bigger than the others... But that won't be a problem, right?' He licks his lips while rubbing down your head with his meaty hand, and by then, you feel a soft push on the back of your neck suggesting you to get closer to his massive dick. The devil speaks again, with a warm tone, pausing his gesture... 'Would it be asking too much to get a blowjob from you?' His toothy grin and pulsing dong is all you need to know how badly he wants it.";
	WaitLineBreak;
	say "     Surrendered to his charm, you let yourself sink low enough to take a hold of his monstrous shaft, dribbling precum as soon as it feels your touch. Such wonderful piece of meat makes you rapidly take it to meet your lips, and soon you're gobbling up on the by now rock hard demonic cock, causing Mogdraz to smile and encourage you to continue. 'You're making me leak so much... Hope you don't get an overfill.' he comments, as there are copious amounts of pre coating your lips and mouth by now, forcing you to swallow some of the stuff before you get back to work around his glans and shaft. Your hands stroke what your mouth can't reach, sending the big devil a shiver of pleasure down his spine as he leans his head back and lets out a soft moan.";
	say "     'Fuck... That feels good...' he comes at a loss of words observing you worshipping his sizable dick, working around every bit and corner of the long and thick piece of crimson meat, and it just won't stop leaking... You get a hold of his massive pair of testes hanging just below his cock, and you can almost feel the cum sloshing inside them, as full as they seem. This gesture also causes him to leak even more, enough to look like an average load of a normal human. 'Damn, those are sensitive...! You'll make me cum really quick if you...' He lets out another moan instead of finishing his sentence feeling your hand groping on his balls as you work on his monstrous demon cock. Is it just you or his entire manhood seems to have grown a tad little more, too? You must have made him seriously horny...";
	WaitLineBreak;
	say "     As you feel the large demon jerking his hips just slightly, often trying to back down his urge to thrust, you take a guess that he must be really close... He doesn't say anything, his eyes are closed as he fully enjoys your treatment, but you know he won't endure it much longer. With about a few more minutes of stroking and sucking, you increase the pace, playing with his balls at the same time, which throws him into a lust frenzy. You hear - and feel him - punching the wall, grunting in aroused pain, gritting his teeth as his breathing gets deeper and more intense. 'That's gonna be a huge one, fuckin' Hell...!' As he seems to give in more and more to the idea of just letting go of his load, you don't dare to stop and give him blue balls as he rapidly approaches his climax.";
	say "     Then, just like that, he lets out one final grunt of pleasure, as an enormous spurt of cum hits you right on the face, and more follow to cover the rest of it, as well as your neck, shoulders and chest, running down your entire body, covering part of the wall around you, and he just keeps on shooting seemingly endlessly... You could nearly drown on the stuff if he didn't remember to push down his own dick and let himself finish off below your neck, his almost scorching hot load giving you a steamy bath of demonic cum. Must take him at least a minute to stop cumming! He pants, looking down on you, squeezing the last drops of jizz onto you, then throwing a chuckle at your drenched state. 'That must have been really messy if we did this back at my bedroom... Against this wall, we're merely doing the district a service.' he comments, helping you clean some of his ridiculous load off your face with his hand, although most of it just ends up spread through your skin.";
	WaitLineBreak;
	say "     'Yeah, uh... you might need to wait until that dries up or something... Can keep you company if you want.' he proposes, and you gladly accept his offer, not really having any other option. In the meantime, you get to enjoy the sweet smell it gives, and the somewhat... addictive taste. You try not to get too much of it in your mouth, demonic stuff can be rather clingy to deal with in the aftermath. While you wait, Mogdraz cuddles up with you in an affectionate moment... Who would say a demon could be this nice and gentle?";
	say "     'Twas a great time, I have to say... Anytime you wanna have another go, feel free to hit me up. Maybe we can try my suite at the club the next time we wanna get dirty with each other... Maybe we can use my personal jacuzzi to avoid this mess, though not going to lie... I like seeing my partners covered with my cum.' he adds, smirking, before you're ready to get up and walk back to the club. He gives you a pat on the butt with a naughty grin as he walks towards his usual corner, saying goodbye with a wink. He's such a tease...";
	NPCSexAftermath Player receives "OralCock" from Mogdraz;
	now libido of Mogdraz is 4;
	now lastfuck of Mogdraz is turns;

to say MogdrazSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a handjob";
	now sortorder entry is 1;
	now description entry is "Get your hands on his meaty prick";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer him a blowjob";
	now sortorder entry is 1;
	now description entry is "Wrap your lips around his huge cock";
	[]
	if player is male and player is not submissive:
		choose a blank row in table of fucking options;
		now title entry is "Propose the mutual use of one of his slaves";
		now sortorder entry is 1;
		now description entry is "Have him fetch a sex slave for your enjoyment together";
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
				if (nam is "Give him a handjob"):
					say "[MogdrazHandjob]";
				if (nam is "Offer him a blowjob"):
					say "[MogdrazBlowjob]";
				if (nam is "Propose the mutual use of one of his slaves"):
					say "[MogdrazSexSlaves]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself as Mogdraz gives you an understanding smile.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MogdrazHandjob:
	say "     It's slightly hard to speak when such a powerful and good looking man like Mogdraz is the one you want to bang, especially when he's looking at you, patiently awaiting your words. But you manage to tell him that you'd like to please him, in some way. Perhaps using your hands. 'Hands, you say? I do have something that could use some tugging...' he says, but before you have time to think that he's talking about his dick - which could be true, nonetheless - he pulls you gently and lets you sit by his right side on the velvet red sofa. Then, you feel his powerful arm embracing you as he reaches over for a kiss. Quite unexpectedly so, you barely have time to process that a big demon guy is making out with you right here, out in the open for everyone to see, the entire scene making your heart beat at an incredible rate.";
	say "     He pulls his lips from yours for a while, taking a moment to stroke your cheek, bringing his hand to your face from around your shoulder. His muscular leg is bumping against yours, and [if scalevalue of player < 4]as there is a considerable size difference between you and him, you feel completely overtaken by the large devil's heat against your skin[else]you feel his heat against your body[end if], a sign of desire and arousal pulsing through him as much as an obvious erection is forming underneath his dark jockstrap. Taking you for another kiss, your tongues mingle together for brief moments before he lets you take a breath, whispering in a deep and velvety tone 'You can touch me... Don't be shy.' With this said, he actually encourages you by bringing your hand over to his hairy pecs, adorned by a black leather harness, from where you can start moving your touch lower...";
	WaitLineBreak;
	say "     You catch Mogdraz breathing deeply as your fingers follow the trail from between his rippling abs to just above the jockstrap's band. 'Might as well take these off...' he says, sliding down the piece of underwear as his monstrous cock is slowly released from underneath its confinements. The fine piece of meat is still hardening before your eyes, getting bigger and thicker by the second. He looks down at you, caressing your ear affectionately, and asks you 'Get a good grip around it... And stroke it for me, will you?' You can't help but feel aroused at this point, looking at his member that is by now fully engorged and ready for action, with your fingers at just a mere few inches from touching. With his request given, you move your hand over his shaft, then wrap your fingers around it, ripping a soft moan out from the sexy devil's mouth. 'Mmh... Fuck... That feels really good...'";
	say "     He's one who likes to watch, shifting his gaze between your eyes and your hand, observing you working his proud manhood by jerking it up and down, slowly and almost teasingly, providing him with the occasional thumb running by his humid glans, a very sensitive spot that always manages to make him exhale with lust. 'You're a little tease, aren't you...? That's alright... I like it when you take your time...' While he continues to rub the back of his hand across your cheek and the same side of your head and neck, you're rubbing his cock instead, and figure it's probably for the best if you feel up his great sized balls, too. Sliding your index finger underneath his entire sack, you bring the rest of your palm to cup one of his gonads, which is already enough to fill a hand. They're so plump that you can imagine he's holding a massive load...";
	WaitLineBreak;
	say "     'I love having my balls played with... Glad you didn't forget them.' Surely playing with his is fun, as huge as they are, and squeezing them gently a little all over makes him want to close his eyes and focus on the sensation alone. His dick throbs really hard as you're doing this, unable to hide the great pleasure he is experiencing from your caressing. Though enough is enough, and soon your hand is back to his throbbing rod, stroking it with ample movements. With such a considerable length, you actually have to work with your arm much more than with an average dick if you want to fully please Mogdraz with a well-made handjob. Eventually, you want to be using both hands - as there is plenty of dick for that - so the big demon leans back and lets you work. Eyeing you with interest, he compliments your dedication. 'As devoted to the task as you are... Mmh... Might have to consider a full-time job... just so you can keep pleasing me like this...'";
	say "     His sweet words are tempting to drag into reality, but you don't let them bring your focus down. Instead, you're giving his entire manhood enough rubbing and friction to keep pulsing with desire, and precum lubricating the tip and leaking down to his shaft. The stuff ends up in your fingers, though all the better to help your hands slide up and down easier. He's breathing deeper and at a faster rate, patting your head in the meanwhile, making you think for a second that he's pushing it towards his dick, but he's respectful about it. He simply rubs the back of your head as a sign if affection, observing your movements and smiling at you, though not without biting his lower lip. Excited and as horny as you've got him, you stop your hands for a tad bit, only to see him jerking his hips to continue to feel that sweet pleasure. 'Damn... You're getting me...'";
	WaitLineBreak;
	say "     He really means that you're starting to make him, the big demon boss, want to beg for more. With this much teasing from your side, and his load building up at an alarming rate inside his balls - you even think they have grown a bit during this time - he has grown desperate for a release. Perhaps you should think about giving it to him, and there's not a better way than sliding one of your hands back to his balls as the other keeps stroking the enormous cock. 'Yess... Oh, that will make me cum, for sure... Fuck...' he moans, his breathing intensifying as you, too, pick up the pace and start stroking him faster. With the combined efforts of both your hands, Mogdraz is soon brought to the edge as he warns 'I'm close...!' You fully commit to your actions, making sure you never stop until he's shooting.";
	say "     With a couple more strokings, the red devil reaches his climax, and a thick, powerful stream of cum is basically launched from his cock to cover his chest and abs completely, each spurt thicker than the last until half of his orgasm, only beginning to subside after several moments. He's cumming for basically a full minute, coating his muscular body and your hands in his creamy hot seed. His balls surely are competent cum factories, to be able to put out so much each time he comes. 'Hell... this was phenomenal... You're good with your hands! Better than most... I wish I could keep you.' he says, stroking your chin and planting a kiss on your lips. 'Right, I've got to ask Tor'on to clean this up. I'm sure anyone eager enough would lick all this cum off, but he has a way with cleaning that just leaves things absolutely pristine. Great employee.' he tells you, laughing at the mess you made him do.";
	WaitLineBreak;
	say "     Now that you're both done with the fun, you say your goodbyes, having left Mogdraz satisfied and with a smile on his face.";
	now lastfuck of Mogdraz is turns;

to say MogdrazBlowjob:
	say "     It's slightly hard to speak when such a powerful and good looking man like Mogdraz is the one you want to bang, especially when he's looking at you, patiently awaiting your words. But you manage to tell him that you'd like to please him, in some way. Perhaps using your mouth. 'What was it? You liked its taste?' he asks, jesting, but he gestures at you to come closer, and on your knees. With his large hand, he caress your cheek and nearly takes you for an embrace with his powerful legs, letting you position yourself in front of his growing bulge, still covered by the dark jockstrap he's wearing. 'Feel free to unwrap it whenever you're ready. Or you can just admire the view for a while. I'll allow.' Mogdraz keeps teasing you, but his chuckling reveals no ill intention, and he's actually very gentle, giving you all the time you need.";
	say "     Now, you're on your knees in front of the boss, and everyone at the club can see you, which is an exhilarating feeling. Once you think you're ready, you bring your hands over that large bump between his legs, as he gazes at you with interest. His monstrous cock enlarges before your eyes and it's not even free yet, as you're still taking a grip of the underwear's elastic band and pulling it down. The big demon helps you, lifting himself just enough for it to slide down his ass and allowing you to finally pull his manhood out, only now able to grow to its hardest state. His musk is at its strongest here, too, hot and intoxicatingly arousing, a strong masculine scent like you very rarely feel. Noticing you involuntarily breathing it in deep, Mogdraz taps the back of your head gently, encouraging you to lean in. 'Come on... give it a kiss. I know you want to...' he says, with a smirk.";
	WaitLineBreak;
	say "     Following his invitation, you suppose it's time to bring your lips over his shaft. You don't want to give him everything at once, oh no. For a powerful demon boss such as Mogdraz, you have to show him proper respect, and put a much appreciated additional effort. You must love his cock, worship it, make him feel like he's having the damn best blowjob he ever had, fully devoting yourself to please him with the best of your abilities. This comes with taking your time to feel every inch of the huge beast of a cock that he has, and using your hands to provide him additional warmth and friction. Starting by rubbing along his shaft, your tongue follows the long way that goes from the base of his shaft to the tip, with a bit of teasing around the glans, which leaves the big devil biting his underlip.";
	say "     Cupping his balls with one hand, you continue the licking for some time, and since you're not quite done with teasing him, you also kiss his nutsack, trying to get one of those massive orbs inside your mouth, an extremely difficult task given their size. You can only maybe suck on them partially, though this is enough to make Mogdraz let out a moan. 'You really made me wait for it, huh... Fuck, that feels so good...' The red devil never dismisses the chance of getting his balls worked on, and as full as they are, you're predicting a very large load once you're done. But for now, you haven't even gotten started on sucking his dick for real. There's still a lot of manhood to enjoy, from his balls to the tip of his cock, before you wrap your lips around his shaft.";
	WaitLineBreak;
	say "     After spending a good time tugging on his cum factories, squeezing and feeling them up gently while pulling them softly with your lips, you're ready to lick your way up once more, and give him what he's waiting for. Spreading your lips around the by now glistening wet tip, you allow his crimson rod to enter your mouth. Though it's far from easy, you have to really open wide in order to have a remote chance at sucking him off. He enjoys seeing you struggle with his size, and you can definitely feel his dick throbbing in your grasp as he observes you. 'Reminds me of our first time. You could barely get the tip.' he mocks you, giving out a chuckle, but you don't let this discourage you, and he knows that you won't be. Leaking as he is, the marvelous taste of his precum is the most prominent feeling, one that simply keeps you hooked up.";
	say "     By rubbing the rest of his shaft, you provide a thorough sensation that doesn't disappoint, while you suck as deep as you're able. Mogdraz is often careful as to not push your limits too much, but you know he really wants to drill your mouth with that beast of a dick, if he could. He grabs your head and often pushes you, just a little more, truly enjoying the feeling of his meat going deeper, even if for just a tiny bit, with just the right amount of force. 'You do so much better than most sluts who... fuckin['] beg to suck my cock... Oh, if I could keep you...' he tells you, which you take as a compliment, and proceed to suck on his dick even more hungrily, a bit of sloppiness inevitable as you attempt to take more in you, all the while you're stroking his shaft for maximum stimulation.";
	WaitLineBreak;
	say "     While you're down there worshipping his cock, the demon boss holds your head gently as you work him towards the edge, encouraging your sucking. There's even a hint of movement on his hips as he's getting closer, and to reinforce that, you fondle his sizable gonads while his meat throbs in your mouth. Then, as you're taking a pause, you begin to lick an especially sensitive spot just around the glans of his penis while stroking the rest of his shaft with your free hand. 'Ohh, fuck... that's it... keep going, yess...!' he exclaims, and you just know you'll get an enormous faceful of cum if you have to keep doing this until he gets there, though you can't really help it. The way he's looking at you, so lustful, biting his underlip, eyes struggling to keep open, his powerful hand caressing the back of your head... it's impossible to resist.";
	say "     'I'm getting close... watch your eyes!' he warns you, and just a few more strokes and licks are enough to set off the beast, making him spew an enormous spurt of jizz on your mouth and face, and he keeps going for a good while. You actually have to hold your breath and close your eyes as your face, neck and chest get completely covered in the stuff, and Mogdraz only stops cumming after it has been like a minute or so, panting deep with his head leaned backwards in absolute bliss. Only then he takes a look at you, as his dick gives some final throbbings. 'I really, really should stop you from leaving. Looking as good as you do with so much of my cum on you... I feel like I can get hard again in just a few.' he says, directing some of his load into your mouth. It's actually one of the best things you've ever tasted...";
	WaitLineBreak;
	say "     'That's it, have some, but not too much, or you'll become a demon cum junkie. Not good, unless you want to make this your living.' With a chuckle, he pushes you away gently while he gestures at Tor'on, the bartender, to come over and help clean you up. 'Don't worry, he'll get you all pristine looking in a pinch.' says Mogdraz to you, as a comfort, though those odd tingling sensations around your body whenever he asks you to close your eyes and let him work leaves you somewhat disturbed. But he does his job quickly, and soon you're ready to go, all cleaned up.";
	NPCSexAftermath Player receives "OralCock" from Mogdraz;
	now lastfuck of Mogdraz is turns;
]

Mogdraz ends here.
