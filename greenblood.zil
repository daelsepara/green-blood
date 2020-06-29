"Green Blood (ZIL)"

<CONSTANT GAME-BANNER "Green Blood|By David Morris and Mark Smith||Implemented in ZIL by SD Separa (2020)|">
<CONSTANT RELEASEID 1>
<VERSION XZIP>

<INSERT-FILE "parser">
<INSERT-FILE "prologue">
<INSERT-FILE "player">
<INSERT-FILE "keywords">
<INSERT-FILE "story">

<SET REDEFINE T>

<CONSTANT F <>>
<CONSTANT NONE F>

<ROUTINE GO ()
    <V-VERSION>
    <INSTRUCTIONS>
    <CRLF>
    <CHOOSE-CHARACTER>
    <SETG ,HERE ,PROLOGUE>
    <INIT-STATUS-LINE>
    <UPDATE-STATUS-LINE>
    <GAME-LOOP>>

<ROUTINE GAME-LOOP ("AUX" KEY)
    <REPEAT ()
        <CRLF>
        <KEYWORD-CHECK>
        <GOTO ,HERE>
        <PRINT-PAGE>
        <COST-CHECK>
        <GAIN-KEYWORD>
        <CHECK-DEATH>
        <SET KEY <PROCESS-STORY>>
        <COND (<EQUAL? .KEY !\c !\C> <CRLF> <DESCRIBE-PLAYER> <PRESS-A-KEY> <SET KEY NONE>)>
        <COND (<EQUAL? .KEY !\g !\G> <CRLF> <DESCRIBE-SKILLS> <PRESS-A-KEY> <SET KEY NONE>)>
        <COND (<EQUAL? .KEY !\q !\Q> <RETURN>)>
        <CLOCKER>
        <UPDATE-STATUS-LINE>
    >>

<ROUTINE PRINT-PAGE ("AUX" TEXT)
    <SET TEXT <GETP ,HERE ,P?STORY-TEXT>>
    <COND (.TEXT
        <CRLF>
        <TELL .TEXT>
    )>
    <CRLF>>

<ROUTINE CHECK-DEATH ("AUX" DEATH)
    <SET DEATH <GETP ,HERE ,P?DEATH>>
    <COND (.DEATH
        <CRLF>
        <JIGS-UP "The adventure is over. You have died.">
    )>>

<ROUTINE COST-CHECK ("AUX" GOLD)
    <SET GOLD <GETP ,HERE ,P?COST>>
    <COND(<G? .GOLD 0>
        <CHARGE-GOLD .GOLD>)>>

<ROUTINE GAIN-KEYWORD ("AUX" KEYWORD)
    <SET KEYWORD <GETP ,HERE ,P?KEYWORD>>
    <COND (.KEYWORD
        <CRLF>
        <TELL "[You gained the keyword ">
        <HLIGHT ,H-BOLD>
        <TELL D .KEYWORD>
        <HLIGHT 0>
        <TELL "]" CR>
        <MOVE .KEYWORD ,KEYWORDS>
    )>>

<ROUTINE KEYWORD-CHECK ("AUX" KEYWORD)
    <SET KEYWORD <GETP ,HERE ,P?KEYWORD-CHECK>>
    <COND (.KEYWORD
        <SETG ,HERE <APPLY .KEYWORD>>
    )>>

<ROUTINE NOT-POSSESSED (OBJ)
    <CRLF><CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You do not posses " D .OBJ CR>
    <HLIGHT 0>>

<ROUTINE CHARGE-GOLD (COST)
    <SETG ,GOLD-PIECES <- ,GOLD-PIECES .COST>>
    <COND (<L? ,GOLD-PIECES 0> <SETG ,GOLD-PIECES 0>)>
    <UPDATE-STATUS-LINE>>

<ROUTINE CHECK-POSSESSIONS (SKILL)
    <COND(<EQUAL? .SKILL ,SKILL-SWORDPLAY>
        <COND (<NOT <IN? ,SWORD ,PLAYER>>
            <NOT-POSSESSED ,SWORD>
            <RFALSE>
        )>
    )>
    <COND(<EQUAL? .SKILL ,SKILL-ARCHERY>
        <COND (<NOT <IN? ,LONGBOW ,PLAYER>>
            <NOT-POSSESSED ,LONGBOW>
            <RFALSE>
        )>
    )>
    <COND(<EQUAL? .SKILL ,SKILL-CHARMS>
        <COND (<NOT <IN? ,MAGIC-AMULET ,PLAYER>>
            <NOT-POSSESSED ,MAGIC-AMULET>
            <RFALSE>
        )>
    )>
    <COND(<EQUAL? .SKILL ,SKILL-SPELLS>
        <COND (<NOT <IN? ,MAGIC-WAND ,PLAYER>>
            <NOT-POSSESSED ,MAGIC-WAND>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE PROCESS-CHOICES (CHOICES "AUX" KEY CHOICE SKILLS KEYWORDS DESTINATIONS)
    <SET DESTINATIONS <GETP ,HERE ,P?CHOICES-DESTINATIONS>>
    <SET SKILLS <GETP ,HERE ,P?CHOICES-SKILL-REQUIREMENTS>>
    <SET KEYWORDS <GETP ,HERE ,P?CHOICES-KEYWORD-REQUIREMENTS>>
    <TELL CR "What will you choose? ">
    <REPEAT ()
        <SET KEY <INPUT 1>>
        <COND (<AND <G=? .KEY !\1> <L=? .KEY !\9>>
            <SET .CHOICE <- .KEY !\0>>
            <COND (<AND <G=? .CHOICES 1> <L=? .CHOICE <GET .CHOICES 0>>>
                <COND (<AND <NOT .SKILLS> <NOT .KEYWORDS>>
                    <COND (<AND <G=? .CHOICE 1> <L=? .CHOICE <GET .DESTINATIONS 0>>>
                        <SETG ,HERE <GET .DESTINATIONS .CHOICE>>
                        <CRLF>
                        <RETURN>
                    )(ELSE
                        <CRLF>
                        <TELL CR "Internal Error." CR>
                        <SET KEY !\q>
                        <RETURN>
                    )>
                )(.SKILLS
                    <COND (<GET .SKILLS .CHOICE>
                        <COND (<IN? <GET .SKILLS .CHOICE> ,SKILLS>
                            <COND (<CHECK-POSSESSIONS <GET .SKILLS .CHOICE>>
                                <SETG ,HERE <GET .DESTINATIONS .CHOICE>>
                                <CRLF>
                            )>
                            <RETURN>
                        )(ELSE
                            <HLIGHT ,H-BOLD>
                            <CRLF><CRLF>
                            <TELL "You do not have " CT <GET .SKILLS .CHOICE> " skill!" CR>
                            <HLIGHT 0>
                            <RETURN>
                       )>
                    )(ELSE
                        <SETG ,HERE <GET .DESTINATIONS .CHOICE>>
                        <CRLF>
                        <RETURN>
                    )>
                )>
            )>
        )>
        <COND (<EQUAL? .KEY !\c !\C !\g !\G !\q !\Q> <CRLF> <RETURN>)>
    >
    <RETURN .KEY>>

<ROUTINE PRESS-A-KEY ()
    <TELL CR "[Press a key to continue]" CR>
    <INPUT 1>
    <RETURN>>

<ROUTINE PROCESS-STORY ("AUX" COUNT CHOICES SKILLS CONTINUE)
    <SET CHOICES <GETP ,HERE ,P?CHOICES-TEXT>>
    <SET SKILLS <GETP ,HERE ,P?CHOICES-SKILL-REQUIREMENTS>>
    <SET CONTINUE <GETP ,HERE ,P?CONTINUE>>
    <COND (.CHOICES
        <CRLF>
        <TELL "You can ">
        <SET COUNT <GET .CHOICES 0>>
        <DO (I 1 .COUNT)
            <COND (<AND <EQUAL? .I .COUNT> <G? .COUNT 1>> <TELL "or ">)>
            <HLIGHT ,H-BOLD>
            <TELL N .I ") ">
            <HLIGHT 0>
            <TELL <GET .CHOICES .I>>
            <COND (<AND .SKILLS <GET .SKILLS .I>> <TELL " (" D <GET .SKILLS .I> ")">)>
            <COND (<AND <NOT <EQUAL? .COUNT 2>> <L? .I .COUNT> <TELL ", ">>)>
            <COND (<AND <EQUAL? .I 1> <EQUAL? .COUNT 2>> <TELL " ">)>
        >
        <TELL "." CR>
        <RETURN <PROCESS-CHOICES .CHOICES>>
    )(.CONTINUE
        <SETG ,HERE .CONTINUE>
        <PRESS-A-KEY>
        <RETURN>
    )>
    <RETURN !\q>>

"Override"
<ROUTINE LINE-ERASE (ROW)
    <CURSET .ROW 1>
    <DO (I <LOWCORE SCRH> 1 -1) <PRINTC !\ >>
    <CURSET .ROW 1>>

<ROUTINE UPDATE-STATUS-LINE ("AUX" WIDTH)
    <SPLIT 1>
    <SCREEN 1>
    <SET WIDTH <LOWCORE SCRH>>
    <HLIGHT ,H-INVERSE>
    <LINE-ERASE 1>
    <TELL !\ >
    <COND (,HERE
        <COND (,HERE-LIT <TELL D ,HERE>)(ELSE <TELL %,DARKNESS-STATUS-TEXT>)>
    )>
    <COND (,CURRENT-CHARACTER
        <TELL " - " CT ,CURRENT-CHARACTER>
    )>
    <CURSET 1 <- .WIDTH 45>>
    <TELL "Life Points: " N ,LIFE-POINTS>
    <CURSET 1 <- .WIDTH 27>>
    <TELL "Gold: " N ,GOLD-PIECES>
    <CURSET 1 <- .WIDTH 16>>
    <TELL "Moves: " N ,MOVES>
    <SCREEN 0>
    <HLIGHT 0>>

<ROUTINE DESCRIBE-PLAYER ("AUX" COUNT SKILLS POSSESSIONS KEYWORDS)
    <COND (,CURRENT-CHARACTER
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL CT ,CURRENT-CHARACTER CR>
        <HLIGHT 0>
        <COND (<GETP ,CURRENT-CHARACTER,P?LDESC>
            <CRLF>
            <TELL <GETP ,CURRENT-CHARACTER ,P?LDESC> CR>
        )>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "Skills: ">
        <HLIGHT 0>
        <SET COUNT 0>
        <SET SKILLS <FIRST? ,SKILLS>>
        <COND (.SKILLS
            <REPEAT ()
                <COND (.SKILLS
                    <COND (<G? .COUNT 0> <TELL ", ">)>
                    <TELL D .SKILLS>
                    <SET COUNT <+ .COUNT 1>>
                )(ELSE
                    <RETURN>
                )>
                <SET SKILLS <NEXT? .SKILLS>>
            >
            <CRLF>
        )(ELSE
            <TELL "None" CR>
        )>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "Possessions: ">
        <HLIGHT 0>
        <SET COUNT 0>
        <SET POSSESSIONS <FIRST? ,PLAYER>>
        <COND (.POSSESSIONS
            <REPEAT ()
                <COND (.POSSESSIONS
                    <COND (<G? .COUNT 0> <TELL ", ">)>
                    <TELL D .POSSESSIONS>
                    <SET COUNT <+ .COUNT 1>>
                )(ELSE
                    <RETURN>
                )>
                <SET POSSESSIONS <NEXT? .POSSESSIONS>>
            >
            <CRLF>
        )(ELSE
            <TELL "None" CR>
        )>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "Keywords: ">
        <HLIGHT 0>
        <SET COUNT 0>
        <SET KEYWORDS <FIRST? ,KEYWORDS>>
        <COND (.KEYWORDS
            <REPEAT ()
                <COND (.KEYWORDS
                    <COND (<G? .COUNT 0> <TELL ", ">)>
                    <TELL D .KEYWORDS>
                    <SET COUNT <+ .COUNT 1>>
                )(ELSE
                    <RETURN>
                )>
                <SET KEYWORDS <NEXT? .KEYWORDS>>
            >
            <CRLF>
        )(ELSE
            <TELL "None" CR>
        )>
    )>>
