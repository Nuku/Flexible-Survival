Version 1 of Notes by Core Mechanics begins here.
[ Version 1 - Allows the player to note down stuff in their journal]

WriteANote is an action applying to nothing.

To get a long line of input:
	(- GetLongInput(); -).

To decide what text is the/-- current long line of input:
	(- DecideLongInput({-new:text}) -).

Include (-

Constant LONG_BUFFER_LEN = 500;
Array long_buffer buffer LONG_BUFFER_LEN;

[ GetLongInput done;
	done = false;
	glk_request_line_event(gg_mainwin,long_buffer+WORDSIZE,LONG_BUFFER_LEN-WORDSIZE,0);
	while (~~done) {
		glk_select(gg_event);
		switch (gg_event-->0) {
			5: ! evtype_Arrange
			DrawStatusLine();
			3: ! evtype_LineInput
			if (gg_event-->1 == gg_mainwin) {
				long_buffer-->0 = gg_event-->2;
				done = true;
			}
		}
	}
];

[ DecideLongInput txt;
	TEXT_CopyFromByteArray(txt,long_buffer+WORDSIZE,long_buffer-->0);
	return txt;
];

! Taken from Unified Glulx Input
[ TEXT_CopyFromByteArray txt buf len ubuf ix;
	TEXT_TY_Transmute(txt);
	ubuf = VM_AllocateMemory((len+1)*WORDSIZE);
	for (ix=0 : ix<len : ix++) {
		ubuf-->ix = buf->ix;
	}
	ubuf-->len = 0;
	BlkValueMassCopyFromArray(txt,ubuf,4,len+1);
	VM_FreeMemory(ubuf);
];

-)

understand "write a note" as WriteANote.
understand "write note" as WriteANote.

check WriteANote:
	if journal is not owned:
		say "     Sadly, you do not have a journal to note things down in.";

carry out WriteANote:
	say "[bold type]You open your journal and write...[roman type][line break][line break]";
	get a long line of input;
	let DayCount be (240 - turns ) divided by 8;
	choose a blank row in the table of JournalNotes;
	now Date entry is Daycount;
	now Note entry is the current long line of input;

BroweseNotes is an action applying to nothing.

understand "browse through your notes" as BroweseNotes.
understand "browse my notes" as BroweseNotes.
understand "browse notes" as BroweseNotes.

check BroweseNotes:
	if journal is not owned:
		say "     Sadly, you do not have a journal.";

carry out BroweseNotes:
	if the number of filled rows in the Table of JournalNotes is 0:
		say "     You open your journal and page through it, but it seems like you currently do not have any special notes.";
	else:
		say "     You open your journal and page through it, eventually finding your special notes:[line break][line break]";
		sort the Table of JournalNotes in Date order;
		repeat with X running from 1 to number of filled rows in the Table of JournalNotes:
			choose row X from the Table of JournalNotes;
			say "[bracket][link]X[as]crossoutnote [X][end link][close bracket] Day [Date entry]: [Note entry][line break]";

CrossOutNote is an action applying to one number.

understand "crossoutnote [a number]" as CrossOutNote.

check CrossOutNote:
	if journal is not owned:
		say "     Sadly, you do not have a journal.";

carry out CrossOutNote:
	choose row number understood in the Table of JournalNotes;
	blank out the whole row;
	sort the Table of JournalNotes in Date order;
	say "     You cross out and scribble over the note, making it impossible to understand.";

TearNotes is an action applying to nothing.

understand "rip out notes" as TearNotes.
understand "rip my notes" as TearNotes.
understand "rip notes" as TearNotes.
understand "tear out notes" as TearNotes.
understand "tear my notes" as TearNotes.
understand "tear notes" as TearNotes.

check TearNotes:
	if journal is not owned:
		say "     Sadly, you do not have a journal.";

carry out TearNotes:
	if the number of filled rows in the Table of JournalNotes is 0:
		say "     Since you have no special notes to speak of, you hold back from ripping out any pages. The book only has a limited number of them, after all.";
	else:
		say "     You open your journal and grab the last few pages, ripping them out and shredding them to little pieces. Who needs notes anways?![line break][line break]";
		blank out the whole of Table of JournalNotes; [empty out all data]


Notes ends here.
