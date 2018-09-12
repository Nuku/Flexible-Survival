Version 8 of Plurality by Emily Short begins here.

"Adds tokens to help with sentences about nouns with plural names; provides handling for pronouns of objects like 'a pair of shoes'; offers additional control over Inform's default pronoun handling."

Use authorial modesty.

Section 1 - Verbs

A thing can be neuter. A thing is usually neuter.

The prior named noun is a thing that varies.[@Tag:NotSaved] The prior named noun is yourself.

After printing the name of something (called the target):
	mark target in output.

To mark (target - a thing) in output:
	if the target acts plural or target is the player, mark-future-plural; else mark-future-singular;
    now the prior named noun is the target.

To mark-future-plural:
	(- say__n = 1; -)

To mark-future-singular:
	(- say__n = 29; -)

To decide whether (item - an object) acts plural:
	if the item is plural-named or the item is ambiguously plural:
		yes;
	no.

To say is-are:
	say is-are of prior named noun.

To say is-are of (item - a thing):
	now the prior named noun is the item;
	if prior named noun acts plural or the prior named noun is the player, say "are"; else say "is".

To say has-have:
  say has-have of prior named noun

To say has-have of (item - a thing):
  if the item acts plural or the item is the player begin;
    say "have";
  else;
    say "has";
  end if.

To say numerical is-are:
	(- if (say__n == 1) print "is"; else print "are"; -)

To say numerical has-have:
	(- if (say__n == 1) print "has"; else print "have"; -)

To say es:
  say es of prior named noun

To say es of (item - a thing):
  if the item acts plural or the item is the player begin;
    say "";
  else;
    say "es";
  end if.

To say ies:
  say ies of prior named noun

To say ies of (item - a thing):
  if the item acts plural or the item is the player begin;
    say "y";
  else;
    say "ies";
  end if.

Section 2 - Pronouns

To say that-those:
    say that-those prior named noun.

To say Cap that-those:
    say Cap that-those prior named noun.

To say that-those of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "those";
    else if the item is the player;
		 say "you";
	else if the item is male and item is not neuter;
   		say "he";
    else if the item is female and item is not neuter;
    	say "she";
    else;
    	say "that";
    end if.

To say Cap that-those (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those";
    else if the item is the player;
		 say "You";
    else if the item is male and item is not neuter;
   		say "He";
    else if the item is female and item is not neuter;
    	say "She";
    else;
    	say "That";
    end if.

To say that-those (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "those";
    else if the item is the player;
		 say "you";
	else if the item is male and item is not neuter;
   		say "he";
    else if the item is female and item is not neuter;
    	say "she";
    else;
    	say "that";
    end if.


To say Cap that-those of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those";
    else if the item is the player;
		 say "You";
	else if the item is male and item is not neuter;
   		say "He";
    else if the item is female and item is not neuter;
    	say "She";
    else;
    	say "That";
    end if.

To say it-they:
	say it-they of prior named noun.

To say it-they of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "they";
    else if the item is the player;
		 say "you";
	else if the item is male and item is not neuter;
   		say "he";
    else if the item is female and item is not neuter;
    	say "she";
    else;
    	say "it";
    end if.

To say Cap it-they:
	say Cap it-they of prior named noun.

To say Cap it-they of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "They";
    else if the item is the player;
		 say "You";
	else if the item is male and item is not neuter;
   		say "He";
    else if the item is female and item is not neuter;
    	say "She";
    else;
    	say "It";
    end if.

To say its-their:
	say its-their of prior named noun.

To say its-their of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "their";
    else if the item is the player;
		 say "your";
	else if the item is male and item is not neuter;
   		say "his";
    else if the item is female and item is not neuter;
    	say "her";
    else;
    	say "its";
    end if.


To say Cap its-their:
	say Cap its-their of prior named noun.

To say Cap its-their of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Their";
    else if the item is the player;
		 say "Your";
	else if the item is male and item is not neuter;
   		say "His";
    else if the item is female and item is not neuter;
    	say "Her";
    else;
    	say "Its";
    end if.

To say it-them:
	say it-them of prior named noun.

To say it-them of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "them";
    else if the item is the player;
		 say "you";
	else if the item is male and item is not neuter;
   		say "him";
    else if the item is female and item is not neuter;
    	say "her";
    else;
    	say "it";
    end if.

To say Cap it-them:
	say Cap it-them of prior named noun.

To say Cap it-them of (item - a thing):
    now the prior named noun is the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Them";
    else if the item is the player;
		 say "You";
	else if the item is male and item is not neuter;
   		say "Him";
    else if the item is female and item is not neuter;
    	say "Her";
    else;
    	say "It";
    end if.


To say its-theirs:
  say its-theirs of prior named noun.

To say its-theirs of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
    if the item acts plural
    begin;
    	say "theirs";
    else if the item is the player;
		 say "yours";
	else if the item is male and item is not neuter;
   		say "his";
    else if the item is female and item is not neuter;
    	say "hers";
    else;
    	say "its";
    end if.

To say Cap its-theirs:
  say its-theirs of prior named noun.

To say Cap its-theirs of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Theirs";
    else if the item is the player;
		 say "Yours";
	else if the item is male and item is not neuter;
   		say "His";
    else if the item is female and item is not neuter;
    	say "Hers";
    else;
    	say "Its";
    end if.

To say possessive:
  say possessive of prior named noun.

To say possessive of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
  if the item is the player
  begin;
  	say "your";
  else if the item acts plural;
  	say "[the item][']";
  else;
  	say "[the item][']s";
  end if.

To say Cap possessive:
  say Cap possessive of prior named noun

To say Cap possessive of (item - a thing):
  now the prior named noun is the item;
  mark prior named noun in output;
  if the item is the player
  begin;
  	say "Your";
  else if the item acts plural;
  	say "[The item][']";
  else;
  	say "[The item][']s";
  end if.


A thing can be ambiguously plural or ordinarily enumerated. A thing is usually ordinarily enumerated.

Every turn: if the noun is a thing and the noun is ambiguously plural, notice the plurality of the noun; if the second noun is a thing and the second noun is ambiguously plural, notice the plurality of the second noun.

After printing the name of an ambiguously plural thing (called the suspect):
	if the manual pronouns option is active, do nothing;
	else notice the plurality of the suspect.

To notice the plurality of (suspect - an object):
	(- PlugPlural({suspect}); -)

Include (-

[ PlugPlural obj;
	SetPronoun('them', obj);
	SetPronoun('it', obj);
];

-)

Use Manual Pronouns translates as (- Constant MANUAL_PRONOUNS; -)

To have the parser notice (o - an object):
	if o is ambiguously plural, notice the plurality of o;
	else set pronouns from o

[The following is a legacy item in case people are still using it in their code, but "set pronouns from..." will work just as well.]

To notice (o - an object) boringly:
	(- PronounNotice({o}); -)



Plurality ends here.

---- DOCUMENTATION ----

Section: Output tokens for pronouns

This extension adds to say phrases for

	that-those
	Cap that-those
	it-they
	Cap it-they
	it-them
	Cap it-them
	its-their
	Cap its-their
	its-theirs
	Cap its-theirs
	possessive
	Cap possessive

	which refer to the last noun whose name has been printed. (For simplicity the token names do not reflect this fact, but if the last noun is a person, these tokens will produce "him" or "her" as appropriate, or "you" for the player.) The possessive is "your" for the player, and otherwise "[the item]'s".

	that-those of item
	Cap that-those of item
	it-they of item
	Cap it-they of item
	it-them of item
	Cap it-them of item
	its-their of item
	Cap its-their of item
	its-theirs of item
	Cap its-theirs of item
	possessive of item
	Cap possessive of item

accept an object and also reset the prior named thing appropriately. is-are of item prints "is" or "are" appropriately for the item, though this will likely not be necessary very often, given that is-are already picks up whatever thing was last named by the game.

In addition, there are demonstrative adjectives:

	that-those item
	Cap that-those item

print things like "those shoes" and "That hat".

Section: Inflections

Also included are

	is-are
	has-have

and

	is-are of item
	has-have of item

which produce the correct forms as needed.

After we have printed a number to the screen, we may use "numerical is-are" and "numerical has-have" to get the correct inflection; so for instance

	say "The [the number of things carried by the player in words] thing[s] in your arms [numerical is-are] heavy.";

will produce is or are as appropriate. A

Plurality also extends the behavior of the default [s] token so that if it is used after a noun rather than after a number, it will correctly inflect the verb to which it is attached, like so:

	say "[The item] stab[s] the griffin in the flank."

and adds [es] and [ies], thus:

	say "[The viewer] sp[ies] the castle at a distance."
	say "You see [the number of flies] fl[ies] buzzing around the trash can."
	say "[The inspector group] fax[es] the document to HQ."


Section: Ambiguously plural

We also create the term "ambiguously plural" to refer to items such as "pair of socks", "set of chessmen", "crew of pirates", etc., which the player might reasonably refer to as either "it" or "them". These items will then respond equally well to "it" or "them" in input.

The default Inform way of finding out whether something has a plural name is to say

	if the noun is plural-named

But if we also wish to test for things that are ambiguously plural, we have a new phrase

	if the noun acts plural

which looks for both plural-named and ambiguously plural items.

Section: Internal pronouns

Finally, Plurality adds some control over how Inform sets its internal pronouns. The phrase "have the parser notice", which we can call when we want to manually set a pronoun. For instance

	Instead of searching the bedclothes:
		say "Among the sheets you find a broken locket.";
		have the parser notice the locket.

...will mean that the player who types >X IT in the next move will be referring to the locket rather than to something else.

By default, Inform also notices the pronouns of items listed in room descriptions and inventory, so that for instance the last inventory item mentioned will usually wind up being considered "it". If we would like to turn off this behavior, we may say

	Use Manual Pronouns.

It may then be useful to set the pronoun ourselves sometimes, with "have the parser notice...". Otherwise, the parser will assign pronouns only for nouns the player uses in commands.

Example: * Floral Greetings - An example bouquet of flowers.

	*: "Floral Greetings"

	Include Plurality by Emily Short.

	The Doghouse is a room. "Not so much a place as a state of being."

	The player carries a ticket to the opera, some papers, and a bouquet of flowers. The bouquet is ambiguously plural.

	Instead of eating something inedible, say "[The noun] [is-are] not going to agree with you at all. You'd be wiser to leave [it-them] alone."

	Instead of touching something: say "[Cap that-those of noun] [is-are] all prickly."

	Instead of smelling something: say "Your nose is too weak to get much smell from [that-those of noun]."

	Instead of smelling the bouquet: say "[Cap it-they of the noun] [is-are] lovely."

	Test me with "x ticket / eat it / eat them / touch it / touch them / smell it / smell them / x papers / eat it / eat them / x bouquet / eat it / eat them".
