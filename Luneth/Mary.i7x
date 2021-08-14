Version 1 of Mary by Luneth begins here.
[ Original content by Sarokcat ]


[ Libido of Mary                                                               ]
[ 0 = Mary not chosen as main interest                                         ]
[ 1 = Mary chosen as main interest                                             ]

Table of GameCharacterIDs (continued)
object	name
Mary	"Mary"

Mary is a woman.
[Physical details as of game start]
ScaleValue of Mary is 3. [human sized]
SleepRhythm of Mary is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Mary is 0. [X cock]
Cock Length of Mary is 0. [X Inches]
Ball Size of Mary is 0.
Ball Count of Mary is 0. [X balls]
Cunt Count of Mary is 1. [X pussy]
Cunt Depth of Mary is 12. [X Cunt]
Cunt Tightness of Mary is 8. [X Cunt]
Nipple Count of Mary is 2. [X nipples]
Breast Size of Mary is 4. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Mary is false. [can not take oversized members without pain]
Sterile of Mary is false.
PlayerMet of Mary is false.
PlayerRomanced of Mary is false.
PlayerFriended of Mary is false.
PlayerControlled of Mary is false.
PlayerFucked of Mary is false.
OralVirgin of Mary is false.
Virgin of Mary is false.
AnalVirgin of Mary is true.
PenileVirgin of Mary is false.
SexuallyExperienced of Mary is true.
MainInfection of Mary is "Ewe".
Description of Mary is "A somewhat shy looking ewe woman is watching you carefully as you move around. You remember her introducing herself as Mary.".
Conversation of Mary is { "Baa, honey!" }.
the fuckscene of Mary is "[sexwithmary]".
Mary is in New Ewe Storeroom.

instead of sniffing Mary:
	say "Mary smells like a female sheep and has traces of the city's scents in her wool.";

instead of conversing the Mary:
	if HyenaTrailing is 3:
		say "     'You want to know about hyenas in the subways?' the young ewe asks you as she blinks in surprise, 'Actually come to think of it I do think I heard some of them while I was down there. The way they were talking I was kind of scared to say anything, but I am pretty sure there were several small groups that were moving around down there. I think they actually all belonged to some kind of gang though, or at least they kept talking about one.' Mary explains to you as she eyes you hopefully, resting her hoof-like hand on your soft black furred side as she looks up at you. 'I do hope that helps you somehow, I'm always happy to help you out after all you've done for me,' she adds a moment later, and you assure her that her words were a big help.";
		say "     She seems happy with that as she goes back to working on cleaning up the store, and you sigh as you realize that the thing you were afraid of is now the most likely possibility, somehow the items you are looking for have probably ended up in the hands of the hyena gang that is taking over much of the territory of the city... if you want to find the items, you will probably need to investigate them next. It will be quite a task to [bold type]challenge[roman type] the [bold type]hyenas[roman type] in their territory...";
		now HyenaTrailing is 4;
	else if NESProgress is 4:
		say "     'Hi there again! I want to thank you again for all your help. I can't really do much to repay you except by giving you some tips for finding stuff out in the city.' The little ewe speaks softly, nervous next to her hero. 'It's mostly a matter of keeping your eyes open and knowing where to look,' she says, continuing on to give you some anecdotes from her searching, though you do pick up a few ideas which may be helpful. As she starts to go on about nimbly climbing some rubble, stops herself. 'I'm sorry. I was rambling a little.'";
		FeatGain "Three Bags Full";
		say "     [bold type]From now on, you'll have +1 to all scavenging rolls and checks.[roman type][line break]";
		now NESProgress is 5;
	else if Libido of Leon > 0:
		say "     Mary smiles at you happily as you greet her. 'It's always good to see you here, but I think the flock leader will be even happier to see you, if you know what I mean,' she says as she gives you a nudge in Leon's direction.";
	else:
		if Libido of Mary > 0:
			say "     [one of]Your little ewe only responds by throwing her arms around you in a big woolen hug.[or]'Be careful near the capitol building. I think something is going on over there.'[or]'Have you seen any wolves out there?'[or]'Be careful if you go back down into the sewers, I heard a lot of strange things moving around down there.'[or]'I mostly stay in the downtown area when I go scavenging, maybe I'll see you there sometime.'[or]'I heard some strange howling and baying noises near the beach at night the other day, if the church is still there someone might have posted a warning.'[or]'Being a sheep isn't bad, especially if I get to be your sheep.'[or]'Don't tell the others, but sometimes I trade some of my food or water at the mall, the rats there are great scavengers.'[or]'I can't wait for you to rub your [Skin of Player] body over my fleece again.'[at random]";
		else:
			say "     'But I'm glad you came over to talk to me. I was kind of hoping I would get a chance to thank you properly,' she says while blushing. 'I really thought we worked well together out there, and you were so brave and strong keeping me safe. I've been thinking, and I'd really like it if we could be part of the same flock, then we could be together all the time. What do you say?'";
			if Player consents:
				say "     'Really? You mean it? That's wonderful!' she says with a smile, before grabbing the sides of your face and giving you another big kiss. As she breaks the kiss you stare at her slightly bemused as she blushes, realizing every eye in the store is on the two of you. Glancing around at all the staring eyes she quickly grabs your arm and nearly drags your unprotesting body outside, slamming the door behind you. Pausing for a moment in the street, she quickly makes her way to one of the abandoned buildings next to the store, motioning you to follow as she quickly unlocks the door and slips inside.";
				WaitLineBreak;
				say "     Following Mary into the dimly lit building, you realize someone has gone to some effort to keep it looking abandoned, but out of sight of the front windows it has actually been furnished as a nice little hideaway. Mary is standing there blushing again as she admits 'I found this place a while back, and I cleaned it up for when I needed to get away from the rest of the flock. You're the only other person who knows about it now.' Before you can respond to her surprising statement, she reaches up and kisses you again, taking her time to rub her sheep-like muzzle along your [FaceSpeciesName of Player in lower case] face, and exploring your mouth with her tongue.";
				say "     Breaking the kiss, her face flushed in embarrassment and a bit of desire she moves over to the makeshift couch and gestures for you to come sit next to her. Smiling as you do so, she cuddles up next to you and rests her head on your shoulder. Seeming somewhat embarrassed she begins telling you about her life from before, as a teenager working her way through college at her parents store, and asking questions about your life and what it was like.";
				WaitLineBreak;
				say "     She eventually talks about the infection sweeping the city, and how everyone at the store both employees and customers alike began to change, and all the males fought until Leon was the only male left, and the rest had become ewes like everyone else. Not really wanting to end up like some of the rest of the flock who seemed to lose most of their intelligence the more they stayed there, she volunteered to do much of the scouting and scavenging for the rest. She was able to put Leon off of claiming her personally so far, but she figured it was only a matter of time before he got to her, until she met you. She says with a yawn, staring up at you adoringly, she thinks she could really like being part of your flock instead.";
				say "     You continue to talk about a number of subjects as you both relax, eventually Mary falling asleep in your lap. Softly moving her into a more comfortable position, you realize how much your comfortable time with your new flock member seems to have changed you, even making you smell a bit like her.";
				increase Libido of Player by 10;
				increase Libido of Mary by 1;
				if MaleList is not banned and "Female Preferred" is not listed in feats of Player:
					infect "Ram";
					infect "Ram";
				else:
					infect "Ewe";
					infect "Ewe";
			else:
				say "     'Oh, that's OK then, I understand if you have other things you'd rather do, but I'd really like it if you thought about it some more.'";

to say sexwithmary:
	if Player is neuter:
		say "You're ill-equipped to play with her right now.";
	else if Libido of Mary is 0 and Libido of Leon is 0:
		say "     You should [bold type]talk[roman type] to her a bit first.";
	else if Libido of Leon > 0:
		say "     Mary smiles at you happily as you greet her. 'It's always good to see you here, but I think the Flock leader will be even happier to see you, if you know what I mean,' the blushing ewe says as she gives you a nudge in Leon's direction.";
	else if lastfuck of Mary - turns < 6:
		say "     Mary blushes happily as she looks around, before sighing sadly at the amused glances the other flock members send her way, 'Sorry, I just can't duck out again from my duties here again so soon. Maybe you could come back a little later?' your cute little ewe says hopefully.";
	else:
		now lastfuck of Mary is turns;
		say "     'Mary blushes eagerly at your advances, nodding shyly she quickly looks around the store before ducking outside with you. Quickly heading over to her nearby hideout she kisses you as soon as the two of you are safe and alone. Breaking off the kiss Mary says, 'I'm so glad to see you again,' she pants eagerly, 'I haven't been able to stop thinking about you since last time.' Before you know it she has quickly stripped you naked and is pushing you down onto the couch.";
		WaitLineBreak;
		if Player is male:
			say "     Her eyes slowly drift down your body only to stop at your erect [Cock of Player] cock, staring in licking her lips in anticipation she lowers her head to it and runs her long tongue along the base of it, her eyes crossing as she savors the taste. Unable to wait any longer, she quickly moves herself over you, straddling you as she positions herself over your erect maleness. Before you can say anything she lowers herself onto you in one swift movement, moaning in ecstasy as her soft cavern wraps around your cock.";
			WaitLineBreak;
			say "     Unable to resist the soft feel of her wet folds enveloping you, you bury your hands in the soft wool of her hips, gripping tightly as you thrust upwards. Mary moans in pleasure as you take charge, her inner muscles tightening around you deliciously with your every movement. Soon you settle into a rhythm of short quick thrusts into your willing ewe, her soft body rubbing up against your [Skin of Player] with every thrust, her face full of animalistic pleasure as she makes soft bleating and moaning noises in time with your thrusting. Before you know it you feel your muscles tense in orgasm, as your cock empties its load into her fertile belly, causing her to shudder in orgasm as well as your seed fills her belly. Panting, she collapses on top of you, your cock still twitching in her, as you both lie there exhausted.";
			WaitLineBreak;
			say "     Waking up after a couple hours, you find yourself alone on the couch, quickly gathering up your belongings you find a short note left behind from Mary. 'I had to return to the store to take care of a few things, though I am definitely looking forward to spending more time with you as soon as we can. Signed, your loyal ewe.' Smiling as you read the note, you feel a surge of satisfaction at having taken care of your ewe properly, and tuck the note into your backpack before heading back over to the store yourself.";
		else:
			say "     Mary's sheep-like face pouts slightly as she takes in your female form. 'It looks like you aren't quite ready to be the ram of the flock yet,' she says as she runs her hands over your body, 'but that doesn't mean we can't have a little bonding time in the flock anyways.' She leans over you to lick the side of your face erotically. Wasting no time she begins running her hands up and down your body, teasing and exciting you as she begins to lick and kiss her way down your body. She pays special attention to your nipples and stomach, before finally lowering her head to your wet pussy, which she begins to nibble and tease with her soft lips and flexible tongue. Unable to help yourself you bury your hands in the soft fleece around her head as you moan and writhe underneath her, her marvelously skilled tongue quickly bringing you to the edge of orgasm, before finally making you cry out as you cum, your juices eagerly licked up by her wonderful tongue.";
			WaitLineBreak;
			say "     As you collapse back onto the couch from your amazing orgasm, Mary slowly moves back up your body in order to kiss you again, the taste of your own sexual fluids exploding into your mouth from the deep kiss. Eventually breaking the kiss off, she lies next to you as you drift off into an exhausted sleep. You can vaguely here her comment as you drift off, something about not being able to wait for next time...";
		if MaleList is not banned and "Female Preferred" is not listed in feats of Player:
			infect "Ram";
		else:
			infect "Ewe";

Mary ends here.
