Satyr by Sarokcat begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Satyr to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Greek Nymph" } to infections of guy;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say Satyr attack:
	if cunts of player is greater than 0:
		say "'Hah!' The satyr says as he pins you to the wall,  'What do we have here?' the goat-like man says with a leer as his hands roam your body, 'Not quite a proper nymph I[apostrophe]ll admit, but you[apostrophe]ll do!'  The satyr says as he begins to fondle you, wine spilling everywhere the scent of the strong wine seeming to spiral through your head making you feel as if you had had a few too many drinks yourself.  The satyr pays no attention however to your distraction, as he is too busy positioning his large member for best effect, a fact brought to your attention as it begins to poke at your feminine opening.  Looking down you can only get small glimpses of his large member, as his body is in the way as he presses your back up against the wall. His hands drop to your hips as he spreads you wide for him, you open your mouth to try to protest, but only a lusty moan comes out as he begins to sink his hot goat-like meat into you.[line break]";
		say "Your mind fogs even more as the scent of wine, the satyrs musk and your own body's lust combine, sending you into a pleasurable haze as he begins to fuck you hard against the wall. His stout goat-like legs easily supporting both your weight, as he holds your moaning body up, you can[apostrophe]t help but realize now why nymphs always end up letting satyrs catch them. You find yourself thinking idly, their cock just feels sooo good.  You moan in delight as his cock stimulates all the places deep inside you, throwing your head back as you orgasm around his cock, and he doesn[apostrophe]t even stop, just pumps into you all the harder. You find your legs and arms wrapping around his back as he thrusts into you, holding him tight as he continues to fuck you, bringing you to yet another orgasm as his wonderful rod thrusts into you.  Finally satisfied that you are good and fucked, the satyr groans himself, and lets his cock explode inside of you, filling you with his hot seed. Gasping, you shudder in one last orgasm as your mind goes blank for a minute, only dimly noticing as the sated satyr pulls you off of him and lies you down carefully on the floor.  'Not quite the fun of a real nymph yet,' you think you hear the satyr say, 'But I have to admit that was pretty damn good anyways, maybe you[apostrophe]ll let me catch ya again sometime and we can make a real nymph out of you.' The satyr finishes with a smile, as he snags his wine cup from where it fell, and goes looking for a refill.  Slowly you manage to pull your well used body together, and head back off into the museum halls yourself, almost looking forward to that next promised chase[impregchance]";
		if girl is not banned, infect "Greek Nymph";
	otherwise:
		say "'Hey there brother! Up with you now, there are nymph[apostrophe]s waiting for us to find them!'  The jovial satyr says as he hauls you up, 'Come join the revel!' The happy little beast trots off looking for the nymphs and the party, almost dragging you along behind.  Soon you are joined by more and more satyr[apostrophe]s as they party and share wine and good cheer, their wine burning through your head pleasantly as you join them in carousing, all while looking for the elusive nymphs.  Eventually you are caught up in the happy festive mood of the goat men, and enjoy the party and hunt as well, lacking their seemingly boundless energy however, you eventually manage to fall behind the group.  Given a few moments to yourself, you come back to your senses and slip off down the museum passages back towards the entry.";
		infect "Satyr";


To say Satyr loss:
	say "Knocking the goat man back on his furry little tail, his cup of wine splashes out on the floor.  The satyr looks more offended at this mistreatment of good liquor then it does at your violent actions at the satyr himself. 'Hey now! If ya didn[apostrophe]t want to have some fun you could have just said!' The goat-like creature says angrily,  'There ain[apostrophe]t no reason for you to abuse the booze!' Picking himself up, the satyr snatches up the now empty cup, and stalks off into the halls, the picture of offended innocence as he looks for a refill.'";

	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Satyr"; [Name of your new Monster]
	now attack entry is "[one of]He splashes wine around everywhere, as he tries to get you to try some.[or]He grins as he shows off his large goat cock, the sight stirring something strange deep within you.[or]His strong goat-like musk distracts you for a minute as he attacks.[or]Dancing around nimbly on his goat hooves, the satyr then plants one of the hooves right where it hurts the most.[or] Swinging the wine cup around haphazardly, somehow he manages to bounce it off your head[or] The satyr brings up his pipes and whistles a little tune, and to your surprise you can[apostrophe]t help but dance a little[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Satyr loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Satyr attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "You hear a strange off key singing echoing through the halls, turning to look you see a strange man weaving down the hall on goat-like legs. Indeed the strange creatures lower body appears to be that of a goat, small curved horns protrude from his forehead, with a goat-like beard hanging off his chin, and a large animal like sheath between his legs, you recognize him immediately from some of the pictures on the wall as a satyr, but you thought those were just a myth!  Spotting you, he waves the large wine cup in one hand at you, while he pats the pipes hanging off his rough belt, '[one of]Hey there! Care for a bit of wine?[or]Did you see any nymphs around here?[or]Hey come join the party![or]You look like you need to lighten up![or]You gots anymore booze? Is good![at random]' he says, as he dances forward nimbly on his goat-like hooves.  His inebriated state is as obvious to you as is the fact that he isn[apostrophe]t interested in listening to anything you have to say.";[ Description of the creature when you encounter it.]
	now face entry is "rough mostly human-like face, though the goat-like beard, goat horns, and the lusty look filling your eyes shows it to truly be a satyr[apostrophe]s";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "short and rather stocky, your upper body is that of a well built man, while your lower body rests on two exceptionally well built goat-like legs, your nimble goat hooves ringing off the floor with every step.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]goat furred[or]tough[or]rugged[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a short stubby goat tail, positioned behind you, it seems to move jauntily with every step you take. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]goat-like[or]beastial[or]satyr[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face shifts and changes, horns growing out of your forehead as a goat-like beard sprouts from your chin.  You can feel your mind filling up with images of wine, women, and song, though with more emphasis on the women then the other two admittedly."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your feet shift underneath you, cracking and fusing into large goat-like hooves, as your legs assume a digigrade stance. After a minute you find it almost natural to balance on your new appendages, and are surprised at how nimble they are, the fact that your upper body has become that of a built young man seems almost secondary to your new satyr legs."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your upper body grows tough rugged skin, and your lower body erupts into a riot of goat-like fur."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a small little goat-like tail bursts forth, settling in comfortably over your well muscled ass."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your aching member grows tight as it fits itself into a goat-like sheath hanging between your legs your balls hanging low below."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 18;
	now dex entry is 16;
	now sta entry is 16;					
	now per entry is 14;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
	now area entry is "Museum";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 14;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Satyr Wine";			[ Loot monster drops, ]
	now lootchance entry is 30;		[ Chance of loot dropping 0-100 ]

Table of Game Objects (continued)
name	desc	weight	object
"Satyr Wine"	"A small sample of some dark wine you found left behind by one of those strange Satyr folk, it looks like there is about enough left for a single mouthful."	1	Satyr Wine

Satyr Wine is a grab object. It is part of the player. Understand "wine" as Satyr Wine. Satyr Wine is infectious. The strain of Satyr Wine is "Satyr".

The usedesc of Satyr Wine is "[wineusing]";

to say wineusing:
	say "Taking out the small mouthful of dark wine, you swirl the liquid around in the small cup for a minute, before tossing it back, gasping as the heady stuff burns its way down your throat, and makes your head spin.  That's definitely the good stuff!";
	decrease thirst of player by 10;

instead of sniffing Satyr Wine:
	say "The wine is aromatic and quite powerful.  And after everything you've seen in this strange city, you could definitely go for a drink.";


when play ends:
	if bodyname of player is "Satyr":
		if humanity of player is less than 10:
			say "Finally giving in to your base desires, you run back to the museum where you know there is a party going on.  Running into several other satyrs, they welcome you with alcoholic grins as they pass you a cup, a new vigor and zest for living in the moment shooting through you as you drink. Soon you are carousing just as hard as they are, enjoying the moment for all it is worth, and charging off down the halls in pursuit whenever one of you manages to spot a lovely little tease of a nymph. You lose all track of time as you party the days and nights away, but as neither you nor the nymphs never seem to get any older, who cares?  At one point several people with guns came around to try to get you to leave, but as they didn[apostrophe]t have any booze of their own, you helpfully offered them some of yours, and soon enough they came around to your way of thinking as they joined the party.  Strangely enough the rest of them seemed to avoid your party after that, you would almost think they didn[apostrophe]t know how to have fun, not that you could really bring yourself to care through the happy fog of alcohol and sex that you pass the carefree days in.";
		otherwise:
			say "Rescued by the military, you wander around a bit, people giving you odd looks due to your goat-like lower body, still most of the changes are easy enough to hide when viewed from the waist up. This leads you to find your true calling in life, as a bartender, your nimble hands and your ingrained reverence for the booze serving you well. Soon you earn enough to buy your own bar, which you call 'The Satyr[apostrophe]s Revel' amused at the ironic name, soon your bar becomes one of the hottest in the city, your parties always seeming to have that extra something others lack.  While most of the people who get a good look at you in your new bar think your merely in a costume, you are happy to let many of the woman find out how real you are for themselves, and while your new life is sadly lacking in any naked nymphs, you have to admit you have found the next best thing.";




[ Edit this to have the correct Name as wall]
Satyr ends here.