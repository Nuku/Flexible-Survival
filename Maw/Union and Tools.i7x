Union and Tools by Maw begins here.

Improved Tools is a Research.
The description of it is "Wooden mallets keep breaking! We could use intense heat and large basins of water to flash-cool hammerheads and make them into super-hardened steel. (Build time -10%)".
The cost of it is 75.
The completion of it is Improved Tools Rule.
The validation of it is improvtool rule.

This is the improvtool rule:
	if well is complete, rule succeeds;
	rule fails;

This is the Improved Tools rule:
	say "Your build time is now 10% faster! The builders rejoice with the new hammers!";

Unionized is a Research.
The description of it is "Your builders are quite expensive to use, this research will help us to form a union for the workers. They have agreed to a 20% cut in costs for the ability to form a union. (Builder cost -20%)".
The cost of it is 100.
The completion of it is Unionized Rule.
The validation of it is the unionvailable rule.

This is the unionvailable rule:
	if public relations is complete, rule succeeds;
	rule fails;

This is the Unionized rule:
	say "Your builders have formed their union, you now pay less for their services as a result.";

Union and Tools ends here.
