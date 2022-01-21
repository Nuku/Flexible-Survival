Version 1 of Misc Pieces by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

To decide which number is numeric/numerical value of (T - indexed text):
	let S be 1;
	let L be the number of characters in T;
	if L is 0, decide on 0;
	let negated be false;
	if character number 1 in T is "-" begin;
		let negated be true;
		let S be 2;
	end if;
	let result be 0;
	repeat with N running from S to L begin;
		let C be character number N in T;
		let D be 0;
		if C is "1" begin; let D be 1; else if C is "2"; let D be 2;
		else if C is "3"; let D be 3; else if C is "4"; let D be 4;
		else if C is "5"; let D be 5; else if C is "6"; let D be 6;
		else if C is "7"; let D be 7; else if C is "8"; let D be 8;
		else if C is "9"; let D be 9; else if C is "0"; let D be 0;
		else; decide on 0; end if;
		let result be (result * 10) + D;
	end repeat;
	if negated is true, let result be 0 - result;
	decide on result.

keychar is a text that varies.

To translate (k - a number):
	if k is 13 or k is -6:
		now keychar is "return";
	else if k is 31 or k is 32:
		now keychar is " ";
	else if k is 48:
		now keychar is "0";
	else if k is 49:
		now keychar is "1";
	else if k is 50:
		now keychar is "2";
	else if k is 51:
		now keychar is "3";
	else if k is 52:
		now keychar is "4";
	else if k is 53:
		now keychar is "5";
	else if k is 54:
		now keychar is "6";
	else if k is 55:
		now keychar is "7";
	else if k is 56:
		now keychar is "8";
	else if k is 57:
		now keychar is "9";
	else if k is 65 or k is 97:
		now keychar is "a";
	else if k is 66 or k is 98:
		now keychar is "b";
	else if k is 67 or k is 99:
		now keychar is "c";
	else if k is 68 or k is 100:
		now keychar is "D";
	else if k is 69 or k is 101:
		now keychar is "E";
	else if k is 70 or k is 102:
		now keychar is "F";
	else if k is 71 or k is 103:
		now keychar is "G";
	else if k is 72 or k is 104:
		now keychar is "H";
	else if k is 73 or k is 105:
		now keychar is "I";
	else if k is 74 or k is 106:
		now keychar is "J";
	else if k is 75 or k is 107:
		now keychar is "K";
	else if k is 76 or k is 108:
		now keychar is "L";
	else if k is 77 or k is 109:
		now keychar is "M";
	else if k is 78 or k is 110:
		now keychar is "N";
	else if k is 79 or k is 111:
		now keychar is "O";
	else if k is 80 or k is 112:
		now keychar is "P";
	else if k is 81 or k is 113:
		now keychar is "Q";
	else if k is 82 or k is 114:
		now keychar is "R";
	else if k is 83 or k is 115:
		now keychar is "S";
	else if k is 84 or k is 116:
		now keychar is "T";
	else if k is 85 or k is 117:
		now keychar is "U";
	else if k is 86 or k is 118:
		now keychar is "V";
	else if k is 87 or k is 119:
		now keychar is "W";
	else if k is 88 or k is 120:
		now keychar is "X";
	else if k is 89 or k is 121:
		now keychar is "Y";
	else if k is 90 or k is 122:
		now keychar is "Z";
	else:
		now keychar is "INVALID";

Misc Pieces ends here.
