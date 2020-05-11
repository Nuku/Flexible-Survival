The-Voice by Luneth begins here.

Book 1 - Character Information

Table of GameCharacterIDs (continued)
object	name
The-Voice	"The-Voice"

The-Voice is a man.
[physical details as of game start]
ScaleValue of The-Voice is 3. [human sized]
Cock Count of The-Voice is 0.
Cock Length of The-Voice is 0.
Ball Size of The-Voice is 0.
Ball Count of The-Voice is 0.
Cunt Count of The-Voice is 0.
Cunt Depth of The-Voice is 0.
Cunt Tightness of The-Voice is 0.
Nipple Count of The-Voice is 0.
Breast Size of The-Voice is 0.
[Basic Interaction states as of game start]
PlayerMet of The-Voice is false.
PlayerRomanced of The-Voice is false.
PlayerFriended of The-Voice is false.
PlayerControlled of The-Voice is false.
PlayerFucked of The-Voice is false.
OralVirgin of The-Voice is false.
Virgin of The-Voice is true.
AnalVirgin of The-Voice is true.
PenileVirgin of The-Voice is false.
SexuallyExperienced of The-Voice is true.

Book 2 - Variables

[base stats of any character]
[A person has a number called Energy.
A person has a number called MaxHP.
A person has a number called XP.
A person has a number called Strength.
A person has a number called Dexterity.
A person has a number called Stamina.
A person has a number called Charisma.
A person has a number called Intelligence.
A person has a number called Perception.
A person has a number called Hunger.
A person has a number called Thirst.
A person has a number called Lust.
A person has a number called Libido.
A person has a number called Loyalty.
A person has a number called Humanity.]

Section 1 - HP [Quest progression]

[ 0 - quest has not been started                                               ]
[ 1 - quest initiated                                                          ]
[ 99 - refused master of hell quest                                            ]

Section 3 - Morale [Master of Hell Typing]
[Strict choice on what type of Master of Hell you will become: Royal(Manipulator), Commander(Warrior), Tyrant(Destructor).]
[This will effect the overall appearance of the dark sanctum as well as creating new routes and exclusive content.]

[ 0 - No choice has been made                                                  ]
[ 1 - Royal route chosen                                                       ]
[ 2 - Commander route chosen                                                   ]
[ 3 - Tyrant route chosen                                                      ]

to DarkSanctum_Master_Choice:
	say "     [bold type]What type of master of hell do you wish to become?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Royal";
	say "     [link](2)[as]2[end link] - Commander";
	say "     [link](3)[as]3[end link] - Tyrant";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] Royal, [link]2[end link] Commander or [link]3[end link] Tyrant.";
	if calcnumber is 1:
		LineBreak;
		say "     'So you believe that through the use of your silver tongue that true power can be yours? Many masters of Hell in the past have shared this opinion. The real question is, do you truly understand what it takes to be a sovereign of manipulation and deceit? To walk this path is to view the world as filled with potential pawns, each one carefully chosen and placed on your board. Some will serve as champions to further your goals on the front line, others... well they are nothing more than necessary sacrifices. Are you prepared to become the ultimate puppet master, pulling the strings from the shadows?'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			now morale of The-Voice is 1;
			DarkSanctum_Master_Confirmed;
		else:
			DarkSanctum_Master_Choice;
	else if calcnumber is 2:
		LineBreak;
		say "     'So you believe that through the use of your skilled leadership that true power can be yours? Many masters of Hell in the past have shared this opinion. The real question is, do you truly understand what it takes to be a sovereign of tactics and obedience? To walk this path is to view the world as a warzone, a place to be dominated and shaped in your own image. Each battle will bring your ambitions closer to fruition. Each victory will be the flames that illuminate the path that leads to your complete triumph. Are you prepared to become the ultimate conqueror, allowing the swing of your blade to decide the fate of others?'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			now morale of The-Voice is 2;
			DarkSanctum_Master_Confirmed;
		else:
			DarkSanctum_Master_Choice;
	else if calcnumber is 3:
		LineBreak;
		say "     'So you believe that through the use of your primal force that true power can be yours? Many masters of Hell in the past have shared this opinion. The real question is, do you truly understand what it takes to be a sovereign of violence and subjugation? To walk this path is to view the world as a banquet, something to be owned and completely consumed by your own desires. Every voice that rises up against you is simply one more insect to crush within your iron grip. You would become a being of pure desire and destruction. Are you prepared to become the ultimate oppressor, forcing the world to bend its knee to your demands?'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			now morale of The-Voice is 3;
			DarkSanctum_Master_Confirmed;
		else:
			DarkSanctum_Master_Choice;

Section 5 - Level [Relationship With The-Voice]

[This will be based on whether or not you follow orders or rebel against fate]
[Will have slight variations to initial scenes, but will ultimately effect final boss strength]
[Choices will result in a + or - type of reaction]
[By the end of the quest it will not be possible to have a score of 0, the choices are put in a way that you will at least have a score of 1 or -1]

[ 0 - no relationship                                                          ]
[ 1 and up - follow orders(stronger boss)                                      ]
[ -1 and down - rebel(weaker boss)                                             ]

Book 3 - Choices and Effects

Section 1 - Dark Sanctum Gender Appearance

to say PlayerDarkSanctumSetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]What would a world of your choosing contain:[roman type][line break]";
		say "(1) [link]Males[as]1[end link]: ";
		if "DarkSanctum_MaleInterest" is listed in Traits of The-Voice:
			say "Yes[line break]";
		else:
			say "No[line break]";
		say "(2) [link]Females[as]2[end link]: ";
		if "DarkSanctum_FemaleInterest" is listed in Traits of The-Voice:
			say "Yes[line break]";
		else:
			say "No[line break]";
		say "(3) [link]Male-herms[as]3[end link]: ";
		if "DarkSanctum_Male-HermInterest" is listed in Traits of The-Voice:
			say "Yes[line break]";
		else:
			say "No[line break]";
		say "(4) [link]Futas[as]4[end link]: ";
		if "DarkSanctum_FutaInterest" is listed in Traits of The-Voice:
			say "Yes[line break]";
		else:
			say "No[line break]";
		say "(5) [link]Cuntboys[as]5[end link]: ";
		if "DarkSanctum_CuntboyInterest" is listed in Traits of The-Voice:
			say "Yes[line break]";
		else:
			say "No[line break]";
		say "(6) [link]Shemales[as]6[end link]: ";
		if "DarkSanctum_ShemaleInterest" is listed in Traits of The-Voice:
			say "Yes[line break]";
		else:
			say "No[line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			if "DarkSanctum_MaleInterest" is listed in Traits of The-Voice:
				remove "DarkSanctum_MaleInterest" from Traits of The-Voice;
			else:
				add "DarkSanctum_MaleInterest" to Traits of The-Voice;
		else if calcnumber is 2:
			if "DarkSanctum_FemaleInterest" is listed in Traits of The-Voice:
				remove "DarkSanctum_FemaleInterest" from Traits of The-Voice;
			else:
				add "DarkSanctum_FemaleInterest" to Traits of The-Voice;
		else if calcnumber is 3:
			if "DarkSanctum_Male-HermInterest" is listed in Traits of The-Voice:
				remove "DarkSanctum_Male-HermInterest" from Traits of The-Voice;
			else:
				add "DarkSanctum_Male-HermInterest" to Traits of The-Voice;
		else if calcnumber is 4:
			if "DarkSanctum_FutaInterest" is listed in Traits of The-Voice:
				remove "DarkSanctum_FutaInterest" from Traits of The-Voice;
			else:
				add "DarkSanctum_FutaInterest" to Traits of The-Voice;
		else if calcnumber is 5:
			if "DarkSanctum_CuntboyInterest" is listed in Traits of The-Voice:
				remove "DarkSanctum_CuntboyInterest" from Traits of The-Voice;
			else:
				add "DarkSanctum_CuntboyInterest" to Traits of The-Voice;
		else if calcnumber is 6:
			if "DarkSanctum_ShemaleInterest" is listed in Traits of The-Voice:
				remove "DarkSanctum_ShemaleInterest" from Traits of The-Voice;
			else:
				add "DarkSanctum_ShemaleInterest" to Traits of The-Voice;
		else:
			now menuexit is 1;
		now calcnumber is -1;

Section 2 - Dark Sanctum First Fetish
[This will serve as the original choice point, the second will be offered once the player has collected the 5 lords of hell, the third will be offered after choosing their 7 seeds of corruption, the final one will be offered after the completion of the entire quest.]
[After the original choice, a new option will added that will allow players to skip choosing an additional theme if they are happy with the ones they have and don't want anymore.]

to First_DarkSanctum_Theme_Choice:
	say "     [bold type]What type of theme should your Dark Sanctum have?[roman type][line break]";
	say "     [link](1)[as]1[end link] - BDSM!";
	say "     [link](2)[as]2[end link] - Mind-break!";
	say "     [link](3)[as]3[end link] - Pregnancy!";
	say "     [link](4)[as]4[end link] - Brutality!";
	say "     [link](5)[as]5[end link] - Incest!";
	say "     [link](6)[as]6[end link] - Feral!";
	say "     [link](7)[as]7[end link] - Size-difference!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 7:
		say "Choice? (1-7)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5 or calcnumber is 6 or calcnumber is 7:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] BDSM, [link]2[end link] Mind-break or [link]3[end link] Pregnancy or [link]4[end link] Brutality or [link]5[end link] Incest or [link]6[end link] Feral or [link]7[end link] Size-difference.";
	if calcnumber is 1:
		LineBreak;
		say "     'So you enjoy seeing others trapped in bondage? That eternal struggle for freedom, but the desire to be broken and claimed residing within. Truth be told, that is a very common thing for mortals to be plagued by. The return to simpler times, back when they only had to follow orders and be rewarded for their obedience. But perhaps obedience isn't your end goal. Maybe it's the punishment that truly quenches your thirst for power, the sight of unblemished flesh before you, and the anticipation of branding it as your own. I suppose only time will tell where your passion for darkness will lead.'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			add "DarkSanctum_BDSMInterest" to Traits of The-Voice;
			First_DarkSanctum_Theme_Confirmed;
		else:
			First_DarkSanctum_Theme_Choice;
	else if calcnumber is 2:
		LineBreak;
		say "     'Ah yes, the classic sport of shattering a being's mind. Everyone has their own tricks of the trade, mind you. I suppose that's true with any form of art though. Some simply desire to rewrite an individual's personality, turning them into a living and breathing doll. Others however, seek a more... refined form of creation within the mind. Imagine an artist at their canvas. They of course can fling random splashes of colors, but some pay attention to the small details and desire to create a true masterpiece. Mind-shattered slaves, broken dolls, or even possibly... oh what was that term that you mortals seem to enjoy so much... Ah yes, those bimbos, himbos, and hypno-sluts... Hmmhmmhmm, actually that is quite catchy. I think that I may just turn that into a song, haha.'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			add "DarkSanctum_Mind-breakInterest" to Traits of The-Voice;
			First_DarkSanctum_Theme_Confirmed;
		else:
			First_DarkSanctum_Theme_Choice;
	else if calcnumber is 3:
		LineBreak;
		say "     'A bit more on the basic side, but since the beginning of time, it has always been a favorite. So many questions that require answers, I believe that to be why it has remained so popular. Do you wish to become a seeder or a breeder? Do you just enjoy that large belly, or is the focus on the new life within? Ah, or perhaps you simply want an army of your own offspring, sired from coupling with others, each gaining a unique strength from the inherited combination. With mortals, this usually is a more... limited option, seeing as certain parts are needed, however on this plane, [']anything['] goes. There is power in the creation of progeny, but there is also enjoyment in the knowledge that you have captured and conquered this single aspect of another's freedom, haha.'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			add "DarkSanctum_PregnancyInterest" to Traits of The-Voice;
			First_DarkSanctum_Theme_Confirmed;
		else:
			First_DarkSanctum_Theme_Choice;
	else if calcnumber is 4:
		LineBreak;
		say "     'Oh well aren't you the edgy one... I will have you know that demons invented [']true['] brutality! Then we shared it with your primitive ancestors, well maybe shared isn't the proper term, but no matter, we introduced them to it, simple as that. Brutality is probably viewed as the most vile of the gifts I offer, the ability to take what you want, when you want. The classic [']might makes right['] outlook. This is a favorite for anyone that refuses to be told no, or perhaps they like being told no and honestly just enjoy taking what they want anyway. While this gift is a bit brutish by my personal standards, there is a certain beauty in the complete and utter corruption of another being through pure force.'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			add "DarkSanctum_BrutalityInterest" to Traits of The-Voice;
			First_DarkSanctum_Theme_Confirmed;
		else:
			First_DarkSanctum_Theme_Choice;
	else if calcnumber is 5:
		LineBreak;
		say "     'Ah, a common desire of humanity. I never quite understood it myself. After all, why would anyone want to claim that which is already their property? Hmm, but perhaps that is the entire point, the need for complete control in all aspects of their lives. From what I know of families, they are supposedly built on loyalty and kinship. Maybe that is the reason that so many desire them to warm their bed, that need for complete trust. It does bring up further questions though, who have you desired, but couldn't have before? A parent? Offspring? Maybe a sibling that pushed you to your limit and left you wanting nothing more than to claim your own piece of flesh? In all honesty, it matters very little. If they didn't take care of your needs, then they were in the wrong. A firm understanding needs to be put in place. They must learn that if you want them, it is their duty to serve you in any way possible.'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			add "DarkSanctum_IncestInterest" to Traits of The-Voice;
			First_DarkSanctum_Theme_Confirmed;
		else:
			First_DarkSanctum_Theme_Choice;
	else if calcnumber is 6:
		LineBreak;
		say "     'Haha, the dirty secret of the aristocracy! You may not realize this, but in the past, this was far more common than you may think. Throughout history, men and women have laid with beasts. Some believed it would give them the power of the animal, while others simply enjoyed the deviance of the act itself. You yourself have more of an insight into this situation than many others did in the past, what with the chimeras you have met in this city. I personally find it all rather fascinating, the lustful need for something completely different and inhuman. I wonder though, could this craving be more about bedding an animal? Or could it have more to do with you releasing the beast within? The truth is that it matters very little in the grander scope of things, but I do hope that if you decide to release your inner bestial essence, that you will warn me... I would love to watch the carnage, haha!'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			add "DarkSanctum_FeralInterest" to Traits of The-Voice;
			First_DarkSanctum_Theme_Confirmed;
		else:
			First_DarkSanctum_Theme_Choice;
	else if calcnumber is 7:
		LineBreak;
		say "     'Hmm, a rather unique choice to be sure, but hardly anything all that surprising. Mortals have always desired the tightest sleeve that they can find, or the largest inserter possible. The question is, what do you truly want? Do you want to be the massive serpent that claims a tiny mortal as your toy, or the knight that bests the beast, only to turn around and claim them as spoils of your own? Remember, on this plane, anything is possible. Bodies can stretch beyond normal constraints and likewise, can revert back in an instant. So what path did you have in mind? An army of small squealing toys? Or perhaps a line-up of colossal giants, completely shocked by the fact that they are being claimed by someone much smaller than themselves and used accordingly?'";
		say "     [bold type]Is this really what you want?[roman type][line break]";
		if player consents:
			add "DarkSanctum_Size-differenceInterest" to Traits of The-Voice;
			First_DarkSanctum_Theme_Confirmed;
		else:
			First_DarkSanctum_Theme_Choice;

The-Voice ends here.
