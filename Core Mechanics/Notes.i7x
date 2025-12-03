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
	glk_cancel_hyperlink_event(gg_mainwin);
	glk_cancel_hyperlink_event(gg_statuswin);
	glk_request_line_event(gg_mainwin,long_buffer+WORDSIZE,LONG_BUFFER_LEN-WORDSIZE,0);
	while (~~done) {
		glk_select(gg_event);
		switch (gg_event-->0) {
			5: ! evtype_Arrange
			DrawStatusLine();
			3: ! evtype_LineInput
			if (gg_event-->1 == gg_mainwin) {
				long_buffer-->0 = gg_event-->2;
				glk_request_hyperlink_event(gg_mainwin);
				glk_request_hyperlink_event(gg_statuswin);
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

understand "write a/-- note" as WriteANote.

check WriteANote:
	if journal is not owned:
		say "     Sadly, you do not have a journal to note things down in." instead;

carry out WriteANote:
	say "[bold type]You open your journal and write...[roman type][line break][line break]";
	get a long line of input;
	if "[current long line of input]" is not "":
		let DayCount be (240 - turns ) divided by 8; [starting turn (240) minus current turn divided by 8 (the amount of turns in a day)]
		choose a blank row in the table of JournalNotes;
		now Date entry is Daycount;
		if debugactive is 1:
			say "date: [Date entry] daycount: [Daycount]";
		now Note entry is the current long line of input;

BroweseNotes is an action applying to nothing.

understand "browse through/-- your/my/-- notes" as BroweseNotes.

check BroweseNotes:
	if journal is not owned:
		say "     Sadly, you do not have a journal." instead;

carry out BroweseNotes:
	let tdays be "days";
	let tmonths be "months";
	let tyears be "years";
	if the number of filled rows in the Table of JournalNotes is 0:
		say "     You open your journal and page through it, but it seems like you currently do not have any special notes.";
	else:
		say "You open your journal and page through it, eventually finding your special notes:[line break]";
		say "Type [bold type]crossoutnote <number>[roman type] to [bold type][bracket]X[close bracket][roman type]Cross out a note.";
		LineBreak;
		sort the Table of JournalNotes in Date order;
		repeat with X running from 1 to number of filled rows in the Table of JournalNotes:
			choose row X from the Table of JournalNotes;
			linkfind "crossoutnote [X]"; [sets hyperindex to the existing or added entry matching text]
			say "[if hypernull is not 1][set link hyperindex][bracket]X[close bracket][terminate link] [end if]([X]) [Date entry converted to tmonths]/[Date entry converted to tdays]/[Date entry converted to tyears]: [Note entry][line break]";

CrossOutNote is an action applying to one number.

understand "crossoutnote [a number]" as CrossOutNote.

check CrossOutNote:
	if journal is not owned:
		say "     Sadly, you do not have a journal." instead;

carry out CrossOutNote:
	choose row number understood in the Table of JournalNotes;
	blank out the whole row;
	sort the Table of JournalNotes in Date order;
	say "     You cross out and scribble over the note, making it impossible to understand.";

TearNotes is an action applying to nothing.

understand "rip out/my/-- notes" as TearNotes.
understand "tear out/my/-- notes" as TearNotes.

check TearNotes:
	if journal is not owned:
		say "     Sadly, you do not have a journal." instead;

carry out TearNotes:
	if the number of filled rows in the Table of JournalNotes is 0:
		say "     Since you have no special notes to speak of, you hold back from ripping out any pages. The book only has a limited number of them, after all.";
	else:
		say "     You open your journal and grab the last few pages, ripping them out and shredding them to little pieces. Who needs notes anways?![line break][line break]";
		blank out the whole of Table of JournalNotes; [empty out all data]


Notes ends here.
