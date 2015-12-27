Bound State Universals by Core Mechanics begins here.

Section 1 - Routines

to cleanboundmemory: [Zeroes out all variables used in bound states]
	now boundstate is false;
	now pewterbodyocc is 0;
	now pewterheadocc is 0;
	now pewtercockocc is 0;
	now pewterassocc is 0;
	now pewtercuntocc is 0;
	now pewterheadvar1 is 0;
	now pewterheadvar2 is 0;
	now pewterheadvar3 is 0;
	now pewtercockvar1 is 0;
	now pewtercockvar2 is 0;
	now pewtercuntvar1 is 0;
	now pewtercuntvar2 is 0;
	now pewterassvar1 is 0;
	now pewterassvar2 is 0;
	now struggleatt is 0;
	now wyvkinocc is 0;
	now wyvkin1att is 0;
	now wyvkin2att is 0;
	now wyvkin3att is 0;
	now wyvkin4att is 0;
	now wyvkin1lib is 0;
	now wyvkin2lib is 0;
	now wyvkin3lib is 0;
	now wyvkin4lib is 0;
	now wyvkin1gen is 0;
	now wyvkin2gen is 0;
	now wyvkin3gen is 0;
	now wyvkin4gen is 0;
	now wyvkinassign is 0;
	now wyvkinatt is 0;
	now lustatt is 0;
	now bsextimer is 0;
	now boundcounter is 0;
	now boundmod is 0;
	now obliging is false;
	now boundrecover is false;
	now recoverchance is -1;
	now enduring is false;
	now boundsegment is 0;
	now pewterheadcap is 0;
	now pewterbodycap is 0;
	now pewtergenitalcap is 0;
	
to wyvhumanityroll: [Pending a rename -- it's used in all standard vore sanity rolls]
	now tempnum is ((hunger of player + thirst of player) / 2) / 10;
	if tempnum < 1, now tempnum is 1;
	let endurvariance be 1;
	if enduring is true, now endurvariance is 2;
	decrease humanity of player by (((5 * tempnum) + (psycheadjust * tempnum)) - 2 ) / endurvariance;
	
Section 2 - Templates

[Not Yet Implemented!]

Bound State Universals ends here.
