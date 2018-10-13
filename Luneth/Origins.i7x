Version 1 of Origins by Luneth begins here.



Section 1 - Video Camera

Table of Game Objects (continued)
name	desc	weight	object
"video camera"	"The video camera you found while out exploring the city. While taking a closer look at it, you can read on the side that it's a Lunon XITOH HV30 MiniDV High Definition Camcorder. This should be able to play pretty much anything you can find in your travels."	1	video camera

video camera is a grab object.
the usedesc of video camera is "[VideoCameraUse]".
It is part of the player.
It is not temporary.

instead of sniffing video camera:
	say "     The video camera doesn't really have any type of smell, other than the residual aroma of heat pheromones.";

to say VideoCameraUse:
	say "     Experimentally pushing the record button, you feel that it depresses uncharacteristically easily and does not have any pushback at all. Seems like the camera was damaged after all when it was dropped. You won't be recording anything with this without repairs, though the device should still be useful to play whatever video tapes you might find.";

Section 2 - Events

Table of GameEventIDs (continued)
Object	Name
Lost Camera	"Lost Camera"

Lost Camera is a situation.
the sarea of Lost Camera is "Outside".

instead of resolving a Lost Camera:
	say "     While exploring the outskirts of the city, you spot a video camera in the middle of the trash-strewn street. It's covered in a strange, sticky juice that has a very potent smell reminding you of some of the creatures that you have encountered in heat. Grabbing a crumpled newspaper you use it to give the it a quick wipe-down. The camera itself is actually in pretty good condition all things considered, but the view-screen on the side has a slight crack in the left hand corner. Experimentally turning the camera on shows that is still in working order regardless, the screen indicating that there is a tape inside. Maybe that'll provide some clues on how the device came to lie where you found it...";
	LineBreak;
	say "     [bold type]Do you want to watch the tape right away?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure! You're curious about what you may find.";
	say "     ([link]N[as]n[end link]) - Not right now. You can always watch it later.";
	if player consents:
		LineBreak;
		say "     You hit playback so that you can view the last moments that the camera recorded.";
		LineBreak;
		say "[CartersRecording]";
		LineBreak;
		say "     After that the screen goes dark and the tape is over. Deciding that the video camera could come in handy you decide to pocket it and the tape. Looking around you are shocked by how much the same area in the footage changed in only a few weeks. It seems like the nanites are not just changing people and terrain. Almost seems like the nanites themselves are acting as a sort of forced evolution for everything they come in contact with.";
	else:
		say "     Deciding that the video camera could come in handy you decide to pocket it and the tape. You glance around the area, wondering what exactly happened here. Now that you have the tape you will be able to find out, it just depends on when you will have the free time to view it.";
	LineBreak;
	say "[bold type]Video Camera has been added to your inventory![roman type][line break]";
	increase carried of video camera by 1;
	LineBreak;
	say "[bold type]Carter's Tape has been added to your tape inventory![roman type][line break]";
	add "Carter's Tape" to tapes of player;
	ScoreGain 10;
	now Lost Camera is resolved;

Section 3 - Origin Stories

to say CartersRecording:
	say "     The footage starts with a blonde-haired woman on screen talking to the person who is filming her. 'Kelly, are you sure it's safe here? I mean, with all of these weird disappearances around the city and strange sightings... I just don't think it's a good idea to go looking for trouble.' The man talking sounds equal parts scared and annoyed. The woman just rolls her eyes at the camera. 'Carter, stop being such a pussy! This is our once in a lifetime chance to make it big. I don't know about you, but I personally don't like living right next to the subway. God, my mother was right! She kept telling me how weak and pathetic you were, and I stupidly defended you. Here, how about this? Why don't I open my purse and let you borrow my balls since lord knows that you don't have any!'";
	say "     You see the camera lower a bit and can only assume that he is used to this treatment. You can't help but feel a little sorry for him. 'Baby, I do want better for us, but I also don't want anything to happen to you. I love you.' You can't help but smile at his sweet sentiment, but his girlfriend however does not share your opinion. 'Oh god! Carter, can you just not? You know how I feel about that word. It's disgusting, all of that cutesy crap. Trust me though, nothing is going to happen to me. Why do you think I brought you with me? If anything pops up, I will leave it to you. I mean, [italic type]I'm[roman type] gonna be a famous reporter after this, so I can't be replaced. [italic type]You[roman type], however - well, I can always get another cameraman.'";
	WaitLineBreak;
	say "     You can't help but feel at least a slight amount of animosity for this woman, as she continues to talk down to her boyfriend, who just stands there and takes it. 'Now, shut up and film, Carter! I don't have time for your pathetic crap. I'm gonna be somebody after all of this, and you... well, if you play your cards right, I may even let you carry my luggage one day.' The smile she sends that camera is cold and devoid of any real affection. 'Ugh, can you just start filming? We can talk about all of that other shit later.' Carter's response sounds leery 'Umm, babe, I have been recording this whole time...' Just like that, her disdainful smile turns into a perky one.";
	say "     'Hello, this is Kelly Richardson, reporting live from the city streets where a crisis has... Oh my God!' The woman gets cut off as a male minotaur charges out of a nearby alley, tackling her to the ground. 'Get off of me, you oversized cow! Carter, help me!' You see the camera lower, and the man take a few steps forward. 'You worthless sack of shit, get over here and help me! Now!' He stops moving forward. 'My god, you really are useless! A real man would have put himself between me and this thing!' The camera begins to rise back up, and by this point, the minotaur has secured the woman's arms above her head with one hand. The beast grabs her blouse and tears it off to one side, exposing her perky B cup breasts. She continues to insult the creature [italic type]and[roman type] Carter. The minotaur pays her no mind as he leans forward, allowing his long, flat tongue to graze over one of her nipples, which makes Kelly panic even more. Eventually, the minotaur begins to suckle at her breast, but seems to be becoming frustrated, almost as if it's expecting something to happen that just won't.";
	WaitLineBreak;
	say "     The giant bovine man finally gives up on his endeavor as it becomes apparent that he will not be receiving what he wants, and he raises his head to look down on her. With the bull's head out of her line of sight, she looks to Carter with pure hatred in her eyes. 'What the fuck do you think you are doing!? Help me right now, Carter. This isn't funny!' You can also begin to make out tears forming in her eyes, whether from rage or fear you're not sure; it could be both to be honest. You are able to see the camera start to shake slightly, and you assume that he is having a freak-out based on what he is seeing, but you would be wrong.";
	say "     You begin to hear him chuckling to himself, the sound having an oddly empty sound to it. 'Baby, I thought that you wanted to be a famous? Besides, I'm useless, right!? That's what you said, so you couldn't possibly want me to save you. I can, however, make you a [italic type]star[roman type]!' The look she shoots towards him is filled with rage, but before she can utter a single word though, the minotaur seems to have come to its own conclusion. With its free hand, it grabs at the hem of the skirt she is wearing and tugs it higher over her stomach. You can now make out that she is wearing a simple black thong. Apparently in shock, her mouth just hangs open in surprise. With seemingly no effort, the beast man slips a finger past the material and pulls it away from her body, causing the material to split and tear. You can actually make out the sound of the fabric separating.";
	WaitLineBreak;
	say "     The camera zooms in on her exposed pussy, puffy and wet. The minotaur reaches down and rubs his hand across her, bringing his hand up to his nose and breathes in the scent. 'I knew it! What was it that you told me, Kelly? That you just haven't been in the mood lately? And surprise, surprise, you're leaking some dude's load, and I'm sure as hell that it isn't mine!' She at least has the good grace to blush at being busted, however her previously cocky demeanor returns with a vengeance. 'Sometimes, a woman needs a [italic type]real[roman type] man! Not some chump who is basically a chick that grew a dick!'";
	say "     Unfortunately for Kelly, this is the exact moment the minotaur slams his huge, engorged cock into her slippery folds. She begins to shout and swear at the intrusion while the minotaur lets out a pleased huff. The camera alternates from a zoomed out shot to a zoomed in view of the bull's cock spearing its way inside of Kelly. 'So, babe, is he enough of a [italic type]real[roman type] man for you?' His voice sounds strained, and you can only assume that this is all part of him having a nervous breakdown of some kind. You can't help but wonder how long they have been together and how long the abusive part of the relationship has been going on.";
	WaitLineBreak;
	say "     Eventually, the woman's screams turn into moans of pleasure and pleading for the beast above her to go harder. At this point, the camera begins to shake once again, and you hear in a soft voice Carter muttering to himself. 'So, this is what it takes to get you excited. All that I wanted was to love you and treat you like a queen. Maybe I should have been an asshole like most guys; maybe then I would have been enough for you...' From the sounds of it, his grasp with reality mixed with the knowledge that he wasn't enough is too much for him. The last thing you see happening to Kelly is a clearish-liquid starting to ooze out of her nipples. The minotaur leans down and begins to nurse from what you now realize is her breasts adjusting to lactating. It finally clicks in your mind that this must have been what the bovine was trying to do earlier. The camera turns away from the scene of debauchery and slowly starts to make its way down a side street. A noise from within the alley makes Carter turn quickly to see what is approaching.";
	say "     What comes into focus is a beautiful centauress, with a honey-colored coat that matches the honey-blonde hair that she has. It is tied together in a loose ponytail that hangs over her shoulder. She is also wearing a tattered bra that doesn't seem to fit, being a few sizes too small for her ample cleavage. Her cerulean-blue eyes look the cameraman up and down from under long lashes, and she begins to wring her hands together gently. 'Hey, umm, are you okay? I mean, you look like you just saw a ghost.' Glancing down at herself, she lets a soft chuckle. 'Then again I'm sure I probably startled you. I know that I'm not looking my best, but my name is Rosalyn. Hope I didn't scare you.' She stretches her hand out to give an open invitation for a friendly handshake. The camera lowers slightly in what you can only assume means Carter is willing to meet her with a handshake of his own. 'Hi, my name is Carter, and trust me, after what I just saw... I don't think anything will shock me again.' The last few words come out as barely a murmur.";
	WaitLineBreak;
	say "     In that very moment, bellows can be heard and something seems to hit the cameraman, knocking the camera from his grasp and sending it to tumble to the ground. From its position on the sidewalk, you can still make out Rosalyn and part of what you assume are Carter's legs. You then hear a familiar voice from somewhere offscreen. 'So, you abandon me to that oversized cow, and then I find you talking to some random horse slut!? You need to say goodbye to that piece of trash, right now! I'm gonna have to punish you for what you did, you know that right?' The icy tinge to her voice causes a shiver to go down your spine. Without skipping a beat, Rosalyn reaches out to Carter. 'Grab my hand and get on my back!' Without looking back, Carter rushes towards her, and she grabs hold of his arm, helping him swing onto her back.";
	say "     Then the viewpoint of the camera suddenly moves again as it is bumped by a stomping hoof, its new angle revealing that Kelly now has become a female minotaur. She is holding a man's jacket in her large hands, likely wrenched off Carter as he successfully slipped out of her grasp. The newly transformed woman rips the piece of clothing apart in rage and runs after Carter, trying to cut off his escape. Thankfully for him, Rosalyn has already turned around by that time and uses her hind legs to kick back, giving Kelly pause from getting too close. The camera goes a little blurry after that as the auto-adjust has trouble focusing, but you are able to make out the centauress galloping off into the distance. Kelly remains behind, shaking her large fist and shouting in a rage, 'Just you wait, asshole, I'll get you and make you pay for what you've done!'";


Origins ends here.
