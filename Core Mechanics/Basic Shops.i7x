Version 1 of Basic Shops by Core Mechanics begins here.

understand the command "buy" as something new.
BuyingAction is an action applying to one topic.

Understand "buy [text]" as BuyingAction.

Check BuyingAction:
	if price sign is not visible and outfitters rack is not visible and medicine case is not visible and (Darius's Inventory is not visible or Darius is not visible) and Drenraya is not visible, say "Buy what from whom?" instead;

Carry out BuyingAction:
	let SoughtItem be "";
	now SoughtItem is topic understood;
	if the medicine case is visible: [Black Market in Zephyr Storeroom/Library Shop; see file Black Market.i7x]
		if SoughtItem is a name listed in the table of zephyr black market medicine case:
			if price entry > freecred:
				say "You can't afford the [Name entry], it costs [price entry] freecred.";
				continue the action;
		else if SoughtItem is a name listed in the Table of Zephyr Black Market Outfitters Rack:
			if price entry > freecred:
				say "You can't afford the [Name entry], it costs [price entry] freecred.";
				continue the action;
		else:
			say "That doesn't seem to be sold here.";
			continue the action;
		say "You purchase [Name entry] for [price entry] cred[if price entry is not 1]s[end if].";
		ItemGain Name entry by 1 silently;
		decrease freecred by price entry;
	else if price sign is visible: [Zephyr store in Zephyr Lobby; see file Zephyr Inc.i7x]
		if SoughtItem is a name listed in the table of zephyr goods:
			if price entry > freecred:
				say "You can't afford the [Name entry], it costs [price entry] freecred.";
				continue the action;
			say "You purchase [Name entry] for [price entry] cred[if price entry is not 1]s[end if].";
			if Name entry in lower case is "zephyr personal communicator" or Name entry in lower case is "zpc":
				ItemGain zpc by 1 silently;
			else:
				ItemGain Name entry by 1 silently;
			if Name entry in lower case is "nanite collector", now nanitemeter is 2;
			if Name entry in lower case is "pepperspray", increase pepped by 1;
			decrease freecred by price entry;
		else:
			say "That doesn't seem to be sold here.";
	else if Darius's Inventory is visible and Darius is visible: [Darius illegal trade]
		if SoughtItem is a name listed in the Table of Darius Inventory:
			if price entry > carried of food:
				say "You can't afford the [Name entry], it costs [price entry] food.";
				continue the action;
			say "You purchase [Name entry] for [price entry] food.";
			ItemGain Name entry by 1 silently;
			ItemLoss food by price entry silently;
		else:
			say "That doesn't seem to be sold here.";
	else if Drenraya is visible: [Drenraya's shop in Hellfire Club]
		if SoughtItem is a name listed in the Table of Drenraya Inventory:
			if price entry > carried of obsidian coin:
				say "You can't afford the [Name entry], it costs [price entry] obsidian coin[if price entry is not 1]s[end if].";
				continue the action;
			say "You purchase [Name entry] for [price entry] obsidian coin[if price entry is not 1]s[end if].";
			ItemGain Name entry by 1 silently;
			ItemLoss obsidian coin by price entry silently;
		else:
			say "That doesn't seem to be sold here.";

Basic Shops ends here.
