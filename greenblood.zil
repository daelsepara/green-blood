"Green Blood (ZIL)"

<CONSTANT GAME-BANNER "Green Blood|By David Morris and Mark Smith||Implemented in ZIL by SD Separa (2020)|">
<CONSTANT RELEASEID 1>
<VERSION XZIP>

<INSERT-FILE "parser">
<INSERT-FILE "prologue">
<INSERT-FILE "player">
<INSERT-FILE "story">

<CONSTANT F <>>
<CONSTANT NONE F>

<ROUTINE GO ()
    <INSTRUCTIONS>
    <CRLF>
    <SETG ,HERE ,PROLOGUE>
    <GAME-LOOP>>

<ROUTINE GAME-LOOP ("AUX" KEY)
    <REPEAT ()
        <CRLF>
        <GOTO ,HERE>
        <PRINT-PAGE>
        <SET KEY <PROCESS-STORY>>
        <COND (<EQUAL? .KEY !\q !\Q> <RETURN>)>
    >>

<ROUTINE PRINT-PAGE ("AUX" TEXT)
    <SET TEXT <GETP ,HERE ,P?STORY-TEXT>>
    <COND (.TEXT
        <CRLF>
        <TELL .TEXT>
    )>
    <CRLF>>

<ROUTINE PROCESS-STORY ("AUX" COUNT CHOICES CONTINUE)
    <SET CHOICES <GETP ,HERE ,P?CHOICE-TEXT>>
    <SET CONTINUE <GETP ,HERE ,P?CONTINUE>>
    <COND (.CHOICES
        <CRLF>
        <TELL "You can ">
        <SET COUNT <GET .CHOICES 0>>
        <DO (I 1 .COUNT)
            <HLIGHT ,H-BOLD>
            <TELL N .I ") ">
            <HLIGHT 0>
            <TELL <GET .CHOICES .I>>
            <COND (<AND <NOT <EQUAL? .COUNT 2>> <L? .I .COUNT> <TELL ", ">>)>
            <COND (<EQUAL? .I <- .COUNT 1>> <TELL " or ">)>
        >
        <TELL "." CR>
    <RETURN <INPUT 1>>
    )(.CONTINUE
        <SETG ,HERE .CONTINUE>
        <RETURN <INPUT 1>>
    )>>