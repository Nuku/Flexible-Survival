Version 1 of Extra College Events by Speedlover begins here.

LastCampusWalkin is a number that varies. LastCampusWalkin is usually 10000.
CatsVSDogsCounter is a number that varies. CatsVSDogsCounter is usually 1.

Cheetah Cheater is a situation.
The level of Cheetah Cheater is 0. [minimum level to find the event]
The sarea of Cheetah Cheater is "Campus".
	
instead of going west from College Campus Entrance while (Cheetah Cheater is not resolved and LastCampusWalkin - turns > 2):
	move player to College Walkway West;
	PregnantFriendEvent;	
	
Instead of resolving a Cheetah Cheater:
	CheetahCheaterEvent;
	
to CheetahCheaterEvent:
	say "     Walking down a pathway in the college, two figures emerge from one side and sprint toward you. Hearing their shouts of joy even from the distance you are at, they quickly get close enough for you to make them out. A female antelope and male cheetah are neck and neck in a race, with legs that blur as they cross ground at an amazing pace. As they close in you notice there is a fence in the way. The antelope goes around it and grabs the metal pole at the edge to slingshot herself to regain some speed while the cheetah jumps over it. They both get back up to full speed again, but the cheetah is now clearly winning. The antelope gives it her best shot, but they both streak past you and cross a finish line – marked out with a bit of tape – before she can catch up.";
	LineBreak;
	say "     'Ian, you're such a cheater!' She pants. He turns towards her and smirks 'I know.' Her nose scrunches in confusion for a second 'That's not what I... Oh when are you going to stop making that joke!' He laughs a little bit, 'When you manage to keep up.' She looks at him, her face pensive 'How about...' She stands and seductively drapes herself over him 'I show you how well I can keep up.' With a look on his face like he has won the lottery, Ian stumbles out a yes and they both dash off, presumably going somewhere private.";
	now Cheetah Cheater is resolved;  [it won't happen again]
	now LastCampusWalkin is turns;

Pregnant Friend is a situation.
The level of Pregnant Friend is 0.
The sarea of Pregnant Friend is "Campus". "College Walkway West".

instead of going west from College Campus Entrance while (Pregnant Friend is not resolved and LastCampusWalkin - turns > 2):
	move player to College Walkway West;
	PregnantFriendEvent;

Instead of resolving Pregnant Friend:
	PregnantFriendEvent;
	
to PregnantFriendEvent:
	say "     As you walk down the path you stumble upon two girls sitting on a wooden bench. One has been infected as a fox, and has fluffy fox ears on her head and a bushy tail poking through the back of the bench. She has an arm around her friend, a wolf anthro with a bulging stomach who is crying. The wolf girl has completely changed, complete with muzzle and fur all over. You step a bit closer and listen in.";
	say "     'It all happened so fast.' She sobs 'One minute I was studying with my boyfriend, the next hes one of those wolves!' her friend rubs her back 'Its good to talk about it, so what happened next?' she asks. 'Well he changed into one of those alphas, got real muscly, with a big you-know-what. I should have said no, he didn't have any condoms, but he just smelt so good and I let it happen' Her friend takes the opportunity to jump in 'It's ok, it's not your fault, so what happened next?'. The wolf takes a deep breath and lets it out 'Well we did the deed, and he finished in me. A few minutes later I turned into this and an hour after that [italic type]THIS[roman type]' she waves at her stomach 'started showing. He was really sorry after of course, got lost in his new instincts, but now I've got this...'";
	LineBreak;
	say "     'Dont worry' the fox girl soothes 'Look, you aren't alone in this, there are more than a couple of girls in your situation, turns out they grow really fast at the moment! You should give birth tonight and the child will be fully grown in a matter of weeks, you can continue your degree!' The wolf looks up 'I can?' she questions, the fox girl nods and a small smile appears on the wolf girls face before the fox girl continues 'Looks like you need to start thinking of baby names! Cmon lets go and have a look at a list of them, see what would be a good one.'";
	LineBreak;
	say "     They both get up from the bench and walk down the path. You step out from behind the bush you have been hiding in and head off to continue exploring.";
	now Pregnant Friend is resolved;
	now LastCampusWalkin is turns;

CatsVSDogs is a situation.
The level of CatsVSDogs is 0.
The sarea of CatsVSDogs is "Campus". "Athletic Street".

instead of going southwest from College Walkway West while (CatsVSDogs is not resolved and LastCampusWalkin - turns > 2):
	move player to Athletic Street;
	CampusLoversEvent;

Instead of resolving CatsVSDogs:
	CatsVSDogsEvent;
	
to CatsVSDogsEvent:
	if CatsVSDogsCounter is 1:
		say "     On your travels you spot a tennis court between buildings. There seems to be a game going on – between cats and dogs. One one side, a panther and a lynx. On the other side a husky and a labrador retriever. Anthro dogs and cats of many types are standing to one side watching the game. The game looks pretty intense, dogs loping around, hitting hard and trying to wear out the cats. On the other side the cats are playing tactically. Each of them stick to their positions like glue and they keep aiming for spots they think the dogs cant defend.";
		say "     You watch the yellow ball go from one side to the other a dozen times, both sides giving as good as they get, but nothing lasts forever. One of the cats hits high, causing the ball to go near the labradors head. Unfortunately for him, his instincts take over and [bold type]CHOMP[roman type]. Immediately the animals in the crowd yell in victory or defeat depending on their team and everyone starts to walk off. As they leave you hear the husky say to his teammate 'Again? That's the third ball this week!'";
		now CatsVSDogsCounter is 2;
	else if CatsVSDogsCounter is 2:
		say "     You spot the cats and dogs again, this time at a running track. There are a number of them wearing sporty clothes and stretching, getting limber for the run. A cat walks up to the side of the track at the finish line and lifts a gun. Immediately they all get into position side by side.";
		say "     The cat fires smoke into the air, and a second later they all sprint off as they hear the [bold type]BANG[roman type]. Immediately the cats etch out a small lead, legs pumping, ears flat. You notice something at the start, a greyhound shouts '[bold type]3[roman type]'. He launches off the line, catches and passes the dogs, slows down behind the cats and as the finish line approaches, gets around them just in time. The crowd back at the start line cheer and a large dog shouts [bold type]'ONE ALL'[roman type]. They all start walking towards the finish line, making you realise that you should be exploring the campus.";
		now CatsVSDogsCounter is 3;
	else if CatsVSDogsCounter is 3:
		say "     Hearing the sounds in the distance, you recognise the cats and dogs before you even see them. This time each group is sitting around a table, throwing bits of food at the other. You take a seat a bit up the path and watch their antics for a minute, thankful for the cheer in an otherwise dreary city. From the opposite side you see a gryphon milkman come along, and you seem to notice him at the same time the two groups do. From each group a member steps forward and begins to walk towards the milkman. Suddenly they stop, look at each other, and both start running. Side by side they run to the milkman and side by side they tackle him. The two groups start cheering and patting each other on the back, watching the three of them fall to the ground.";
		say "     The cat grabs the milk and the dog grabs the gryphon. Each of them begin to enjoy their prizes, the cat chugging down the milk as if he hasn't had a drink for days and the dog fucking the gryphon. Unfortunately they forgot about getting infected and both of them begin to show signs. The cats back bulges for a second before he begins to sprout wings, and the dogs muzzle changes into a beak. Slowly the groups stop cheering and start muttering amongst themselves. You distinctly hear 'Gangbang should fix that...' from one group. As they start to each drag away their member from the milkman, you decide to keep exploring the city.";
		now CatsVSDogs is resolved;
	now LastCampusWalkin is turns;
		
Extra College Events ends here.
