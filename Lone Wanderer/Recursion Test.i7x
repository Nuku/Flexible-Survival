Version 1 of Recursion Test by Lone Wanderer begins here.

to RecTest (N - number) with (M - number):
	if N is 0:
		[say "N is [N] | M is [M].";]
		increase M by 1;
		now M is M;
	else:
		[say "N is [N] | M is [M].";]
		now M is M + N;
		decrease N by 1;
		RecTest N with M;

Recursion Test ends here.