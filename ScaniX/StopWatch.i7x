StopWatch by ScaniX begins here.

start stopwatch is an action applying to nothing.
To start stopwatch:
	(- 
		if (glk_gestalt(gestalt_DateTime, 0)) {
			print "Stopwatch started.@@10";
			glk_current_time(stopWatchStartTime);
		} else {
			print "No Stopwatch available.@@10";
		}
	-);

stop stopwatch is an action applying to nothing.
To stop stopwatch:
	(-
		if (glk_gestalt(gestalt_DateTime, 0)) {
			print "StopWatch: ", readStopWatch(), "ms.@@10";
		} else {
			print "No StopWatch available.@@10";
		}
	-)

Include (-
Array stopWatchStartTime --> 3;   ! this holds the number of microseconds elapsed since midnight on January 1, 1970, GMT/UTC
Array currentTime --> 3;   ! this holds the number of microseconds elapsed since midnight on January 1, 1970, GMT/UTC
[ readStopWatch;
	! you would get fired for this calculation in real life, but for stopping the time over short periods (some hours ^^) this should be fine
	glk_current_time(currentTime);
	return (currentTime-->1 - stopWatchStartTime-->1) * 1000 + (currentTime-->2 - stopWatchStartTime-->2) / 1000;
];
-)
	
StopWatch ends here.
