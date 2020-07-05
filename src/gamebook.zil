<INSERT-FILE "instructions">
<INSERT-FILE "player">
<INSERT-FILE "objects">
<INSERT-FILE "codewords">
<INSERT-FILE "story">

<SET REDEFINE T>

<CONSTANT F <>>
<CONSTANT NONE F>

<CONSTANT R-NONE 0>
<CONSTANT R-SKILL 1>
<CONSTANT R-CODEWORD 2>
<CONSTANT R-ITEM 3>
<CONSTANT R-MONEY 4>
<CONSTANT R-ANY 5>

<CONSTANT LIMIT-POSSESSIONS 8>

<CONSTANT TWO-NONES <LTABLE R-NONE R-NONE>>
<CONSTANT THREE-NONES <LTABLE R-NONE R-NONE R-NONE>>
<CONSTANT FOUR-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE>>
<CONSTANT FIVE-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE>>
<CONSTANT SIX-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE R-NONE>>

<CONSTANT SELECT-CHOICES <LTABLE NONE NONE NONE NONE NONE NONE NONE NONE NONE>>

<GLOBAL CURRENT-CHARACTER NONE>
<GLOBAL MONEY 0>
<GLOBAL LIFE-POINTS 0>
<GLOBAL MAX-LIFE-POINTS 0>

<GLOBAL CONTINUE-TO-CHOICES T>

<OBJECT CODEWORDS
    (DESC "Codewords")
    (SYNONYM CODEWORDS)
    (FLAGS CONTBIT OPENBIT)>

<OBJECT SKILLS
    (DESC "Skills")
    (SYNONYM SKILLS)
    (FLAGS CONTBIT OPENBIT)>

<ROUTINE GAME-BOOK ("AUX" KEY)
    <COND (,CHARACTERS-ENABLED
        <INSTRUCTIONS>
        <RESET-PLAYER>
        <RESET-OBJECTS>
        <RESET-SELECTIONS>
        <RESET-STORY>
        <CHOOSE-CHARACTER>
    )>
    <SETG HERE ,PROLOGUE>
    <INIT-STATUS-LINE>
    <UPDATE-STATUS-LINE>
    <REPEAT ()
        <CRLF>
        <RESET-CHOICES>
        <COND (,CHARACTERS-ENABLED <CHECK-EVENTS>)>
        <GOTO ,HERE>
        <PRINT-PAGE>
        <COND (,CHARACTERS-ENABLED
            <LOSE-MONEY>
            <GAIN-CODEWORD>
            <GAIN-ITEM>
            <CHECK-PRECHOICE>
        )>
        <CHECK-DEATH>
        <CHECK-VICTORY>
        <COND (,CONTINUE-TO-CHOICES
            <SET KEY <PROCESS-STORY>>
            <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\c !\C>> <DESCRIBE-PLAYER> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\g !\G>> <CRLF> <PRINT-SKILLS> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\i !\I>> <DESCRIBE-INVENTORY> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<EQUAL? .KEY !\q !\Q> <CRLF> <RETURN>)>
            <COND (<EQUAL? .KEY !\x !\X> <CRLF> <RETURN>)>
        )>
        <CLOCKER>
        <UPDATE-STATUS-LINE>
    >>

; "Story Routines - print story, process choices"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-PAGE ("AUX" TEXT)
    <SET TEXT <GETP ,HERE ,P?STORY>>
    <COND (.TEXT
        <CRLF>
        <TELL .TEXT>
        <CRLF>
    )>>

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
                    )(<AND <EQUAL? .TYPE R-MONEY> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-MONEY <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )>
                    )(<AND <EQUAL? .TYPE R-ANY> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-ANY <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )(ELSE
                            <HLIGHT ,H-BOLD>
                            <CRLF><CRLF>
                            <TELL "You do not have any of the items">
                            <PRINT-ANY <GET .REQUIREMENTS .CHOICE>>
                            <HLIGHT 0>
                            <CRLF>
                            <PRESS-A-KEY>
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
            <COND (<AND <EQUAL? R-MONEY <GET .TYPES .I>> .REQUIREMENTS> <TELL " (" N <GET .REQUIREMENTS .I> " " D ,CURRENCY ")">)>
            <COND (<AND <EQUAL? R-ANY <GET .TYPES .I>> .REQUIREMENTS> <PRINT-ANY <GET .REQUIREMENTS .I>>)>
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

; "Story - Choice Requirements Validations"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHECK-ANY (ITEMS "AUX" COUNT)
    <COND (.ITEMS
        <SET COUNT <GET .ITEMS 0>>
        <DO (I 1 .COUNT)
            <COND (<IN? <GET .ITEMS .I> ,PLAYER> <RTRUE>)>
        >
        <RFALSE>
    )>
    <RTRUE>>

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

<ROUTINE CHECK-MONEY (AMOUNT)
    <COND (<G? .AMOUNT 0>
        <COND (<L? ,MONEY .AMOUNT>
            <CRLF><CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "You do not have enough " D ,CURRENCY "." CR>
            <HLIGHT 0>
            <PRESS-A-KEY>
            <RFALSE>
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

<ROUTINE CHECK-SKILL-POSSESSIONS (SKILL "AUX" REQUIRED)
    <SET REQUIRED <GETP .SKILL ,P?REQUIRES>>
    <COND (.REQUIRED
        <COND (<NOT <IN? .REQUIRED ,PLAYER>>
            <NOT-POSSESSED .REQUIRED>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE NOT-POSSESSED (OBJ)
    <CRLF><CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You do not possess " A .OBJ CR>
    <HLIGHT 0>
    <PRESS-A-KEY>>

; "Story - Event Routines (victory/death/prechoice/transition/codeword/story jump events)"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHECK-DEATH ("AUX" DEATH)
    <SET DEATH <GETP ,HERE ,P?DEATH>>
    <COND (.DEATH
        <PRINT-ENDING BAD-ENDING>
    )>>

<ROUTINE CHECK-EVENTS ("AUX" EVENT STORY)
    <SET EVENT <GETP ,HERE ,P?EVENTS>>
    <COND (.EVENT
        <SET STORY <APPLY .EVENT>>
        <COND (.STORY <SETG HERE .STORY>)>
        <UPDATE-STATUS-LINE>
    )>>

<ROUTINE CHECK-PRECHOICE ("AUX" PRE-CHOICE)
    <SET PRE-CHOICE <GETP ,HERE ,P?PRECHOICE>>
    <COND (.PRE-CHOICE <APPLY .PRE-CHOICE>)>>

<ROUTINE CHECK-VICTORY ("AUX" VICTORY)
    <SET VICTORY <GETP ,HERE ,P?VICTORY>>
    <COND (.VICTORY
        <PRINT-ENDING GOOD-ENDING>
    )>>

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

<ROUTINE PRINT-ENDING (MESSAGE)
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL .MESSAGE>
    <HLIGHT 0>
    <JIGS-UP " ">>

<ROUTINE STORY-JUMP (STORY)
    <COND (.STORY
        <SETG HERE .STORY>
        <SETG CONTINUE-TO-CHOICES F>
        <PRESS-A-KEY>
    )>>

; "Story - Player Events (gain/lose life/items/money)"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHARGE-MONEY (COST)
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You are charged " N .COST " " D ,CURRENCY ".">
    <HLIGHT 0>
    <SETG MONEY <- ,MONEY .COST>>
    <COND (<L? ,MONEY 0> <SETG MONEY 0>)>
    <UPDATE-STATUS-LINE>
    <CRLF>>

<ROUTINE GAIN-ITEM ("AUX" ITEM)
    <SET ITEM <GETP ,HERE ,P?ITEM>>
    <TAKE-ITEM .ITEM>>

<ROUTINE GIVE-ITEM (ITEM)
    <REMOVE-ITEM .ITEM "gave">>

<ROUTINE LOSE-MONEY ("AUX" COST)
    <SET COST <GETP ,HERE ,P?COST>>
    <COND(<G? .COST 0>
        <CHARGE-MONEY .COST>)>>

<ROUTINE LOSE-ITEM (ITEM)
    <REMOVE-ITEM .ITEM "lost">>

<ROUTINE LOSE-LIFE (DMG MSG STORY)
    <SETG LIFE-POINTS <- ,LIFE-POINTS .DMG>>
    <COND (<L? ,LIFE-POINTS 0> <SETG LIFE-POINTS 0>)>
    <UPDATE-STATUS-LINE>
    <CRLF>
    <HLIGHT ,H-BOLD>
    <COND (<L? ,LIFE-POINTS 1>
        <TELL .MSG>
        <SETG CONTINUE-TO-CHOICES F>
    )(ELSE
        <PUTP .STORY ,P?DEATH F>
        <TELL "You lost " N .DMG " Life Points.">
    )>
    <HLIGHT 0>
    <CRLF>
    <RETURN>>

<ROUTINE REMOVE-ITEM (ITEM REASON)
    <REMOVE .ITEM>
    <HLIGHT ,H-BOLD>
    <TELL "You " .REASON " " T .ITEM ".">
    <HLIGHT 0>
    <CRLF>
    <PRESS-A-KEY>
    <CRLF>
    <RETURN>>

<ROUTINE TAKE-ITEM (ITEM)
    <COND (.ITEM
        <CRLF>
        <TELL "[You gained ">
        <HLIGHT ,H-BOLD>
        <TELL T .ITEM>
        <HLIGHT 0>
        <TELL "]" CR>
        <COND (<AND <EQUAL? <COUNT-POSSESSIONS> LIMIT-POSSESSIONS> <NOT <IN? .ITEM ,PLAYER>>>
            <CRLF>
            <TELL "You are carrying too many items." CR>
            <DROP-REPLACE-ITEM .ITEM>
        )(ELSE
            <MOVE .ITEM ,PLAYER>
        )>
    )>>

; "Player Inventory Manipulation"
; ---------------------------------------------------------------------------------------------
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

<ROUTINE COUNT-CONTAINER (CONTAINER "AUX" COUNT ITEM)
    <SET COUNT 0>
    <SET ITEM <FIRST? .CONTAINER>>
    <REPEAT ()
        <COND (<NOT .ITEM> <RETURN>)>
        <SET COUNT <+ .COUNT 1>>
        <SET .ITEM <NEXT? .ITEM>>
    >
    <RETURN .COUNT>>

<ROUTINE COUNT-POSSESSIONS ()
    <RETURN <COUNT-CONTAINER ,PLAYER>>>

<ROUTINE DROP-REPLACE-ITEM (OBJ "AUX" KEY COUNT ITEM CHOICE)
    <COND (<AND .OBJ <G=? <COUNT-POSSESSIONS> LIMIT-POSSESSIONS>>
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

<ROUTINE GET-ITEM (ITEM "AUX" ITEMS COUNT)
    <COND(<AND .ITEM <G=? <COUNT-POSSESSIONS> 0>>
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

<ROUTINE SELECT-FROM-LIST (LIST ITEMS MAX "OPT" DESC CONTAINER "AUX" KEY COUNT CHOICE)
    <SET COUNT 0>
    <COND (<NOT .DESC> <SET DESC "item">)>
    <RESET-SELECTIONS>
    <REPEAT ()
        <CRLF>
        <COND (<OR <NOT .CONTAINER> <EQUAL? .CONTAINER ,PLAYER>>
            <TELL "You are already carrying " N <COUNT-POSSESSIONS> " items in your inventory." CR>
        )>
        <TELL "You can select up to " N .MAX " " .DESC "s from this list:" CR>
        <DO (I 1 .ITEMS)
            <TELL N .I " - [">
            <COND (<INTBL? <GET .LIST .I> SELECT-CHOICES 10> <TELL "X">)(ELSE <TELL " ">)>
            <TELL "] - " D <GET .LIST .I> CR>
        >
        <TELL "0 - I'm alright with my choices." CR>
        <TELL "Select which " .DESC "(s) to take: " CR>
        <SET KEY <INPUT 1>>
        <COND (<EQUAL? .KEY !\0> <RETURN>)>
        <COND (<AND <G=? .KEY !\1> <L=? .KEY !\5>>
            <SET CHOICE <- .KEY !\0>>
            <COND (<INTBL? <GET .LIST .CHOICE> SELECT-CHOICES 10>
                <PUT SELECT-CHOICES <GET-INDEX SELECT-CHOICES <GET .LIST .CHOICE>> NONE>
                <SET COUNT <- .COUNT 1>>
            )(ELSE
                <COND (<EQUAL? .COUNT .MAX>
                    <CRLF>
                    <HLIGHT ,H-BOLD>
                    <TELL "You have already selected " N .MAX " " .DESC "s!">
                    <HLIGHT 0>
                    <CRLF>
                )(ELSE
                    <SET COUNT <+ .COUNT 1>>
                    <PUT SELECT-CHOICES <GET-INDEX SELECT-CHOICES NONE> <GET .LIST .CHOICE>>
                )>
            )>
        )>
    >
    <COND (<G? .COUNT 0>
        <DO (I 1 9)
            <COND (<GET SELECT-CHOICES .I>
                <COND (<OR <NOT .CONTAINER> <EQUAL? .CONTAINER ,PLAYER>>
                    <TAKE-ITEM <GET SELECT-CHOICES .I>>
                )(ELSE
                    <MOVE <GET SELECT-CHOICES .I> .CONTAINER>
                )>
            )>
        >
    )>
    <RETURN>>

; "Story - Support Routines (display)"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-ANY (ITEMS)
    <PRINT-LIST .ITEMS "or ">>

<ROUTINE PRINT-CODEWORDS (CODEWORDS)
    <PRINT-LIST .CODEWORDS>>

<ROUTINE PRINT-LIST (ITEMS "OPT" LASTFIX "AUX" COUNT)
    <COND (.ITEMS
        <SET COUNT <GET .ITEMS 0>>
        <COND (<G? .COUNT 0>
            <TELL " (">            
            <DO (I 1 .COUNT)
                <COND (<G? .I 1> <TELL ", ">)>
                <COND (<AND <EQUAL? .I .COUNT> .LASTFIX> <TELL .LASTFIX>)>
                <HLIGHT ,H-ITALIC>
                <TELL D <GET .ITEMS .I>>
                <HLIGHT 0>
            >
            <TELL ")">
        )>
    )>>

; "Player information (display)"
; ---------------------------------------------------------------------------------------------
<ROUTINE DESCRIBE-INVENTORY ("AUX" COUNT)
    <COND (,CURRENT-CHARACTER
        <SET COUNT <COUNT-POSSESSIONS>>
        <CRLF>
        <TELL "You are carrying " N .COUNT " items">
        <COND (<G? .COUNT 0>
            <TELL ": ">
            <PRINT-CONTAINER ,PLAYER>
        )(ELSE
            <TELL ".">
            <CRLF>
        )>
    )>>

<ROUTINE DESCRIBE-PLAYER ()
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
        <PRINT-CONTAINER ,SKILLS>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "Possessions: ">
        <HLIGHT 0>
        <PRINT-CONTAINER ,PLAYER>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "Codewords: ">
        <HLIGHT 0>
        <PRINT-CONTAINER ,CODEWORDS>
    )>>

<ROUTINE PRINT-CONTAINER (CONTAINER "AUX" COUNT ITEMS QUANTITY)
    <SET COUNT 0>
    <SET ITEMS <FIRST? .CONTAINER>>
    <COND (.ITEMS
        <REPEAT ()
            <COND (.ITEMS
                <COND (<G? .COUNT 0> <TELL ", ">)>
                <HLIGHT ,H-ITALIC>
                <TELL D .ITEMS>
                <HLIGHT 0>
                <SET QUANTITY <GETP .ITEMS ,P?QUANTITY>>
                <COND (.QUANTITY
                    <TELL " (" N .QUANTITY ")">
                )>
                <COND (<AND <FSET? .ITEMS ,WEARBIT> <FSET? .ITEMS ,WORNBIT>>
                    <TELL " (worn)">
                )>
                <SET COUNT <+ .COUNT 1>>
            )(ELSE
                <RETURN>
            )>
            <SET ITEMS <NEXT? .ITEMS>>
        >
        <CRLF>
    )(ELSE
        <TELL "None" CR>
    )>>

; "Character Routines"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHOOSE-CHARACTER ("AUX" COUNT KEY CHOICE CHARACTER SKILLS POSSESSIONS)
    <SET COUNT <GET CHARACTERS 0>>
    <COND (<G? .COUNT 0>
        <REPEAT ()
            <SET COUNT <GET CHARACTERS 0>>
            <CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "Choose a character:">
            <HLIGHT 0>
            <CRLF>
            <DO (I 1 .COUNT)
                <TELL N .I " - " D <GET CHARACTERS .I> CR>
            >
            <TELL "Select which character?">
            <SET KEY <INPUT 1>>
            <COND (<AND <G=? .KEY !\1> <L=? .KEY !\9>>
                <SET .CHOICE <- .KEY !\0>>
                <COND (<AND <G=? CHARACTERS 1> <G=? .CHOICE 1> <L=? .CHOICE <GET CHARACTERS 0>>>
                    <SET CHARACTER <GET CHARACTERS .CHOICE>>
                    <CRLF>
                    <DESCRIBE-CHARACTER .CHARACTER>
                    <CRLF>
                    <TELL "Select this character?">
                    <COND (<YES?>
                        <SETG CURRENT-CHARACTER .CHARACTER>
                        <SET SKILLS <GETP .CHARACTER ,P?SKILLS>>
                        <COND (.SKILLS
                            <SET COUNT <GET .SKILLS 0>>
                            <DO (I 1 .COUNT)
                                <MOVE <GET .SKILLS .I> ,SKILLS>
                            >
                        )>
                        <SET POSSESSIONS <GETP .CHARACTER ,P?POSSESSIONS>>
                        <COND (.POSSESSIONS
                            <SET COUNT <GET .POSSESSIONS 0>>
                            <DO (I 1 .COUNT)
                                <MOVE <GET .POSSESSIONS .I> ,PLAYER>
                            >
                        )>
                        <SETG CURRENT-CHARACTER .CHARACTER>
                        <SETG MONEY <GETP .CHARACTER ,P?MONEY>>
                        <SETG LIFE-POINTS <GETP .CHARACTER ,P?LIFE-POINTS>>
                        <SETG MAX-LIFE-POINTS ,LIFE-POINTS>
                        <TELL CR "You have selected " CT ,CURRENT-CHARACTER CR>
                        <TELL CR "[Press a key to begin]" CR>
                        <INPUT 1>
                        <RETURN>
                    )>
                )(ELSE
                    <CRLF>
                )>
            )(ELSE
                <CRLF>
            )>
        >
    )>>

<ROUTINE DESCRIBE-CHARACTER (CHARACTER "AUX" COUNT SKILLS POSSESSIONS QUANTITY)
    <COND (.CHARACTER
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL CT .CHARACTER CR>
        <HLIGHT 0>
        <COND (<GETP .CHARACTER ,P?LDESC>
            <CRLF>
            <TELL <GETP .CHARACTER ,P?LDESC> CR>
        )>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "Skills: " CR>
        <HLIGHT 0>
        <SET SKILLS <GETP .CHARACTER ,P?SKILLS>>
        <COND (.SKILLS
            <SET COUNT <GET .SKILLS 0>>
            <COND (<G? .COUNT 0>
                <DO (I 1 .COUNT)
                    <CRLF>
                    <HLIGHT ,H-ITALIC>
                    <TELL D <GET .SKILLS .I> CR>
                    <HLIGHT 0>
                    <TELL <GETP <GET .SKILLS .I> P?LDESC> CR>
                >
            )>  
            <CRLF>
        )(ELSE
            <TELL CR "None" CR>
        )>
        <HLIGHT ,H-BOLD>
        <TELL "Possessions: ">
        <HLIGHT 0>
        <SET POSSESSIONS <GETP .CHARACTER ,P?POSSESSIONS>>
        <COND (.POSSESSIONS
            <SET COUNT <GET .POSSESSIONS 0>>
            <COND (<G? .COUNT 0>
                <DO (I 1 .COUNT)
                    <COND (<AND <G? .I 1> <G? .COUNT 1>> <TELL ", ">)>
                    <HLIGHT ,H-ITALIC>
                    <TELL D <GET .POSSESSIONS .I>>
                    <HLIGHT 0>
                    <SET QUANTITY <GETP <GET .POSSESSIONS .I> ,P?QUANTITY>>
                    <COND (.QUANTITY
                        <TELL " (" N .QUANTITY ")">
                    )>
                >
            )>  
            <CRLF>
        )(ELSE
            <TELL "None" CR>
        )>
    )>>

<ROUTINE PRINT-SKILLS ("AUX" COUNT)
    <SET COUNT <GET SKILL-GLOSSARY 0>>
    <COND (<G? .COUNT 0>
        <DO (I 1 .COUNT)
            <HLIGHT ,H-ITALIC>
            <TELL D <GET SKILL-GLOSSARY .I> CR>
            <HLIGHT 0>
            <TELL <GETP <GET SKILL-GLOSSARY .I> P?LDESC> CR>
            <COND (<NOT <EQUAL? .I .COUNT>> <CRLF>)>
        >
    )>>

; "Reset Routines"
; ---------------------------------------------------------------------------------------------
<ROUTINE RESET-CODEWORDS ()
    <RESET-CONTAINER ,CODEWORDS>>

<ROUTINE RESET-CONTAINER (CONTAINER "AUX" ITEM NEXT)
    <SET ITEM <FIRST? .CONTAINER>>
    <REPEAT ()
        <COND (<NOT .ITEM> <RETURN>)>
        <SET NEXT <NEXT? .ITEM>>
        <REMOVE .ITEM>
        <SET ITEM .NEXT>
    >>

<ROUTINE RESET-CHOICES ()
    <SETG CONTINUE-TO-CHOICES T>>

<ROUTINE RESET-POSSESSIONS ()
    <RESET-CONTAINER ,PLAYER>>

<ROUTINE RESET-SELECTIONS ()
    <DO (I 1 9) <PUT SELECT-CHOICES .I NONE>>>

<ROUTINE RESET-SKILLS ()
    <RESET-CONTAINER ,SKILLS>>

<ROUTINE RESET-PLAYER ()
    <SETG CURRENT-CHARACTER NONE>
    <SETG MONEY 0>
    <SETG LIFE-POINTS 0>
    <SETG MAX-LIFE-POINTS 0>
    <RESET-POSSESSIONS>
    <RESET-CODEWORDS>
    <RESET-SKILLS>>

; "System/Utility/Miscellaneous routines"
; ---------------------------------------------------------------------------------------------
<ROUTINE GET-INDEX (LIST ITEM "AUX" COUNT)
    <COND (.LIST
        <SET COUNT <GET .LIST 0>>
        <DO (I 1 .COUNT)
            <COND (<EQUAL? .ITEM <GET .LIST .I>>
                <RETURN .I>
            )>
        >
    )>
    <RETURN 0>>

<ROUTINE LINE-ERASE (ROW)
    <CURSET .ROW 1>
    <DO (I <LOWCORE SCRH> 1 -1) <PRINTC !\ >>
    <CURSET .ROW 1>>

<ROUTINE PRESS-A-KEY ()
    <TELL CR "[Press a key to continue]" CR>
    <INPUT 1>
    <RETURN>>

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
    <COND (<AND ,CHARACTERS-ENABLED ,CURRENT-CHARACTER>
        <TELL " - " CT ,CURRENT-CHARACTER>
        <CURSET 1 <- .WIDTH 46>>
        <TELL "Life Points: " N ,LIFE-POINTS "/" N ,MAX-LIFE-POINTS>
        <CURSET 1 <- .WIDTH 27>>
        <PRINT-CAP-OBJ ,CURRENCY>
        <TELL ": " N ,MONEY>
    )>
    <CURSET 1 <- .WIDTH 16>>
    <TELL "Moves: " N ,MOVES>
    <SCREEN 0>
    <HLIGHT 0>>
