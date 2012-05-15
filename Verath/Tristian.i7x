Tristian by Verath begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Tristian to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

to say Tristian attack:
	say "'wow you got here how did that happen.'";
	wait for any key;
	if cocks of player is greater than 0:
		say "yay";
		infect "Tristian";
	otherwise:
		say "how the heck did you find me hiding here?";
		infect "Tristian";


To say Tristian loss:
	say "how the heck did you manage to get this, that's the real riddle I suppose..'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tristian"; [Name of your new Monster]
	now attack entry is "[one of]She riddles you this and that till you cry.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Tristian loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Tristian attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "The Tristian is watching you!!";[ Description of the creature when you encounter it.]
	now face entry is "that is a mixture of human and equine features, with a short palomino like muzzle and dark equine eyes, your features are only accentuated by the multiple earrings hanging from your new more equine ears, and your long dark black mane which hangs down the side of your face. The lovely spiked collar Tristian gave finishes the new look of your "; [Your have a (your text) face."] 
	now body entry is "that of a humanoid horse thick and rather muscular, your hands and feet have slightly hoof-like fingernails. You are wearing the outfit that your fellow horse goth picked out for you, your strong torso covered in a tight long sleeved fishnet shirt, the fishnet pattern tracing down your well muscled arms to your spiked cuffs. Your thick black leather pants only serve to accentuate your well defined lower body, your slightly hoof-like feet rest easily in the modified black leather boots Tristian had made for you.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]palomino spotted[or]lightly furred[or]palomino furred[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long black horses tail hanging from your rear, swishing from side to side across your rear, someone has braided a few small pieces of gothic silver jewelry into the tail, and it makes a soft chiming noise as it sways when you walk.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]stallion[or]equine[or]flared[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "Wake up from your long night with the stallion, you yawn and stretch, only to find your mouth opening wider then ever before and a strange loud jingling noise in your ears.  Blinking you reach up to find your face seems to have changed at some point during the night, as you blink your new equine eyes you trace your fingers over your new equine snout, and then reach up to tug on your larger equine ears. As your ear jingles again you realize that at some point while you were resting your partner took time to attach several ear rings to your new ears, the thought makes you smile as you look around, for him, only to spot a spiked leather collar he obviously left out for you.  Your new muzzle pulls back into a larger grin as you slip the collar on, and get ready to face the day."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "wake up from your long night with the stallion, you notice your body has changed at some point to be more like his, you take in your new more equine form in amazement, wiggling your new feet and enjoying its well shaped form.  Looking around you note that he has laid out a nice new outfit to go with your new body. As you look over the items he left, you find yourself smiling at the fishnet shirt and black leather pants he left you, as well as the proper spiked cuffs and specially modified boots for your new feet.."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "wake up from your long night with the stallion, and you go to scratch it only to find it seems to be covered in soft palomino patterned fur, just like your lovers ."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "you wake up, and you moan and roll over as you reach down, only to feel a large amount of hair covering your ass. Blinking you look down to see your new long equine tail, which someone has braided several small silver gothic charms into."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "you wake up, and you reach down to stroke it only to find that your morning wood is even more impressive with a thick equine cock, the feel of its new sensitive flared tip making you moan as you stroke it several times with a smile."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 22;
	now dex entry is 14;
	now sta entry is 20;					
	now per entry is 16;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 14;			[Amount of Damage monster Does when attacking.]
	now area entry is "PALOMINO";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 14;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Chipped tooth";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "Tristian":
		if humanity of player is less than 10:
			say "Surrendering to the infection, you finally realize that you want nothing more then to be a lovely little slutty pony for your handsome male stallion, and waste no time in running on your new equine feet back to the club where your new master is waiting.  Arriving at the club, you are happy to be welcomed into Tristian[apostrophe]s waiting arms, and even happier when your new master lets you know what you will be doing for him from now on. You love your stallion taking you back to the dressing room and helping you into your new stage clothes, and the crowd outside goes wild when he announces your first night as the Palomino[apostrophe]s newest stripper! You love the feeling of showing off your handsome male body on the stage, as you dance and tease the other club goers using what you learned here in the club from Tristian and the other dancers.  Soon you and several other strippers are nearly naked on stage and showing off for the all too appreciative audience, as you grind up against the naked bodies of a black swan, while a well endowed panther grinds up against you from behind.  Your first night is a tremendous success, though the best part is how happy your dominant stud is with you afterwards, as you wake up from a night of wonderful sex, to find several new piercings for you to wear, to demonstrate who you belong to, as well as his tag hanging from your collar. Smiling happily, you settle in to your new life as one of the clubs strippers with ease, dancing all night for the patrons, and dancing with your mate and several other strippers afterwards. When the military finally comes, your business isn[apostrophe]t hurt at all, it merely becomes slightly less blatant for a time, while the soldiers look around. However being soldiers, they soon relax to enjoy the pleasures of the club just as much as anyone else, and while some of them manage to stick to the bar and remain relatively normal. Most of the soldiers end up joining the patrons on the dance floor, or in the back rooms, or even on the stripper poles with you, where you can teach the newest members of the club just how much fun it is to be a slutty little palomino stripper...";
		otherwise:
			say "When the rescue finally comes the military and civilian authorities put you and Tristian through a battery of tests and interviews, before finally allowing the two of you to rejoin normal society.  You both suspect that you were released so quickly, not so much because they thought that you weren[apostrophe]t still infectious, but because the authorities had bigger problems to deal with, both in the fight for the city, and with some of the other infected being brought in, especially given the large numbers of hyenas. You and Tristian settle down in a smaller city outside Seattle and eventually open up another club catering to the goth, emo, rave, and alternative crowd, your sexy gothy forms attracting many of the more curious club goers. No one seems to complain when their sons, daughters, or significant others visit your club, and leave  with permanent changes as a reminder of their visit to the club. The clubs success and large number of repeat customers soon allows you to open a second even larger club in downtown Seattle, and soon after that the two of you are opening clubs in every major city in the country. The two of you soon branch out into the sex industry with palomino magazine and the purchasing of a film company, eventually launching your own website. People are soon flocking to the newsstands and online site every month to buy the newest issue and to see the photo stories of the models being converted into sexy lusty beasts, the porn movies of the same nature are also hot sellers. Especially the issue and movie where Tristian's little brother and his friend are converted into a slinky gothy unicorn boi and a gothy Doberman boi respectively. Within ten years the palomino empire is the single largest media and publishing company in the world.";




[ Edit this to have the correct Name as wall]
Tristian ends here.

