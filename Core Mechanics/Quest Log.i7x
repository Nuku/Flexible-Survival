Version 1 of Quest Log by Core Mechanics begins here.
[ Version 1 - Log tracking major quests to help player remember next steps]

ListOpenQuests is an action applying to nothing.

understand "quest log" as ListOpenQuests.
understand "list quests" as ListOpenQuests.
understand "quests" as ListOpenQuests.
understand "quest" as ListOpenQuests.
understand "questlist" as ListOpenQuests.

To ListOpenQuests:
	if journal is not owned:
		say "     Sadly, losing your journal took all notes you made in it with it.";
	else:
		say "     You open your journal and take a look at your notes of the world around you:";
		LineBreak;
		say "     ";
		MainStorylineLog;
		say "     ";
		HospQuestLog;
		[Dry Plains]
		if "Farm Quests" is listed in OpenQuests of Player or "Other Dry Plains Quest" is listed in OpenQuests of Player:
			say "[bold type]Dry Plains[roman type]:";
			if "Farm Quests" is listed in OpenQuests of Player:
				say "     ";
				AnthonyQuestlog;
			if "Other Dry Plains Quest" is listed in OpenQuests of Player:
				say "     ";
				[
				OtherDryPlainsQuestlog;
				]
		if "Sylvia Quest" is listed in OpenQuests of Player or "Julian Quest" is listed in OpenQuests of Player:
			say "[bold type]Tenvale College Campus[roman type]:";
			if "Sylvia Quest" is listed in OpenQuests of Player:
				say "     ";
				SylviaQuestLog;
			if "Julian Quest" is listed in OpenQuests of Player:
				say "     ";
				JulianQuestLog;
		[		
		if "Industrial Sector Quest 1" is listed in OpenQuests of Player or "Industrial Sector Quest 2" is listed in OpenQuests of Player:
			say "[bold type]Industrial Sector[roman type]:":
			if "Industrial Sector Quest 1" is listed in OpenQuests of Player:
				say "     ";
				IndustrialSectorQuest1Log;
			if "Industrial Sector Quest 2" is listed in OpenQuests of Player:
				say "     ";
				IndustrialSectorQuest2Log;
		]

ListCompletedQuests is an action applying to nothing.

understand "completed quest log" as ListCompletedQuests.
understand "completed quests" as ListCompletedQuests.
understand "completed quest" as ListCompletedQuests.
understand "completedquestlist" as ListCompletedQuests.
understand "completedquestlog" as ListCompletedQuests.

To ListCompletedQuests:
	if journal is not owned:
		say "     Sadly, losing your journal took all notes you made in it with it.";
	else:
		say "     You open your journal and take a look at your notes of the world around you:";
		LineBreak;
		say "     ";
		MainStorylineLog;
		say "     ";
		HospQuestLog;
		[Dry Plains]
		if "Farm Quests" is listed in CompletedQuests of Player or "Other Dry Plains Quest" is listed in CompletedQuests of Player:
			say "[bold type]Dry Plains[roman type]:";
			if "Farm Quests" is listed in CompletedQuests of Player:
				say "     ";
				AnthonyQuestlog;
			if "Other Dry Plains Quest" is listed in OpenQuests of Player:
				say "     ";
				[
				OtherDryPlainsQuestlog;
				]
		[
		if "Industrial Sector Quest 1" is listed in CompletedQuests of Player or "Industrial Sector Quest 2" is listed in CompletedQuests of Player:
			say "[bold type]Industrial Sector[roman type]:";
			if "Industrial Sector Quest 1" is listed in CompletedQuests of Player:
				say "     ";
				[
				IndustrialSectorQuest1Log;
				]
			if "Industrial Sector Quest 2" is listed in CompletedQuests of Player:
				say "     ";
				[
				IndustrialSectorQuest2Log;
				]
		]

To MainStorylineLog:
	if hp of Doctor Matt is:
		-- 2:
			say "[bold type]Doctor Matt: [roman type]You've met Doctor Matt and he's asked you to retrieve two samples each of milk from the hermaphrodite gryphons around the city and globs of goo from the goo girls found in the mall sewer.";
		-- 3:
			say "[bold type]Doctor Matt: [roman type]Talk to Matt once he's had some time to work!";
		-- 6:
			say "[bold type]Doctor Matt: [roman type]Look for the [bold type]unusual creature[roman type] in the park and bring it to Matt to study.";
		-- 7:
			say "[bold type]Doctor Matt: [roman type]Talk to Susan.";
		-- 8:
			if hospquest < 8:
				say "[bold type]Doctor Matt: [roman type]Continue to assist Dr Mouse and let Dr Matt know what you find out.";
			else if hospquest is 13:
				say "[bold type]Doctor Matt: [roman type]You feel you might want to go tell Dr Matt about everything that happened at the hospital...";
		-- 9:
			if hospquest < 8:
				say "[bold type]Doctor Matt: [roman type]Continue to assist Dr Mouse and let Dr Matt know what you find out.";
			else if hospquest > 7 and mattcollection is 0:
				say "[bold type]Doctor Matt: [roman type]You feel like the doctor might like to see the samples Dr Mouse has asked you to collect before you deliver them to Dr Mouse...";
			else if mattcollection > 0:
				say "[bold type]Doctor Matt: [roman type]Continue to assist Dr Mouse and let Dr Matt know what you find out.";
			else if hospquest is 13:
				say "[bold type]Doctor Matt: [roman type]You feel you might want to go tell Dr Matt about the rest of the events at the hospital.";
		-- 11:
			say "[bold type]Doctor Matt: [roman type]You feel you might want to go tell Dr Matt about the rest of the events at the hospital.";
		-- 12:
			if level of Doctor Matt - turns < 16:
				say "[bold type]Doctor Matt: [roman type]Check back with the doctor a bit later.";
			else:
				say "[bold type]Doctor Matt: [roman type]Perhaps it's time you checked back with the good doctor.";
		-- 13:
			say "[bold type]Doctor Matt: [roman type]The doctor would like you bring him some food and water supplies. 6 of each should do. Don't tell Orthas.";
		-- 15:
			say "[bold type]Doctor Matt: [roman type]The military is requesting info on safe paths of travel through the city. Find as many points that you can navigate between as you can, and report to Doctor Matt once you're ready to give a report on at least 50% of the city.";
		-- 16:
			say "[bold type]Doctor Matt: [roman type]You've been given a package to take to Zephyr Labs in exchange for some information. Be prepared, they might have something more for you to do before you can get it.";
		-- 17:
			NDMQuestLog;
		-- 18:
			say "[bold type]Doctor Matt: [roman type]Having completed Zephyr's task and gotten the info, it's time to return to the doctor.";
		-- 19:
			if level of Doctor Matt - turns < 8:
				say "[bold type]Doctor Matt: [roman type]Check back with the doctor a bit later.";
			else:
				say "[bold type]Doctor Matt: [roman type]Perhaps it's time you checked back with the good doctor.";
		-- 20:
			say "[bold type]Doctor Matt: [roman type]You've been asked to go the Pediatrics office and see if you can convince her to give Matt some of her data.";
		-- 21:
			say "[bold type]Doctor Medea: [roman type]Perhaps it's time you checked back with the good doctor.";
		-- 22:
			say "...";

to HospQuestLog:
	if hospquest is:
		-- 1:
			say "[bold type]Hospital: [roman type]You think you should go check out what's going on at the city hospital.";

to NDMQuestLog: [nanite density monitors sub-quest]
	say "[bold type]Zephyr: [roman type]You've been asked to place four nanite density monitors around the city in order to get the information the doctor needs. ";
	if number of entries in ndmlist > 0:
		say "You still need to place one at a [bold type]detector site[roman type] in: ";
		if beach detector site is unresolved:
			say "The Beach. ";
		if red light detector site is unresolved:
			say "The Red Light District. ";
		if high rise detector site is unresolved:
			say "The High Rise District. ";
		if park detector site is unresolved:
			say "The Park. ";
		LineBreak;
	else:
		say "You've placed all of them, time to report back to Larissa!";


Quest Log ends here.