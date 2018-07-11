Rubber Sneakers by Kernog begins here.

"Adds a rubber sneakers item for Flexible survival. The shoes are a trapped item, offering 100% escape chance against a progressive transformation, then raise of libido, then drop of humanity"

Section 1 - Object Declaration

Table of Game Objects (continued)
name	desc	weight	object
"rubber sneakers"	"Dark blue sport shoes made of a shiny rubbery material. A stylized feline figure is painted on the side."	2	rubber sneakers

When play begins:
	add "Rubber Puma" to infections of furry;
	add "rubber sneakers" to invent of Astroslide Field Locker-room;

rubber sneakers is a grab object.
rubber sneakers is equipment.
rubber sneakers is not temporary.
The plural of rubber sneakers is true.
The taur-compatible of rubber sneakers is false.
The size of rubber sneakers is 0.
The AC of rubber sneakers is 0.
The effectiveness of rubber sneakers is 0.
The placement of rubber sneakers is "feet".
The descmod of rubber sneakers is "You wear rubbery, dark blue sport shoes. Each step you take sends a small tingle throughout your body.".
The slot of rubber sneakers is "feet".

the scent of rubber sneakers is "The rubber sneakers smell mostly of rubber, with a faint hint of sweat.".

rubber sneakers is in Astroslide Field Locker-room.

Section 2 - Usage specifics

Instead of taking rubber sneakers:
	if Furry is banned or Furry is warded:
		say "     As you are about to pick the shoes, you notice the puma motif on the sides. The sight makes you have second thoughts, and you step away from the footwear.";
	else:
		say "     As you bend to pick up the pair of sport shoes, you notice that they are made of rubber. You have never seen footwear such as this. You pick them up and turn around, in order to ask whose shoes it is. The locker-room being in its usual state of chaotic orgy and football chatter, you abandon the idea and stash the shoes in your bag.";
		increase carried of rubber sneakers by 1;

Instead of using the rubber sneakers:
	if the rubber sneakers are equipped:
		if Doctor Matt is visible:
			say "     Doctor Matt stares at your shoes. 'This is a rather uncommon infection', he finally says, after studying your body extensively. 'It seems that the nanites infecting these shoes have integrated a defense mechanism, which explains why removing them is so difficult. Talking to me about it was a good call. Matt fetches a small pot filled with a yellow-green powder. 'You will make geiger counters scream for a few days, but your nanites will protect you from any lasting effect. I think. Anyway, try removing your shoes, now.'";
			say "     You do as asked, and grit your teeth, expecting another painful backlash. However, this time, the sneakers remove themselves, like an ordinary pair of shoes. 'Your current infection marks remain, but with their source gone, they will behave like any other strain and disappear when the next strain takes over,' the scientist explains. 'Just don't try and put on these shoes again.'";
			now the rubber sneakers are not equipped;
		else if Doctor Mouse is visible:
			say "     'Where did you find that?' Mouse asks excitedly, as soon as you bring the issue. 'This is quite mysterious. And exciting. Is a nanite colony living [italic type]in[roman type] the shoes? Is it a living species so infected it has transformed into shoes? A new parasitic species brought from the spread of the nanites. Oh, dear, so many things to...' The deadpan look you give the doctor makes him stop his monologue. 'I think I know what they need. Bear with me a moment.' Doctor Mouse prepares a syringe, and plants it into each of your feet. You wince as you feel the syringe prick you, despite the shoe. 'And done. Wait for a couple minutes, then try to remove them again.'";
			say "     You do as asked, and grit your teeth, expecting another painful backlash. However, this time, the sneakers remove themselves, like an ordinary pair of shoes. 'The rest of the infection will be overtaken by the other strains, in the usual ways. I can ask some of my nurses to help if you want,' the scientist says with a green. 'If you notice extra limbs sprouting from unusual places on your body, just come to see me again. I need the extra data on this experimental retro-nanite treatment.'";
			now the rubber sneakers are not equipped;
		else if Doctor Moffatt is visible:
			say "     'As much as I would like to help you remove these disgracious things from your feet, I am a [italic type]psychologist[roman type], not a physician,' Moffatt replies. 'Sorry.'";
		else if Doctor Utah is visible:
			say "     'What do you think I am? A shoemaker?' Doctor Utah hisses when you ask him for help. 'You should go find a medical doctor. If there's still one in this city, that is.'";
		else if Nermine is visible:
			say "     'Oh my, you brought me quite the item,' Nermine says, when you show her your rubber sneakers. 'I could remove them, yes. Yes... Just go sit on that chair and stay still. Good. Now, stretch your legs in front of you. Like that. Yes.' Nermine kneels in front of you, giving you a straight view into her cleavage. The jackal begins to rub your legs. She starts at your knees, then slowly goes down towards your feet. Several times, you cannot help but let a moan escape from your lips, as the massage is more than pleasurable in your state.";
			say "     Nermine's hands reach your feet. She massages your feet through the rubber, tracing forms between your toes and on your soles. You close your mind in content, when... 'Done.' You open your eyes in surprise. Nermine was indeed done, holding your sneakers in her hands with a soft smile. Your eyes go from the shoes to your now naked feet, in amazement. 'They simply needed some encouragement,' was her only answer, as she gives you back the shoes.";
			now the rubber sneakers are not equipped;
		else:
			say "     You reach down to your shoes and attempt to remove them. An intense burning sensation makes you stop right away, and it repeats with every new attempt. You realize that you are in trouble and will need help in order to remove these shoes. [bold type]You need to go to a medical doctor, or a person knowledgeable in these kinds of items, and try to remove these rubber sneakers with them around[roman type].";
	else:
		repeat with z running through equipped equipment:
			if slot of z is "feet":
				say "     [bold type]Your [z] is in the way![roman type][line break]";
				continue the action;
		if (bodyname of player is listed in infections of TaurList or bodyname of player is listed in infections of NoLegList):
			say "     [bold type]Sadly, the rubber sneakers are incompatible with your body type![roman type][line break]";
			continue the action;
		else:
			say "     [one of]As you ponder putting the shoes on, you have a bad feeling about this[or]You remember how useful, yet dangerous these shoes can be[stopping]. [bold type]Should you really put them on?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - What's the worst that could happen?";
			say "     ([link]N[as]n[end link]) - Better listen to your instinct.";
			if player consents:
				say "     You put the rubber sneakers on. [one of]The shoes are surprisingly comfortable. Your feet feel warm, comfortable and, most of all, so light. Your mind fill with confidence. As you take a few steps, you feel small tingles going up your legs. Is it because you need to get used to them? At least it does not feel uncomfortable or painful. Actually, it feels quite pleasurable.[or]The pleasurable tingles come back as soon as you take a few steps in your rubbery footwear.[stopping]";
				say "     [bold type]With these rubber sneakers on, you feel like you can outrun anything.[roman type]";
				now the rubber sneakers are equipped;

Section 3 - Everyturn rule

an everyturn rule:
	if the rubber sneakers are equipped:
		if skinname of player is not "Rubber Puma":
			say "     The tingles coming from your rubber shoes, which you got used to until now, suddenly peak. You get goosebumps, while the rubber quickly spreads over your entire body, save your face. The goosebumps are then replaced by the comfortable warmth of dark blue rubber clinging to your body, and having you lose your [skinname of player] skin.";
			now skinname of player is "Rubber Puma";
		else if cockname of player is not "Rubber Puma":
			say "     A sudden pang of pain in your genital area makes you double over. The pain recedes as fast as it came and, when you remove your hands from your crotch, you feel changed[if player is male]. Your [cockname of player] cock[smn] changed into a single human-sized, feline-shape rubber penis, which quickly retracts, barbs and all, into a smooth and shiny latex sheath[end if][if player is female]. A quick prodding of your cunt[sfn] indicates you that the rubber slipped inside, covering your entire vagina with very sensitive latex[end if].";
			now cockname of player is "Rubber Puma";
			if cocks of player > 1:
				now cocks of player is 1;
			if cocks of player is 1:
				now cock length of player is 7;
				now cock width of player is 5;
		else if tailname of player is not "Rubber Puma":
			say "     This time, the tingles focus on the small of your back, then your coccyx. A long blue tail sprouts out. A flexible rubbery tube, which feels like a natural part of your body, as the electric tingles running back to your brain tell you as soon as you grab it.";
			now tailname of player is "Rubber Puma";
		else if bodyname of player is not "Rubber Puma":
			say "     Your body shifts and changes. You feel your body become a little smaller and more flexible. Muscles grow all over the place, especially on your thighs, giving you legs made for running. Overall, you take a more feline stance.";
			now bodyname of player is "Rubber Puma";
		else if facename of player is not "Rubber Puma":
			say "     The rubber suddenly creeps up to your head and closes around it. The substance melds with your skin, then your skull, which shapes into a puma head. You palp it, and realize that it is entirely made of rubber, even your teeth. The need for running begins to addle your mind.";
			now facename of player is "Rubber Puma";
		say "     The rubber puma infection, having spread to your entire body, now starts to affect your mind and sexually stimulates you. [bold type]Your libido increases.[roman type]";
		if player is pure:
			increase libido of player by 20;
		else:
			increase libido of player by 10;
		if libido of player > 100:
			say "     The arousal becomes too strong for you to resist. Abiding to the stimulation of the sneakers, you keep walking, hoping to orgasm quickly. But this is not enough stimulation for the shoes, which keep you tantalizingly in the edge. Groaning, you cede and begin to jog at a brisk pace. The tingles raise in intensity, until it feels like your [if player is male]cock[smn] [ismv][else]cunt[sfn] [isfv][end if] covered with electrodes, shocking you each time one of your feet hits the ground. You unconsciously run faster and faster, until a final stride manages to make you go. You arch your back and roar in orgasmic joy as you cum hard, splashing the floor under and in front of you with your sexual fluids. You eventually stop to feel the need to run, and stop your jogging. While you get your breath back, you look back, and can only admire the long trail you made during your climax.";
			decrease humanity of player by 15;
			now libido of player is 20;

Section 4 - Endings

when play ends:
	if bodyname of player is "Rubber Puma":
		if humanity of player < 10:
			say "     Having never found a way to remove the infected sneakers (or tried to), you succumb, body and mind, to the Rubber Puma infection. You elude the military countless times, thanks to your extraordinary athletic abilities, until your very existence becomes an urban legend. Soon, every jogger and sportsman of the area know of the Rubber Puma. They say that, if you run or exercise alone, during the night, the Puma chases you. [subjpro_cap of player] outruns you; [subjpro of player] always do. Then, [subjpro of player] molests you all night, before leaving by your body a pair of rubber sport shoes. They say that those who choose to wear these shoes never come back.";
		else:
			say "     The infected rubber sneakers forced you to remain trapped in the form of a Rubber Puma. Fortunately, you managed to remain in control of your sanity, thanks to a careful planning of your physical efforts, convincing the military to let you go, under surveillance. During a particularly intense session on your treadmill, you discover that your rubber body begins to exude pools of latex which quickly reforms as new pairs of sport shoes. This gives you a great idea, and you rush to your phone, to make some calls to your bank. Several months later, 'Rubber Pumas' become the new fashion among youngsters and sportsmen alike. Most of your sells comes from your microwaved line, which presents no risk of infection, but you let slip, from time to time, 'original' versions, which sell for gold on the black market, ensuring that your company a steady flow of money from 'thankful' investors.";


Rubber Sneakers ends here.
