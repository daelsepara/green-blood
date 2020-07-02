"Green Blood (ZIL)"

<CONSTANT GAME-BANNER "Green Blood||by Mark Smith and Dave Morris (1993)||Implemented in ZIL by SD Separa (2020)|">
<CONSTANT RELEASEID 1>
<VERSION XZIP>

<INSERT-FILE "parser">
<INSERT-FILE "instructions">
<INSERT-FILE "player">
<INSERT-FILE "objects">
<INSERT-FILE "codewords">
<INSERT-FILE "story">

<SET REDEFINE T>

<CONSTANT F <>>
<CONSTANT NONE F>

<GLOBAL CONTINUE-TO-CHOICES T>

<ROUTINE GO ()
    <V-VERSION>
    <INSTRUCTIONS>
    <RESET-PLAYER>
    <RESET-STORY>
    <CHOOSE-CHARACTER>
    <SETG HERE ,PROLOGUE>
    <INIT-STATUS-LINE>
    <UPDATE-STATUS-LINE>
    <GAME-LOOP>
    <JIGS-UP "This is a work in progress.">>

<ROUTINE GAME-LOOP ("AUX" KEY)
    <REPEAT ()
        <CRLF>
        <SETG CONTINUE-TO-CHOICES T>
        <CHECK-EVENTS>
        <GOTO ,HERE>
        <PRINT-PAGE>
        <COST-CHECK>
        <GAIN-CODEWORD>
        <GAIN-ITEM>
        <CHECK-PRECHOICE>
        <CHECK-DEATH>
        <CHECK-VICTORY>
        <COND (,CONTINUE-TO-CHOICES
            <SET KEY <PROCESS-STORY>>
            <COND (<EQUAL? .KEY !\c !\C> <DESCRIBE-PLAYER> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<EQUAL? .KEY !\g !\G> <CRLF> <PRINT-SKILLS> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<EQUAL? .KEY !\i !\I> <DESCRIBE-INVENTORY> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<EQUAL? .KEY !\q !\Q> <CRLF> <RETURN>)>
            <COND (<EQUAL? .KEY !\x !\X> <CRLF> <RETURN>)>
        )>
        <CLOCKER>
        <UPDATE-STATUS-LINE>
    >>

<ROUTINE RESET-STORY ()
    <SETG CONTINUE-TO-CHOICES T>
    <SETG MAX-LIFE-POINTS 0>
    <SETG STORY033-DECISION-FLAG F>
    <PUTP ,STORY151 ,P?DEATH T>>

<ROUTINE PRINT-PAGE ("AUX" TEXT)
    <SET TEXT <GETP ,HERE ,P?STORY>>
    <COND (.TEXT
        <CRLF>
        <TELL .TEXT>
        <CRLF>
    )>>

<ROUTINE PRINT-ENDING (MESSAGE)
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL .MESSAGE>
    <HLIGHT 0>
    <JIGS-UP " ">
>

<ROUTINE CHECK-DEATH ("AUX" DEATH)
    <SET DEATH <GETP ,HERE ,P?DEATH>>
    <COND (.DEATH
        <PRINT-ENDING "The adventure is over. The Forest of Arden is doomed.">
    )>>

<ROUTINE CHECK-VICTORY ("AUX" VICTORY)
    <SET VICTORY <GETP ,HERE ,P?VICTORY>>
    <COND (.VICTORY
        <PRINT-ENDING "The adventure is over. You saved the Forest of Arden! Congratulations!">
    )>>

<ROUTINE CHECK-PRECHOICE ("AUX" PRE-CHOICE)
    <SET PRE-CHOICE <GETP ,HERE ,P?PRECHOICE>>
    <COND (.PRE-CHOICE <APPLY .PRE-CHOICE>)>>

<ROUTINE COST-CHECK ("AUX" GOLD)
    <SET GOLD <GETP ,HERE ,P?COST>>
    <COND(<G? .GOLD 0>
        <CHARGE-GOLD .GOLD>)>>

<ROUTINE GAIN-CODEWORD ("AUX" CODEWORD)
    <SET CODEWORD <GETP ,HERE ,P?CODEWORD>>
    <COND (.CODEWORD
        <CRLF>
        <TELL "[You gained the codeword ">
        <HLIGHT ,H-BOLD>
        <TELL D .CODEWORD>
        <HLIGHT 0>
        <TELL "]" CR>
        <MOVE .CODEWORD ,CODEWORDS>
    )>>

<ROUTINE GET-ITEM (ITEM "AUX" ITEMS COUNT)
    <COND(<AND .ITEM <G=? <COUNT-POSESSIONS> 0>>
        <SET COUNT 0>
        <SET ITEMS <FIRST? ,PLAYER>>
        <REPEAT ()
            <COND (.ITEMS
                <SET COUNT <+ .COUNT 1>>
                <COND (<EQUAL? .COUNT .ITEM> <RETURN>)>
            )(ELSE
                <RETURN>
            )>
            <SET .ITEMS <NEXT? .ITEMS>>
        >
        <RETURN .ITEMS>
    )>>

<ROUTINE CHECK-DROPS (ITEM "AUX" REQUIRES)
    <COND (.ITEM
        <SET REQUIRES <GETP .ITEM ,P?REQUIRES>>
        <COND (<AND .REQUIRES <IN? .REQUIRES ,SKILLS>>
            <CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "You cannot drop " T .ITEM " because it is required by " T .REQUIRES " skill!">
            <HLIGHT 0>
            <CRLF>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE DROP-REPLACE-ITEM (OBJ "AUX" KEY COUNT ITEM CHOICE)
    <COND (<AND .OBJ <G=? <COUNT-POSESSIONS> LIMIT-POSSESSIONS>>
        <REPEAT ()
            <CRLF>
            <TELL "Please choose an item to drop:" CR>
            <SET COUNT 0>
            <SET ITEM <FIRST? ,PLAYER>>
            <REPEAT ()
                <COND (<NOT .ITEM> <RETURN>)>
                <SET COUNT <+ .COUNT 1>>
                <TELL N .COUNT " - " T .ITEM  CR>
                <SET .ITEM <NEXT? .ITEM>>
            >
            <TELL N <+ .COUNT 1> " - drop " T .OBJ " instead." CR>
            <SET KEY <INPUT 1>>
            <COND (<AND <G? .KEY 48> <L? .KEY <+ .COUNT 49>>>
                <SET CHOICE <- .KEY 48>>
                <SET .ITEM <GET-ITEM .CHOICE>>
                <COND (.ITEM
                    <CRLF>
                    <TELL "Drop " T .ITEM "?">
                    <COND (<YES?>
                        <COND (<CHECK-DROPS .ITEM>
                            <TELL "You dropped " T .ITEM " and took " T .OBJ CR>
                            <REMOVE .ITEM>
                            <MOVE .OBJ ,PLAYER>
                            <RETURN>
                        )>
                    )>
                )>
            )(<EQUAL? .KEY <+ .COUNT 49>>
                <CRLF>
                <TELL "Drop " T .OBJ "?">
                <COND (<YES?>
                    <TELL "You dropped " T .OBJ CR>
                    <REMOVE .OBJ>
                    <RETURN>
                )>
            )>
        >
    )>>

<ROUTINE GAIN-ITEM ("AUX" ITEM)
    <SET ITEM <GETP ,HERE ,P?ITEM>>
    <COND (.ITEM
        <CRLF>
        <TELL "[You gained ">
        <HLIGHT ,H-BOLD>
        <TELL T .ITEM>
        <HLIGHT 0>
        <TELL "]" CR>
        <COND (<AND <EQUAL? <COUNT-POSESSIONS> LIMIT-POSSESSIONS> <NOT <IN? .ITEM ,PLAYER>>>
            <CRLF>
            <TELL "You are carrying too many items." CR>
            <DROP-REPLACE-ITEM .ITEM>
        )(ELSE
            <MOVE .ITEM ,PLAYER>
        )>
    )>>
        
<ROUTINE CHECK-EVENTS ("AUX" EVENT STORY)
    <SET EVENT <GETP ,HERE ,P?EVENTS>>
    <COND (.EVENT
        <SET STORY <APPLY .EVENT>>
        <COND (.STORY <SETG HERE .STORY>)>
    )>>

<ROUTINE NOT-POSSESSED (OBJ)
    <CRLF><CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You do not possess " A .OBJ CR>
    <HLIGHT 0>
    <PRESS-A-KEY>>

<ROUTINE CHARGE-GOLD (COST)
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You are charged " N .COST " gold.">
    <HLIGHT 0>
    <SETG GOLD-PIECES <- ,GOLD-PIECES .COST>>
    <COND (<L? ,GOLD-PIECES 0> <SETG GOLD-PIECES 0>)>
    <UPDATE-STATUS-LINE>
    <CRLF>>

<ROUTINE CHECK-CODEWORDS (CODEWORDS "AUX" COUNT)
    <COND (.CODEWORDS
        <SET COUNT <GET .CODEWORDS 0>>
        <COND (<G? .COUNT 0>
            <DO (I 1 .COUNT)
                <COND (<NOT <IN? <GET .CODEWORDS .I> ,CODEWORDS>> <RFALSE>)>
            >
        )>
    )>
    <RTRUE>>

<ROUTINE CHECK-POSSESSIONS (ITEM)
    <COND (.ITEM
        <COND (<NOT <IN? .ITEM ,PLAYER>>
            <NOT-POSSESSED .ITEM>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE CHECK-GOLD (AMOUNT)
    <COND (<G? .AMOUNT 0>
        <COND (<L? ,GOLD-PIECES .AMOUNT>
            <CRLF><CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "You do not have enough gold." CR>
            <HLIGHT 0>
            <PRESS-A-KEY>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE COUNT-POSESSIONS ("AUX" COUNT ITEM)
    <SET COUNT 0>
    <SET ITEM <FIRST? ,PLAYER>>
    <REPEAT ()
        <COND (<NOT .ITEM> <RETURN>)>
        <SET COUNT <+ .COUNT 1>>
        <SET .ITEM <NEXT? .ITEM>>
    >
    <RETURN .COUNT>>

<ROUTINE CHECK-SKILL-POSSESSIONS (SKILL "AUX" REQUIRED)
    <SET REQUIRED <GETP .SKILL ,P?REQUIRES>>
    <COND (.REQUIRED
        <COND (<NOT <IN? .REQUIRED ,PLAYER>>
            <NOT-POSSESSED .REQUIRED>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE PROCESS-CHOICES (CHOICES "AUX" DESTINATIONS REQUIREMENTS TYPES KEY CHOICE TYPE)
    <SET DESTINATIONS <GETP ,HERE ,P?DESTINATIONS>>
    <SET REQUIREMENTS <GETP ,HERE ,P?REQUIREMENTS>>
    <SET TYPES <GETP ,HERE ,P?TYPES>>
    <TELL CR "What will you choose? ">
    <REPEAT ()
        <SET KEY <INPUT 1>>
        <COND (<AND <G=? .KEY !\1> <L=? .KEY !\9>>
            <SET .CHOICE <- .KEY !\0>>
            <COND (<AND <G=? .CHOICES 1> <L=? .CHOICE <GET .CHOICES 0>>>
                <COND (<AND <G=? .CHOICE 1> <L=? .CHOICE <GET .DESTINATIONS 0>> <L=? .CHOICE <GET .TYPES 0>>>
                    <SET TYPE <GET .TYPES .CHOICE>>
                    <COND (<EQUAL? .TYPE R-NONE>
                        <SETG HERE <GET .DESTINATIONS .CHOICE>>
                        <CRLF>
                    )(<AND <EQUAL? .TYPE R-SKILL> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<IN? <GET .REQUIREMENTS .CHOICE> ,SKILLS>
                            <COND (<CHECK-SKILL-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                                <SETG HERE <GET .DESTINATIONS .CHOICE>>
                                <CRLF>
                            )>
                        )(ELSE
                            <HLIGHT ,H-BOLD>
                            <CRLF><CRLF>
                            <TELL "You do not have " T <GET .REQUIREMENTS .CHOICE> " skill!">
                            <HLIGHT 0>
                            <CRLF>
                            <PRESS-A-KEY>
                        )>
                    )(<AND <EQUAL? .TYPE R-CODEWORD> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-CODEWORDS <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )(ELSE
                            <HLIGHT ,H-BOLD>
                            <CRLF><CRLF>
                            <TELL "You do not have all the codewords">
                            <PRINT-CODEWORDS <GET .REQUIREMENTS .CHOICE>>
                            <HLIGHT 0>
                            <CRLF>
                            <PRESS-A-KEY>
                        )>
                    )(<AND <EQUAL? .TYPE R-ITEM> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )>
                    )(<AND <EQUAL? .TYPE R-GOLD> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-GOLD <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )>
                    )>
                    <RETURN>
                )(ELSE
                    <CRLF>
                    <TELL CR "Internal Error." CR>
                    <SET KEY !\q>
                    <RETURN>
                )>
            )>
        )>
        <COND (<EQUAL? .KEY !\c !\C !\g !\G !\i !\I !\q !\Q> <CRLF> <RETURN>)>
    >
    <RETURN .KEY>>

<ROUTINE PRESS-A-KEY ()
    <TELL CR "[Press a key to continue]" CR>
    <INPUT 1>
    <RETURN>>

<ROUTINE PRINT-CODEWORDS (CODEWORDS "AUX" COUNT)
    <COND (.CODEWORDS
        <SET COUNT <GET .CODEWORDS 0>>
        <COND (<G? .COUNT 0>
            <TELL " (">
            <HLIGHT ,H-ITALIC>
            <DO (I 1 .COUNT)
                <COND (<G? .I 1> <TELL ", ">)>
                <TELL D <GET .CODEWORDS .I>>
            >
            <HLIGHT 0>
            <TELL ")">
        )>
    )>
>

<ROUTINE PROCESS-STORY ("AUX" COUNT CHOICES TYPES REQUIREMENTS CONTINUE)
    <SET CHOICES <GETP ,HERE ,P?CHOICES>>
    <SET TYPES <GETP ,HERE ,P?TYPES>>
    <SET REQUIREMENTS <GETP ,HERE ,P?REQUIREMENTS>>
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
            <COND (<AND <EQUAL? R-SKILL <GET .TYPES .I>> .REQUIREMENTS> <TELL " ("> <HLIGHT ,H-ITALIC> <TELL D <GET .REQUIREMENTS .I>> <HLIGHT 0> <TELL ")">)>
            <COND (<AND <EQUAL? R-CODEWORD <GET .TYPES .I>> .REQUIREMENTS> <PRINT-CODEWORDS <GET .REQUIREMENTS .I>>)>
            <COND (<AND <EQUAL? R-ITEM <GET .TYPES .I>> .REQUIREMENTS> <TELL " ("> <HLIGHT ,H-ITALIC> <TELL D <GET .REQUIREMENTS .I>> <HLIGHT 0> <TELL ")">)>
            <COND (<AND <EQUAL? R-GOLD <GET .TYPES .I>> .REQUIREMENTS> <TELL " (" N <GET .REQUIREMENTS .I> " gold)">)>
            <COND (<AND <NOT <EQUAL? .COUNT 2>> <L? .I .COUNT> <TELL ", ">>)>
            <COND (<AND <EQUAL? .I 1> <EQUAL? .COUNT 2>> <TELL " ">)>
        >
        <TELL "." CR>
        <RETURN <PROCESS-CHOICES .CHOICES>>
    )(.CONTINUE
        <SETG HERE .CONTINUE>
        <PRESS-A-KEY>
        <RETURN>
    )>
    <RETURN !\x>>

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
    <CURSET 1 <- .WIDTH 46>>
    <TELL "Life Points: " N ,LIFE-POINTS "/" N ,MAX-LIFE-POINTS>
    <CURSET 1 <- .WIDTH 27>>
    <TELL "Gold: " N ,GOLD-PIECES>
    <CURSET 1 <- .WIDTH 16>>
    <TELL "Moves: " N ,MOVES>
    <SCREEN 0>
    <HLIGHT 0>>

<ROUTINE DESCRIBE-PLAYER ("AUX" COUNT SKILLS POSSESSIONS CODEWORDS QUANTITY)
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
                    <SET QUANTITY <GETP .POSSESSIONS ,P?QUANTITY>>
                    <COND (.QUANTITY
                        <TELL " (" N .QUANTITY ")">
                    )>
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
        <TELL "Codewords: ">
        <HLIGHT 0>
        <SET COUNT 0>
        <SET CODEWORDS <FIRST? ,CODEWORDS>>
        <COND (.CODEWORDS
            <REPEAT ()
                <COND (.CODEWORDS
                    <COND (<G? .COUNT 0> <TELL ", ">)>
                    <TELL D .CODEWORDS>
                    <SET COUNT <+ .COUNT 1>>
                )(ELSE
                    <RETURN>
                )>
                <SET CODEWORDS <NEXT? .CODEWORDS>>
            >
            <CRLF>
        )(ELSE
            <TELL "None" CR>
        )>
    )>>

<ROUTINE DESCRIBE-INVENTORY ("AUX" COUNT POSSESSIONS QUANTITY)
    <COND (,CURRENT-CHARACTER
        <SET COUNT <COUNT-POSESSIONS>>
        <CRLF>
        <TELL "You are carrying " N .COUNT " items">
        <COND (<G? .COUNT 0>
            <TELL ": ">
            <SET COUNT 0>
            <SET POSSESSIONS <FIRST? ,PLAYER>>
            <COND (.POSSESSIONS
                <REPEAT ()
                    <COND (.POSSESSIONS
                        <COND (<G? .COUNT 0> <TELL ", ">)>
                        <TELL D .POSSESSIONS>
                        <SET QUANTITY <GETP .POSSESSIONS ,P?QUANTITY>>
                        <COND (.QUANTITY
                            <TELL " (" N .QUANTITY ")">
                        )>
                        <SET COUNT <+ .COUNT 1>>
                    )(ELSE
                        <RETURN>
                    )>
                    <SET POSSESSIONS <NEXT? .POSSESSIONS>>
                >
                <CRLF>
            )>
        )(ELSE
            <TELL ".">
            <CRLF>
        )>
    )>>

<ROUTINE RESET-CONTAINER (CONTAINER "AUX" ITEM NEXT)
    <SET ITEM <FIRST? .CONTAINER>>
    <REPEAT ()
        <COND (<NOT .ITEM> <RETURN>)>
        <SET NEXT <NEXT? .ITEM>>
        <REMOVE .ITEM>
        <SET ITEM .NEXT>
    >>

<ROUTINE RESET-POSSESSIONS ()
    <RESET-CONTAINER ,PLAYER>>

<ROUTINE RESET-CODEWORDS ()
    <RESET-CONTAINER ,CODEWORDS>>

<ROUTINE RESET-SKILLS ()
    <RESET-CONTAINER ,SKILLS>>

<ROUTINE RESET-PLAYER ()
    <RESET-POSSESSIONS>
    <RESET-CODEWORDS>
    <RESET-SKILLS>>