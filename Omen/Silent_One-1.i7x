Version 1 of Silent One by Omen begins here.
[Version 1 - file created by Omen]

[Adds the extradimensional horror Silent Ones to be roaming around the Ancient Archives for reasons unknown.]

Table of GameEventIDs (continued)
Object	Name
The Silent One	"The Silent One"

The Silent One is a situation.
ResolveFunction of The Silent One is "".
Sarea of The Silent One is "Nowhere".

when play begins:
	add The Silent One to badspots of OtherworldlyList;
	add The Silent One to badspots of NonconList;

to say The Silent One:
	say "     While walking around the archives, you are overcome with a feeling of dread. Something is behind you, watching your every move. Slowly you turn around to see a grey robed figure standing near 10 feet tall. The face is simply an empty black hood, the sleeves appear to be empty, and the bottom of the robes fold softly on the ground. It simply moves forward in a straight line, hovering over the ground. It pauses, turning to its left and examines the bookshelf. Without warning, two thick tentacles emerge from the sleeves and wrap themselves around a few books. It slowly starts placing the books back on the shelf, though in a different order from before. It dawns on you that this might be some kind of librarian. Do you ask it for guidance or just stay out of its way?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, maybe it can help you find something useful.";
	say "     ([link]N[as]n[end link]) - Your intuition tells you that all librarians like a quiet library, maybe you should just be as quiet as possible.";
	if player consents:
		say "     You approach the strang creature and begin to ask it a question, but no sooner does a word leave your mouth before it wraps tentacle around your neck. It doesn't even look away from what its doing as it lifts you off the ground. Squirming its its grasp, you try to free yourself but its far to strong for you. A long, thick, and bumpy tentacle starts working outs way out of the bottom of the robe. It slowly approaches your face, winding its way around your body as it climbs upwards. You continue to struggle and try to keep your mouth shut as the thick appendage rubs against your lips. The grip on your neck tightens, choking you until you let out a gasp for breath. It uses this opportunity to shove its thick undulating limb into your open mouth. Resigning yourself to being its play thing, you stop your struggling and allow it to violate your throat.";
		say "     Noticing your submission, the tentacle around your throat loosens a bit. Your almost thankful for this, but all it's really done is allow it to shove the tentacle in your mouth down your throat. Tears threaten to roll down your face as the thick appendage stretches your throat wider than you thought possible. Eventually, the tentacle reaches your stomach where it stops decending. It stays there unmoving, giving you a little bit of time to adjust to this ordeal. Without warning, it starts moving its tentacle back and forth rapidly. The knobs on its slimy limb abuse your throat like no cock ever could. You wonder what you did to deserve this, and it suddenly dawns on you. The creature demands silence in the Archives and since you spoke its punishing you. It seems intent on making it difficult to talk after the rough treatment. [if player is kinky]You can't help but feel aroused as this creature violates you and you fully submit to its actions. It seems to notice this and releases your neck, wrapping itself around your torso instead, holding you in a more comfortable way.[end if]";
		WaitLineBreak;
		say "     Minutes pass as it continues to violate your throat, which has long since gone partially numb. Thankfully it begins to slow down, you let out a relieved sigh as the punishment draws to a close. [if player is kinky]Suddenly your jaw is force open even wider than before as you feel something pass through the tentacle into your mouth. With wide eyes, you watch as the bump travels further and further into your mouth before it dissapears completely from your view. An electric shock travels down your spine as you feel the large object push its way down your throat and into your stomach. Once the object is deposited, the creature withdraws its tentacle and sets you down gently before carrying on to tend to the bookshelves. As you suspected, you throat is too raw to make noise for the next few hours. Though your surprised to find the pain has ceased, it seems the egg it placed in your stomach was to help your recovery.[else]The creature quickly withdraws its appendage and uncerimoniously drops you on the ground. It wastes no time as it travels away from you, leaving you to recover on your own. Your throat is so raw that you doubt you'll be able to say much for several hours.[end if] After a few minutes, you manage to pick yourself up.";
	else:
		let bonus be (( Dexterity of Player minus 10) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 15
			say "     The creature tends to the shelves without paying you any heed.";
		else:
			say "     Nervously, you attempt to back away slowly only to accidentally pull a book off the shelf. It lands on the ground loudly, drawing the attension of this creature towards you. You turn to make a run for it, but its faster than you, quickly wrapping a tentacle around your legs. With a firm yank, it lifts you off the ground and holds you in the air a few feet off the ground by your ankles. Naturally, you go to attempt to free yourself by prying the tentacles off your ankles. However, your hands are intercepted by two more tentacles rendering you fully immobilized. Suddenly, you feel a fifth tentacle [if player is not naked]burrowing under your clothing until its poking at your backdoor.[else]lightly caress the entrance to your backdoor.[end if] Blushing, you wait helplessly as the large knobby appendage forces its way into your asshole. You let out a sharp gasp at the size of the creature, not only is it stretching you wide but it is reaching depths inside you that have never been touched before. It's not giving you the gentle treatment either, roughly undulating its tentacle in and out of your vulnerable backdoor. Enduring through the pain, you stay as quiet as possible as to not further anger the creature.";
			say "     [if player is kinky]Being roughly used by the unearthly creature is starting to arouse you and you find your cock rapidly hardening. The creature notices your arousal, bring another smaller tentacle out to latch itself onto your cockhead. You moan as the tentacle on your cock applies a firm suction, ensuring that you won't be making a mess in the archives. Suddenly, you feel a large bulge against your asslips and a subsequent stretching of your sphincter. You look up at the tentacle that's been plunging in and out of your ass for the past few minutes, and see what you can only imagine to be an egg being forced inside you. With a forceful push, creature sends the egg traveling through your gut in a matter of seconds. You cum hard as the egg smashes into your prostate, shooting all of your seed directly into the creatures suckling appendage. Once you've calmed down, the creature lowers you to the ground with care. You find the soreness in your ass is almost nonexistant, it must be the egg releasing some kind of numbing agent.[else]The creature continues to brutalize your hole, intent on punishing your for being so clumsy. Once it feels you have had enough, it uncerimoniously draws its tentacle out of your ass and drops you to the ground.[end if] You wait on the ground for a few minutes, before trying to stand up on shakey legs. The creature did quite a number on you, ensuring you won't be making too much noise by stomping you feet around.";


Silent One ends here.
