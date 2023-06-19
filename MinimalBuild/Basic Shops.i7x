Version 1 of Basic Shops by MinimalBuild begins here.

understand the command "buy" as something new.
BuyingAction is an action applying to one topic.

Understand "buy [text]" as BuyingAction.

Check BuyingAction:
	if price sign is not visible and outfitters rack is not visible and medicine case is not visible, say "Buy what from whom?" instead;

Carry out BuyingAction:
	let SoughtItem be "";
	now SoughtItem is topic understood;
	if the medicine case is visible: [Black Market in Zephyr Storeroom/Library Shop; see file Black Market.i7x]
		if SoughtItem is a name listed in the table of zephyr black market medicine case:
			say "";
		else if SoughtItem is a name listed in the Table of Zephyr Black Market Outfitters Rack:
			say "";
		else:
			say "That doesn't seem to be sold here.";
			continue the action;
		if price entry > freecred:
			say "You can't afford the [Name entry], it costs [price entry] freecred.";
			continue the action;
		say "You purchase [Name entry] for [price entry] creds.";
		ItemGain Name entry by 1 silently;
		decrease freecred by price entry;
	else if price sign is visible: [Zephyr store in Zephyr Lobby; see file Zephyr Inc.i7x]
		if SoughtItem is a name listed in the table of zephyr goods:
			say "";
		else:
			say "That doesn't seem to be sold here.";
			continue the action;
		if price entry > freecred:
			say "You can't afford the [Name entry], it costs [price entry] freecred.";
			continue the action;
		say "You purchase [Name entry] for [price entry] creds.";
		if Name entry is "Zephyr Personal Communicator" or Name entry is "zephyr personal communicator" or Name entry is "zpc":
			ItemGain zpc by 1 silently;
		else:
			ItemGain Name entry by 1 silently;
		if Name entry is "pepperspray", increase pepped by 1;
		decrease freecred by price entry;


Basic Shops ends here.
