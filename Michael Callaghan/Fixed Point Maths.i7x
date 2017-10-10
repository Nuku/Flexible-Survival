Version 4 of Fixed Point Maths (for Glulx only) by Michael Callaghan begins here.

Chapter 1 - Basic definitions

Section 1 - Defining a fixed point number

[A real number is a kind of value.  -999999.9999 specifies a real number with parts whole and fractional.]

The specification of a real number is "Represents a fixed point number in the range -214748.3648 to 214748.3647."

Section 2 - Constants for precision

Precision is a number that varies.  Precision is 4.
Divisor is a number that varies.  Divisor is 10000.
HalfDivisor is a number that varies.  HalfDivisor is 4999.
[Pi is a real number that varies.  Pi is 3.1416.]

Chapter 2 - Internal functions

Section 1 - Printing a fixed point number

To say (N - a real number) as a number:
	if N is negative:
		say "-[the absolute value of N]";
	else:
		say "[N]".

Section 2 - Finding the greater part of a number

To decide which number is the greater part of (N - a number):
	decide on N divided by Divisor.

Section 3 - Finding the lesser part of a number

To decide which number is the lesser part of (N - a number):
	decide on the remainder after dividing N by Divisor.

Section 4 - Finding the aggregate of a number

To decide which number is the aggregate of (N - a real number):
	let temp be N to the nearest whole number;
	let temp be temp times Divisor;
	let temp be temp plus N - N to the nearest whole number;
	decide on temp.

Chapter 3 - Basic functions to convert numbers

Section 1 - Int function converts to the nearest integer

[To decide which number is (N - a real number) as an integer:
	let result be the whole part of N;
	let temp1 be the absolute value of N;
	let temp2 be the fractional part of temp1;
	if temp2 is greater than HalfDivisor:
		if result is greater than 0:
			let result be result plus 1;
		if result is 0:
			let result be result plus 1;
		if result is less than 0:
			let result be result minus 1;
	decide on result.
]
Section 2 - Round up (rounds up to nearest integer)

To decide which number is (N - a real number) rounded up:
	decide on N to the nearest whole number.

Section 3 - Round down (rounds down to the nearest integer)

To decide which number is (N - a real number) rounded down:
	decide on N to the nearest whole number.

[Section 4 - Absolute value of a fixed point number (converts negatives to positives)

To decide which real number is the absolute value of (N - a real number):
	let temp1 be the whole part of N;
	let temp2 be the fractional part of N;
	if N is negative:
		let temp1 be the absolute value of temp1;
		let temp2 be the absolute value of temp2;
	let result be the real number with whole part temp1 fractional part temp2;
	decide on result.

Section 5 - Absolute value of a number (converts negatives to positives)

To decide which number is the absolute value of (N - a number):
	if N is less than 0:
		let N be 0 minus N;
	decide on N.
]
Section 6 - Convert number to floating point

To decide which real number is (N - a number) as a fixed point number:
	let result be N + 0.0;
	decide on result.

Section 7 - Change the sign of a fixed point number

[To decide which real number is the reverse/negation of (N - a real number):
	let temp1 be 0 minus the whole part of N;
	let temp2 be 0 minus the fractional part of N;
	let result be the real number with whole part temp1 fractional part temp2;
	decide on result.
]
Section 8 - Change the sign of a number

To decide which number is the reverse/negation of (N - a number):
	let temp be 0 minus N;
	decide on temp.

Chapter 4 - Comparisons

Section 1 - Equals

To decide if (A - a real number) real equals (B - a real number):
	let temp1 be the aggregate of A;
	let temp2 be the aggregate of B;
	if temp1 is temp2:
		decide yes;
	decide no.

To decide if (A - number) real equals (B - real number):
	let temp be A as a fixed point number;
	if temp real equals B:
		decide yes;
	decide no.

To decide if (A - a real number) real equals (B - number):
	let temp be B as a fixed point number;
	if A real equals temp:
		decide yes;
	decide no.

Section 2 - Greater than

To decide if (A - a real number) is real greater than (B - a real number):
	let temp1 be the aggregate of A;
	let temp2 be the aggregate of B;
	if temp1 is greater than temp2:
		decide yes;
	decide no.

To decide if (A - a number) is real greater than (B - real number):
	let temp be A as a fixed point number;
	if temp is real greater than B:
		decide yes;
	decide no.

To decide if (A - a real number) is real greater than (B - a number):
	let temp be B as a fixed point number;
	if A is real greater than temp:
		decide yes;
	decide no.

Section 3 - Less than

To decide if (A - a real number) is real less than (B - a real number):
	let temp1 be the aggregate of A;
	let temp2 be the aggregate of B;
	if temp1 is less than temp2:
		decide yes;
	decide no.

To decide if (A - a number) is real less than (B - a real number):
	let temp be A as a fixed point number;
	if temp is real less than B:
		decide yes;
	decide no.

To decide if (A - a real number) is real less than (B - a number):
	let temp be B as a fixed point number;
	if A is real less than temp:
		decide yes;
	decide no.

Section 4 - Deciding if a fixed point number is negative

To decide if (N - a real number) is negative:
	if N < 0, decide yes;
	decide no.

Chapter 5 - Addition

Section 1 - Addition of two fixed point numbers

To decide which real number is (A - a real number) real plus (B - a real number):
	decide on A + B.

Section 2 - Addition of a fixed point number and an integer

To decide which real number is (A - a real number) real plus (B - a number):
	let temp be B as a fixed point number;
	decide on A real plus temp.

To decide which real number is (A - a number) real plus (B - a real number):
	let temp be A as a fixed point number;
	decide on temp real plus B.

Chapter 6 - Subtraction

Section 1 - Subtraction of two fixed point numbers

To decide which real number is (A - a real number) real minus (B - a real number):
	decide on A - B.

Section 2 - Subtraction of a fixed point number and an integer

To decide which real number is (A - a real number) real minus (B - a number):
	decide on A - B.

To decide which real number is (A - a number) real minus (B - a real number):
	decide on A - B.

Chapter 7 - Multiplication

Section 1 - Multiplication of two fixed point numbers

To decide which real number is (A - a real number) real times (B - a real number):
	decide on A * B;

Section 2 - Multiplication of a number and a fixed point number

To decide which real number is (A - a number) real times (B - a real number):
	let temp be A as a fixed point number;
	decide on temp real times B.

To decide which real number is (A - a real number) real times (B - a number):
	let temp be B as a fixed point number;
	decide on A real times temp.

Chapter 8 - Division

Section 1 - Division of one fixed point number by another fixed point number

To decide which real number is (A - a real number) real divided by (B - a real number):
	decide on A / B;

Section 2 - Division of one fixed point number by an integer

To decide which real number is (A - a real number) real divided by (B - a number):
	let temp be B as a fixed point number;
	decide on A real divided by temp.

Section 3 - Division of one number by a fixed point number

To decide which real number is (A - a number) real divided by (B - a real number):
	let temp be A as a fixed point number;
	decide on temp real divided by B.

Chapter 9 - Some mathematical functions

Section 1 - Inverse

To decide which real number is the inverse of (N - a real number):
	let temp be 1 real divided by N;
	decide on temp.

To decide which real number is the inverse of (N - a number):
	let temp be N as a fixed point number;
	decide on the inverse of temp.

Section 2 - Factorial

To decide which number is the factorial of (N - a number):
	let temp be N;
	let result be 1;
	if temp is not 1:
		let temp1 be the factorial of (temp - 1);
		let result be temp times temp1;
	decide on result.

Section 3 - Simple powers

[To decide which real number is (A - a real number) to the power (B - a number):
	let result be 1.0000;
	repeat with X running from 1 to B:
		let result be result real times A;
	decide on result.
]
[To decide which number is (A - number) to the power (B - a number):
	let result be 1;
	repeat with X running from 1 to B:
		let result be result times A;
	decide on result.
]
To decide which real number is (A - a real number) squared:
	decide on A to the power 2.

[To decide which number is (A - a number) squared:
	decide on A to the power 2.
]
To decide which real number is (A - a real number) cubed:
	decide on A to the power 3.

[To decide which number is (A - a number) cubed:
	decide on A to the power 3.
]
Section 4 - Square roots

To decide which real number is the real square root of (N - a real number):
	if N real equals 0.0000:
		decide on 0.0000;
	if N is real less than 0.0000:
		decide on 0.0000;
	let result be N real divided by 2.0000;
	let previous be result;
	repeat with X running from 1 to 50:
		let temp1 be result real divided by 2.0000;
		let temp2 be result real times 2.0000;
		let temp2 be N real divided by temp2;
		let result be temp1 real plus temp2;
		let factor be result real minus previous;
		let factor be the absolute value of factor;
		if factor is real less than 0.0002:
			decide on result;
		let previous be result;
	decide on result.

To decide which real number is the real square root of (N - a number):
	let temp be N as a fixed point number;
	decide on the real square root of temp.

Section 5 - Degrees to radians and radians to degrees

To decide what real number is (N - a real number) in radians:
	let temp be N times 3.14;
	let temp be temp real divided by 180.0000;
	decide on temp.

To decide what real number is (N - a number) in radians:
	let temp be N as a fixed point number;
	decide on temp in radians.

To decide what real number is (N - a real number) in degrees:
	let temp be N times 57.2958;
	let angle be temp to the nearest whole number;
	let decimal be temp to the nearest whole number - temp;
	let temp1 be decimal real divided by 1000.0000;
	let temp2 be temp1 rounded up;
	if temp2 is 10:
		let temp2 be 0;
		let angle be angle plus 1;
	else:
		let temp2 be temp2 times 1000;
	let result be angle  to the nearest whole number + temp2 - temp2 to the nearest whole number;
	decide on result.

To decide what real number is (N - a number) in degrees:
	let temp be N as a fixed point number;
	decide on temp in degrees.

Section 6 - Sines

To decide what real number is the sine of (N - a real number):
	while N is negative:
		let N be N real plus 360.0000;
	while N is real greater than 360.0000:
		let N be N real minus 360.0000;
	if N real equals 0.0000:
		decide on 0.0000;
	if N real equals 90.0000:
		decide on 1.0000;
	if N real equals 180.0000:
		decide on 0.0000;
	if N real equals 270.0000:
		decide on -1.0000;
	if N real equals 360.0000:
		decide on 0.0000;
	let adjustsign be false;
	if N is real greater than 180.0000:
		let N be N real minus 180.0000;
		let adjustsign be true;
	if N is real greater than 90.0000:
		let N be 180.0000 - N;
	let temp be N in radians;
	let result be temp;
	let sign be -1;
	repeat with X running from 3 to 7:
		let temp1 be temp to the power X;
		let temp2 be the factorial of X;
		let temp3 be temp2 as a fixed point number;
		let temp1 be temp1 real divided by temp3;
		if sign is -1:
			let result be result real minus temp1;
			let sign be the reverse of sign;
		else:
			let result be result real plus temp1;
			let sign be the reverse of sign;
[		increase X by 1;]
	if adjustsign is true:
		let result be 0 - result;
	decide on result.

To decide what real number is the sine of (N - a number):
	let temp be N as a fixed point number;
	decide on the sine of temp.

To decide what real number is the arcsine of (N - a real number):
	if N real equals 0.0000:
		decide on 0.0000;
	if N real equals -1:
		decide on -90.0000;
	if N real equals 1:
		decide on 90.0000;
	let temp be the absolute value of N;
	if temp is real greater than 1.0000:
		decide on 0.0000;
	let temp1 be 1 real minus N;
	let temp1 be the real square root of temp1;
	let temp2 be 1.5707;
	let temp3 be -0.2121 real times N;
	let temp2 be temp2 plus temp3;
	let temp3 be N to the power 2;
	let temp3 be temp3 real times 0.0743;
	let temp2 be temp2 real plus temp3;
	let temp3 be N to the power 3;
	let temp3 be temp3 real times 0.0187;
	let temp2 be temp2 real minus temp3;
	let temp1 be temp1 real times temp2;
	let temp1 be 1.5708 real minus temp1;
	decide on temp1 in degrees.

Section 7 - Cosines

To decide what real number is the cosine of (N - a real number):
	let temp be N real plus 90.0000;
	decide on the sine of temp.

To decide what real number is the cosine of (N - a number):
	let temp be N as a fixed point number;
	let temp be temp real plus 90.0000;
	decide on the sine of temp.

To decide what real number is the arccosine of (N - a real number):
	let result be the arcsine of N;
	decide on 90.0000 real minus result.

Section 8 - Tangents

To decide what real number is the tangent of (N - a real number):
	let temp1 be the sine of N;
	let temp2 be the cosine of N;
	let result be temp1 real divided by temp2;
	decide on result.

To decide what real number is the tangent of (N - a number):
	let temp be N as a fixed point number;
	decide on the tangent of temp.

To decide what real number is the arctangent of (N - a real number):
	let result be a real number;
	if N real equals 0.0000:
		decide on 0.0000;
	if N real equals 1.0000:
		decide on 45.0000;
	if N real equals -1.0000:
		decide on -45.0000;
	let temp be the absolute value of N;
	if temp is real greater than 1.0000:
		let temp1 be N to the power 2;
		let temp1 be temp1 real plus 0.2809;
		let  temp1 be N real divided by temp1;
		let result be 1.5708 - temp1;
	else:
		let temp1 be N real times 0.2809;
		let temp1 be temp1 real times N;
		let temp1 be temp1 real plus 1.0000;
		let result be N real divided by temp1;
	decide on result in degrees.

To decide what real number is the arctangent of (N - a number):
	let temp be N as a fixed point number;
	decide on the arctangent of temp.

Section 9 - Natural logarithms

To decide what real number is the natural log of (N - a real number):
	if N real equals 0.0000:
		decide on 0.0000;
	if N is real less than 0.0000:
		decide on 0.0000;
	let temp1 be N real minus 1;
	let temp2 be N real plus 1;
	let temp be temp1 real divided by temp2;
	let result be temp;
	repeat with X running from 3 to 7:
		let temp1 be temp to the power X;
		let temp2 be X as a fixed point number;
		let temp1 be temp1 real divided by temp2;
		let result be result real plus temp1;
[		increase X by 1;]
	let result be result real times 2;
	decide on result.

To decide what real number is the natural log of (N - a number):
	let temp be N as a fixed point number;
	decide on the natural log of temp.

Section 10 - Exponential function

To decide what real number is e to the power (N - a real number):
	let result be 1.0000;
	repeat with X running from 1 to 7:
		let temp1 be N to the power X;
		let temp2 be the factorial of X;
		let temp1 be temp1 real divided by temp2;
		let result be result real plus temp1;
	decide on result.

To decide what real number is e to the power (N - a number):
	let temp be N as a fixed point number;
	decide on e to the power temp.

Chapter 10 - Converting text to a real number

Section 1 - Flag for invalid conversion

Invalid conversion is a truth state that varies.
Invalid conversion is false.

Section 2 - Conversion routine

To decide which real number is the number derived from (T - indexed text):
	if T is  "":
		now invalid conversion is true;
		decide on 0 as a fixed point number;
	replace the regular expression " " in T with "";
	let negative flag be false;
	let dec part be true;
	let result be a number;
	let first be a number;
	let second be a number;
	let second part test  be true;
	let length be the number of characters in T;
	let multiplier be 1;
	repeat with N running from 0 to length minus 1:
		let pos be length minus N;
		let matched be false;
		let test char be character number pos in T;
		if test char is "-":
			unless pos is 1:
				now invalid conversion is true;
				decide on 0 as a fixed point number;
			let negative flag be true;
			let matched be true;
		if test char is "+":
			unless pos is 1:
				now invalid conversion is true;
				decide on 0 as a fixed point number;
			let matched be true;
		if test char is ".":
			let second be result;
			let second part test be false;
			if multiplier is less than divisor:
				now invalid conversion is true;
				decide on 0 as a fixed point number;
			let result be 0;
			let multiplier be 1;
			let matched be true;
		if test char is "0":
			let multiplier be multiplier times 10;
			let matched be true;
		if test char is "1":
			let result be multiplier plus result;
			let multiplier be multiplier times 10;
			let matched be true;
		if  test char is "2":
			let result be 2 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if  test char is "3":
			let result be 3 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if  test char is "4":
			let result be 4 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if  test char is "5":
			let result be 5 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if  test char is "6":
			let result be 6 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if  test char is "7":
			let result be 7 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if  test char is "8":
			let result be 8 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if  test char is "9":
			let result be 9 times multiplier plus result;
			let matched be true;
			let multiplier be multiplier times 10;
		if matched is false:
			now invalid conversion is true;
			decide on 0 as a fixed point number;
		if second part test is true:
			if multiplier is greater than divisor:
				now invalid conversion is true;
				decide on 0 as a fixed point number;
	let first be result;
	let final result be first to the nearest whole number + second - second to the nearest whole number;
	if negative flag is true:
		let final result be the negation of final result;
	now invalid conversion is false;
	decide on final result.

Fixed Point Maths ends here.

---- DOCUMENTATION ----

Fixed point maths is an extension to permit simple mathematical operations to be carried out on fixed point numbers.

Chapter : About Fixed Point Maths

Section : Introduction

Inform 7 allows the use of integer numbers and their addition, subtraction, multiplication and division.  Division is limited to returning an integer result and, separately, a remainder.  If we want to use more complex mathematical functions or non-integer numbers, there is no in-built facility to do so.

Section : About this extension

This extension allows us to use fixed point numbers in Inform 7, such as 12.2344.  It includes a modest range of mathematical functions using fixed point numbers and, where appropriate, their equivalents for integer numbers.  Details of the functions provided are set out in this documentation.

Section : How the extension works

Although Inform 7 allows only the use of integers, a number can be divided into two parts.  See Chapter 14 of the manual.  Therefore, we can use this flexibility to create fixed point numbers with an integer and a decimal part.

Section : Precision and range

Fixed point maths is set up for use with numbers that have four decimal places.  The range of numbers supported is -214748.3648 to 214748.3647.  Note that because we are using four decimal places and numbers only in the range -214748.3658 to 214748.3647, some functions can become subject to significant rounding errors when using very large or very small values.

Section : Defining fixed point numbers

When we are writing a fixed point number in Inform 7, we have to include all four decimal places, even if they are zeros.  For example, if we want the number 12.5 as a fixed point number, we write 12.5000.

Fixed point numbers are a kind of value called real number.  Therefore, we can create variables of this form in the following way:

	TwoPi is a real number that varies.  TwoPi is 6.2832.

Section : Saying fixed point numbers

Fixed point numbers can be negative.  There is a problem (as at version 5T18 of Inform 7) that causes negative numbers to be printed incorrectly where the number consists of parts.  Therefore, this extension uses a modified form of say statement with fixed point numbers.  We use the form 'X as a number' in the say statement.

	say "[TwoPi as a number]";
	say "[-1234.6789 as a number]".

The issue with printing negative numbers has been resolved with version 5Z71, so we can now simply say:

	say "[TwoPi]";
	say "[-1.2345]".

The old form "as a number" is being retained for backwards compatability.

Section : Error checking

This extension does not include error checking routines.  The most common error is division by 0.  As all division operations reduce to integer division equivalents, division by 0 will be trapped by Inform 7 in any event.  Overflow and underflow errors will not be checked so if you try to add, subtract, multiply or divide values and the results exceed the limits of the extensions precision, the results may not be as expected.

If you try to calculate the square root or log of a negative number, the result will always be 0.

Section : Credits

Thanks to Ron Newcomb and Mike Tarbert for their helpful comments that have helped to improve this extension.  Any errors and omissions remain with the author.

Section : Version history

Version 4 - 16 June 2010: Deprecated features removed from Example B.

Version 3 - 1 August 2009: Allows for text to be converted to a real number.

Version 2 - 22 June 2009: Version numbering changed to prevent problems installing and using the extension under Inform 7.

Version 1.2 - 27 April 2009: Note added to indicate that real numbers can now be printed using simple say statements.  Square root function renamed real sqaure root to avoid clashes with the new (integer based) square root in version 5Z71.

Version 1.1 - 14 September 2008: Small change to enable "The Classroom" to compile under 5U92.

Version 1.0 - 25 July 2008: First public release of Fixed Point Maths.

Chapter : Converting between number systems

Section : Finding the corresponding integer from a fixed point number

We can convert a fixed point number to an integer number using the phrase 'X as an integer'.

	let val be 12.5678 as an integer.

This takes a fixed point number and turns it into the nearest integer.  For example 2.1 becomes 2.  3.5611 becomes 4.  -1.2345 becomes -1 and -1.7823 becomes -2.

0.5 is used as the boundary for rounding up or down so 12.4999 or below will round down to 12 and 12.5000 or above will round up to 13.

Section : Rounding up a fixed point number to an integer

We can convert a fixed point number to the next highest integer using the phrase 'X rounded up'.

	let val be 12.0012 rounded up.

This always rounds away from 0.  For example 2.1000 becomes 3 and -5.0123 becomes -6.

Section : Rounding down a fixed point number to an integer

We can convert a fixed point number to the next lowest integer using the phrase 'X rounded down'.

	let val be 12.0012 rounded down.

This always rounds towards 0.  For example 2.8888 becomes 2 and -5.7878 becomes -5.

Section : Absolute value of a number

We can find the absolute value of a number using the phrase 'the absolute value of X'.

	let val be the absolute value of -12.3456;
	let val be the absolute value of -45;

The function leaves positive values unchanged and converts negative numbers to their positive equivalent.  -12.3456 becomes 12.3456, etc.  This function works for both fixed point and integer numbers.

Section : Convert an integer to a fixed point number

We can convert an integer to a fixed point number using the phrase 'X as a fixed point number'.

	let val be 5 as a fixed point number.

This converts 5 to 5.0000.

Section : Changing the sign of a number

We can change a positive number to a negative number and a negative number to a positive number using either of the phrases 'the reverse of X' or 'the negation of X'.

	let val be the reverse of 25;
	let val be the negation of 25;
	let val be the reverse of -12.345;
	let val be the negation of -12.345.

This converts 25 to -25 and -12.345 to 12.345.  This function works for both fixed point and integer numbers.

Chapter : Comparisons between fixed point numbers

Section : Testing if two fixed point numbers are equal

If we want to test if two fixed point numbers are equal we use the phrase 'if X real equals Y'

	if val1 real equals val2:
		say "val1 is equal to val2".

We can also substitute an integer number on one side or other of the phrase but not on both sides.

Section : Testing if one fixed point number is greater than a second fixed point number

If we want to test if one fixed point number is greater than a second fixed point number we use the phrase 'if X is real greater than Y'

	if val1 is real greater than val2:
		say "val1 is greater than val2".

We can also substitute an integer number on one side or other of the phrase but not on both sides.

Section : Testing if one fixed point number is less than a second fixed point number

If we want to test if one fixed point number is less than a second fixed point number we use the phrase 'if X is real less than Y'

	if val1 is real less than val2:
		say "val1 is less than val2".

We can also substitute an integer number on one side or other of the phrase but not on both sides.

Section : Testing if a fixed point number is less than 0

If we want to test whether a fixed point number is less than 0, we use the phrase 'if X is negative'.

	if val1 is negative:
		say "val1 is less than 0".

We need a separate function for this as a fixed point number is made up of two number parts.  -0.2333 contains the parts 0 and -2333.  Testing only the first part of the number would give an incorrect result as it is not less than 0.

Chapter : Addition, subtraction, multiplication and division

Section : Addition

We add two floating point numbers using the phrase 'X real plus Y'.

	let val1 be 12.3333 real plus 45.4555;
	let val1 be 2 real plus -3.3333;
	let val1 be val1 real plus 10.

As we can see from these examples, integer numbers can be used within fixed point addition.  The reason that we use real plus to designate fixed point addition is to avoid namespace clashes with the Inform 7 integer addition.

Section : Subtraction

We subtract two floating point numbers using the phrase 'X real minus Y'.

	let val1 be 12.3333 real minus 45.4555;
	let val1 be 2 real minus 3.3333;
	let val1 be val1 real minus 10.

As we can see from these examples, integer numbers can be used within fixed point subtraction.  The reason that we use real minus to designate fixed point subtraction is to avoid namespace clashes with the Inform 7 integer subtraction.

Section : Multiplication

We multiply two floating point numbers using the phrase 'X real times Y'.

	let val1 be 12.3333 real times 45.4555;
	let val1 be 2 real times -3.3333;
	let val1 be val1 real times 10.

As we can see from these examples, integer numbers can be used within fixed point multiplication.  The reason that we use real times to designate fixed point multiplication is to avoid namespace clashes with the Inform 7 integer multiplication.

Section : Division

We divide two floating point numbers using the phrase 'X real divided by Y'.

	let val1 be 12.3333 real divided by 45.4555;
	let val1 be 2 real divided by -3.3333;
	let val1 be val1 real divided by 10.

As we can see from these examples, integer numbers can be used within fixed point division.  The reason that we use real divided by to designate fixed point division is to avoid namespace clashes with the Inform 7 integer division.

Chapter : Additional functions

Section : Inverse

We can calculate the inverse (1/x) of a number using the phrase 'the inverse of X':

	let val be the inverse of 3.0000;
	let val be the inverse of 5.

We can use the inverse function with both fixed point numbers and integer numbers.

Section : Factorial

We can calculate the factorial of an integer number using the phrase 'the factorial of X'.

	let val be the factorial of 5.

Section : Simple powers

We can raise an integer number or a fixed point number to the power of a whole number using the phrase 'X to the power Y'.

	let val be 3 to the power 5;
	let val be 4.5555 to the power 4.

As a short cut for squares and cubes of numbers, we can use:

	let val be 4 squared;
	let val be 12.2222 cubed.

Section : Square roots

We can calculate the square root of a number using the phrase 'the real square root of N'.

	let val be the real square root of 5;
	let val be the real square root of 23.4566.

The method used to calculate the square root of a number is the Newton-Raphson iteration method.  If you try to calculate the square root of a negative number, the result is 0.0000.

Section : Degrees to radians and radians to degrees

We can convert an angle in degrees to the equivalent in radians using the phrase 'X in radians'.

	let val be 90 in radians.

This function works for both fixed point numbers and integer numbers.

We can convert an angle in radians to degrees using the phrase 'X in degrees'.

	let val be 1 in degrees;
	let val be 2.3456 in degrees.

This function works for both integer and real numbers.

Section : Sines

We can calculate the sine of an angle in degrees using the phrase 'the sine of X'

	let val be the sine of 30.5;
	let val be the sine of -120.

We can use fixed point numbers or integer numbers.

The method used to calculate the sine of a number is the Taylor expansion series for the sine of a number.  The angle is normalised into the range 0 to 360 degrees.  If the angle is 0, 90, 180, 270 or 360, the results 0, 1, 0, -1, 0 are returned.  If the angle is not one of these numbers, the angle is further normalised to 0 to 90 degrees, converted to radians and the result calculated from the Taylor Series for this angle.

We can calculate the arcsin of a number in the range -1 to 1 by using the phrase 'the arcsine of X'.  Values outside the range -1 to 1 will return the result 0.0000.

	let val be the arcsine of 0.2500.

The angle is returned in degrees to the nearest one tenth of a degree.

Section : Cosines

We can calculate the cosine of an angle in degrees using the phrase 'the cosine of X'

	let val be the cosine of 30.5;
	let val be the cosine of -120.

We can use fixed point numbers or integer numbers.

The cosine of an angle is calculated by adding 90 degrees to the angle and calculating the sine of the result.

Section : Tangents

We can calculate the tangent of an angle in degrees using the phrase 'the tangent of X'.

	let val be the tangent of 30.5;
	let val be the tangent of -120.

We can use fixed point numbers or integer numbers.

The tangent of an angle is calculated by dividing the sine of the angle by the cosine of the angle.

We can calculate the arctangent of a number by using the phrase 'the arctangent of X'.

	let val be the arctangent of 0.5000;
	let val be the arctangent of 1.

We can use fixed point number or integer numbers.  The result is returned as an angle to the nearest tenth of a degree.

Section : Natural logs

We can find the natural log (to base e) of a number by using the phrase 'the natural log of X':

	let val be the natural log of 10;
	let val be the natural log of 2.3456.

We can use fixed point numbers or integer numbers.  Calculating the natural log of a number equal to or less than 0 will return the result 0.0000.

Section : E to the power X

We can find the result of e (2.7183) to the power of a number by using the phrase 'e to the power X'.

	let val be e to the power 2.5;
	let val be e to the power 10.

We can use fixed point numbers or integer numbers.

Chapter : Converting text to a number

We can convert text to a real point number using the phrase, let X be the number derived from "text".  For example:

	let X be the number derived from "-12.2345".

If the text does not match the requirements for a real number, an internal flag, invalid conversion, is set to true.  We can use this flag to ensure that the text is a real number.

	let X be the number derived from "a123.1222":
	if invalid conversion is true:
		say "This is not  valid real number.  It must contain only digits and the characters '+ - and .'  There must be [precision] digits after the decimal point.";
	else:
		say "[X]".

Example: * The Classroom - Shows the use of the sine function

	*: "The Classroom" by Michael Callaghan

	Include Fixed Point Maths by Michael Callaghan.

	The classroom is a room.  A chalk board is in the classroom.  Understand "chalkboard" as the chalk board.

	Instead of examining the  chalk board:
		say "Someone has drawn a curve like a sine wave turned through 90 degrees.";
		repeat with angle running from 0 to 360:
			let val be the sine of angle;
			let val be 40 real times val;
			let plot be val as an integer;
			let plot be 40 plus plot;
			repeat with X running from 1 to plot:
				say " [run paragraph on]";
			let angle be angle plus 10;
			say "*[line break]".

	Test me with "x chalk board".

Example: *** Ballistics - Shows the use of real numbers in ballistic calculations

	*: "Ballistics" by Michael Callaghan

	Include Fixed Point Maths by Michael Callaghan.

	The Firing Range is a room.

	The large gun is in the firing range.  The description is "A large field artillery gun.  Towards the base of the gun you find a small brass handle that seems to be turnable.  By it is a note that says hit your target at a range of 1,918 metres.  You have 5 projectiles to fire.  When you are ready, simply fire the gun."

	The large gun has a number called angle.  The angle of the large gun is 12.
	The large gun has a number called projectiles.  The projectiles of the gun is 5.

	A brass handle is part of the large gun.  The description is "The brass handle can be turned to adjust the angle of the gun.  A pointer shows the angle that you have set.  It currently points to [angle of the large gun] degrees."

	Instead of turning the handle:
		say "Try turning the handle to a number."

	Instead of turning the gun:
		say "Try turning the handle to a number."

	Understand "turn [something] to [a number]" as adjusting it to.
	Understand "turn [something] to [a number] degrees" as adjusting it to.

	Adjusting it to is an action applying to one thing and one number.

	Check adjusting it to:
		if the noun is the gun:
			say "Try turning the handle to a number." instead.

	Check adjusting it to:
		if the number understood is less than 1 or the number understood is greater than 90:
			say "That is physically impossible.  The gun can be set to an angle from 1 to 90 degrees." instead.

	Carry out adjusting it to:
		now the angle of the gun is the number understood.

	Report adjusting it to:
		say "You turn the handle and set the angle of the gun to [angle of the gun] degrees."

	Understand "fire [something]" as firing.  Firing is an action applying to one thing.

	Check firing:
		if the noun is not the gun:
			say "Only the gun can be fired."

	Carry out firing:
		decrease the projectiles of the gun by 1;

	Report firing:
		say "The gun recoils violently and lets out a deep throated roar as the projectile is launched.";
		say "After a few seconds, you see the projectile land at [distance as an integer] metres.";
		if the distance as an integer is 1918:
			end the story finally saying "Congratulations, you have passed your basic field artillery exam.";
		if the distance as an integer is less than 10:
			say "The projectile goes straight up and comes down destroying both you and the gun.";
			end the story finally saying "You have failed in a spectacular way.";
		if the projectiles of the gun is 0:
			say "You are out of projectiles.";
			end the story finally saying "You have failed your basic field artillery exam."

	To decide what real number is distance:
		let velocity be 200.0000;
		let gravity be 9.8100;
		let cosangle be the cosine of the angle of the gun;
		let sinangle be the sine of the angle of the gun;
		let result be velocity real times cosangle;
		let result be result real divided by gravity;
		let temp1 be 4 real times gravity;
		let temp1 be temp1 real times sinangle;
		let temp2 be velocity real times sinangle;
		let temp2 be temp2 to the power 2;
		let temp1 be temp1 real plus temp2;
		let temp1 be the real square root of temp1;
		let result be result real times temp1;
		decide on result.

	Test me with "x gun / x handle / turn handle to 45 / fire gun / turn handle to 30 / fire gun / turn handle to 36 / fire gun / turn handle to 35 / fire gun".
