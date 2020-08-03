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
<CONSTANT R-ALL 6>
<CONSTANT R-SKILL-ITEM 7>
<CONSTANT R-LOSE-ITEM 8>
<CONSTANT R-LOSE-LIFE 9>

<CONSTANT LIMIT-POSSESSIONS 8>

<CONSTANT TWO-NONES <LTABLE R-NONE R-NONE>>
<CONSTANT THREE-NONES <LTABLE R-NONE R-NONE R-NONE>>
<CONSTANT FOUR-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE>>
<CONSTANT FIVE-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE>>
<CONSTANT SIX-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE R-NONE>>

<CONSTANT SELECT-CHOICES <LTABLE NONE NONE NONE NONE NONE NONE NONE NONE NONE>>
<CONSTANT TEMP-LIST <LTABLE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE>>

<CONSTANT GIVE-GIVEN 0>
<CONSTANT GIVE-UNABLE 1>
<CONSTANT GIVE-UNWILLING 2>

<CONSTANT UNWILLING-TO-PART "You were unwilling to part with any.">
<CONSTANT UNABLE-TO-PART "You are unable to part with any.">

<GLOBAL CURRENT-CHARACTER NONE>
<GLOBAL MONEY 0>
<GLOBAL LIFE-POINTS 0>
<GLOBAL MAX-LIFE-POINTS 0>

<GLOBAL CONTINUE-TO-CHOICES T>

<GLOBAL PERIOD-CR ".|">
<GLOBAL EXCLAMATION-CR "!|">

<OBJECT CODEWORDS
    (DESC "Codewords")
    (SYNONYM CODEWORDS)
    (FLAGS CONTBIT OPENBIT)>

<OBJECT ALL-MONEY
    (DESC "all your money")
    (SYNONYM MONEY)
    (ADJECTIVE ALL YOUR)
    (FLAGS TAKEBIT NDESCBIT)>

; "player properties"
<PROPDEF LDESC NONE>
<PROPDEF LIFE-POINTS 0>
<PROPDEF MONEY 0>
<PROPDEF POSSESSIONS NONE>
<PROPDEF REQUIRES NONE>
<PROPDEF SKILLS NONE>

; "story properties"
<PROPDEF STORY NONE>
<PROPDEF CHOICES NONE>
<PROPDEF DESTINATIONS NONE>
<PROPDEF REQUIREMENTS NONE>
<PROPDEF TYPES NONE>
<PROPDEF EVENTS NONE>
<PROPDEF PRECHOICE NONE>
<PROPDEF CONTINUE NONE>
<PROPDEF ITEM NONE>
<PROPDEF CODEWORD NONE>
<PROPDEF COST 0>
<PROPDEF DEATH F>
<PROPDEF VICTORY F>

; "object properties"
<PROPDEF QUANTITY 0>
<PROPDEF STARS 0>

<OBJECT SKILLS
    (DESC "Skills")
    (SYNONYM SKILLS)
    (FLAGS CONTBIT OPENBIT)>

<CONSTANT TEMP-SKILLS <LTABLE NONE NONE>>

<OBJECT VEHICLES
    (DESC "vehicles")
    (SYNONYM VEHICLES)
    (FLAGS CONTBIT OPENBIT)>

<OBJECT GIVEBAG
    (DESC "items to give")
    (SYNONYM BAG)
    (ADJECTIVE GIVE)
    (FLAGS CONTBIT OPENBIT)>

<GLOBAL CURRENT-VEHICLE NONE>
<GLOBAL RUN-ONCE T>

<ROUTINE GAME-BOOK ("AUX" KEY CURRENT-LOC)
    <INSTRUCTIONS>
    <COND (,CHARACTERS-ENABLED
        <RESET-PLAYER>
        <RESET-OBJECTS>
        <RESET-SELECTIONS>
        <RESET-STORY>
        <CHOOSE-CHARACTER>
    )>
    <SETG HERE ,STARTING-POINT>
    <UPDATE-STATUS-LINE>
    <SETG RUN-ONCE T>
    <REPEAT ()
        <CRLF>
        <RESET-CHOICES>
        <COND (,CHARACTERS-ENABLED <CHECK-EVENTS>)>
        <SET CURRENT-LOC ,HERE>
        <GOTO ,HERE>
        <PRINT-PAGE>
        <CHECK-PRECHOICE>
        <COND (<EQUAL? .CURRENT-LOC ,HERE>
            <CHECK-DEATH>
            <CHECK-VICTORY>
        )>
        <COND (<AND ,CHARACTERS-ENABLED ,RUN-ONCE>
            <LOSE-MONEY>
            <GAIN-CODEWORD>
            <GAIN-ITEM>
        )>
        <COND (,CONTINUE-TO-CHOICES
            <SET KEY <PROCESS-STORY>>
            <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\c !\C>> <DESCRIBE-PLAYER> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\g !\G>> <PRINT-SKILLS> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\i !\I>> <DESCRIBE-INVENTORY> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<EQUAL? .KEY !\h !\H !\?> <DISPLAY-HELP> <PRESS-A-KEY> <SET KEY NONE>)>
            <COND (<EQUAL? .KEY !\q !\Q> <CRLF> <TELL "Are you sure you want to quit the game?"> <COND(<YES?> <RETURN>)>)>
            <COND (<EQUAL? .KEY !\s !\S> <CRLF> <TELL "Save current progress?"> <COND (<YES?> <COND (<NOT <SAVE>> <EMPHASIZE "Save failed."> <PRESS-A-KEY>)>)>)>
            <COND (<EQUAL? .KEY !\r !\R> <CRLF> <TELL "Restore from a previous save?"> <COND (<YES?> <COND (<NOT <RESTORE>> <EMPHASIZE "Restore failed."> <PRESS-A-KEY>)>)>)>
            <COND (<EQUAL? .KEY !\x !\X> <CRLF> <RETURN>)>
        )>
        <UPDATE-STATUS-LINE>
    >>

; "Story Routines - print story, process choices"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-PAGE ("OPT" PAGE "AUX" TEXT)
    <COND (<NOT .PAGE> <SET PAGE ,HERE>)>
    <SET TEXT <GETP .PAGE ,P?STORY>>
    <COND (.TEXT
        <CRLF>
        <TELL .TEXT>
        <CRLF>
    )>>

<ROUTINE PROCESS-CHOICES (CHOICES "AUX" DESTINATIONS REQUIREMENTS TYPES KEY CHOICE TYPE LIST)
    <SET DESTINATIONS <GETP ,HERE ,P?DESTINATIONS>>
    <SET REQUIREMENTS <GETP ,HERE ,P?REQUIREMENTS>>
    <SET TYPES <GETP ,HERE ,P?TYPES>>
    <TELL CR "What will you choose? ">
    <REPEAT ()
        <SET KEY <INPUT 1>>
        <COND (<AND <G=? .KEY !\1> <L=? .KEY !\9>>
            <SET CHOICE <- .KEY !\0>>
            <COND (<AND <G=? .CHOICES 1> <L=? .CHOICE <GET .CHOICES 0>>>
                <COND (<AND <G=? .CHOICE 1> <L=? .CHOICE <GET .DESTINATIONS 0>> <L=? .CHOICE <GET .TYPES 0>>>
                    <SET TYPE <GET .TYPES .CHOICE>>
                    <COND (<EQUAL? .TYPE R-NONE>
                        <SETG HERE <GET .DESTINATIONS .CHOICE>>
                        <CRLF>
                    )(<AND <EQUAL? .TYPE R-SKILL> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<OR <IN? <GET .REQUIREMENTS .CHOICE> ,SKILLS> <CHECK-TEMP-SKILLS <GET .REQUIREMENTS .CHOICE>>>
                            <COND (<CHECK-SKILL-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                                <SETG HERE <GET .DESTINATIONS .CHOICE>>
                                <CRLF>
                            )(ELSE
                                <NOT-POSSESSED <SKILL-FIRST-REQUIREMENT <GET .REQUIREMENTS .CHOICE>>>
                            )>
                        )(ELSE
                            <HLIGHT ,H-BOLD>
                            <CRLF><CRLF>
                            <TELL "You do not have " T <GET .REQUIREMENTS .CHOICE> " skill" ,EXCLAMATION-CR>
                            <HLIGHT 0>
                            <PRESS-A-KEY>
                        )>
                    )(<AND <EQUAL? .TYPE R-CODEWORD> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <SET LIST <GET .REQUIREMENTS .CHOICE>>
                        <COND (<CHECK-CODEWORDS .LIST>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )(ELSE
                            <NOT-ALL-ANY R-ALL .LIST ,CODEWORDS>
                        )>
                    )(<AND <EQUAL? .TYPE R-ITEM> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )>
                    )(<AND <EQUAL? .TYPE R-MONEY> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-MONEY <GET .REQUIREMENTS .CHOICE>>
                            <CRLF>
                            <CHARGE-MONEY <GET .REQUIREMENTS .CHOICE>>
                            <PRESS-A-KEY>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                        )>
                    )(<AND <EQUAL? .TYPE R-ANY> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <SET LIST <GET .REQUIREMENTS .CHOICE>>
                        <COND (<CHECK-ANY .LIST>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )(ELSE
                            <NOT-ALL-ANY R-ANY .LIST>
                        )>
                    )(<AND <EQUAL? .TYPE R-ALL> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <SET LIST <GET .REQUIREMENTS .CHOICE>>
                        <COND (<CHECK-ALL .LIST>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )(ELSE
                            <NOT-ALL-ANY R-ALL .LIST>
                        )>
                    )(<AND <EQUAL? .TYPE R-SKILL-ITEM> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <SET LIST <GET .REQUIREMENTS .CHOICE>>
                        <COND (<CHECK-SKILL-ITEM <GET .LIST 1> <GET .LIST 2>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )(ELSE
                            <CRLF><CRLF>
                            <HLIGHT ,H-BOLD>
                            <TELL "You do not have the ">
                            <HLIGHT ,H-ITALIC>
                            <TELL D <GET .LIST 1>>
                            <HLIGHT 0>
                            <HLIGHT ,H-BOLD>
                            <TELL " skill or a">
                            <COND (<FSET? <GET .LIST 2> ,VOWELBIT> <TELL "n">)>
                            <TELL " ">
                            <HLIGHT ,H-ITALIC>
                            <TELL D <GET .LIST 2>>
                            <HLIGHT H-BOLD>
                            <TELL ,PERIOD-CR>
                            <HLIGHT 0>
                        )>
                    )(<AND <EQUAL? .TYPE R-LOSE-ITEM> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                            <CRLF><CRLF>
                            <LOSE-ITEM <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                        )>
                    )(<AND <EQUAL? .TYPE R-LOSE-LIFE> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-LIFE <GET .REQUIREMENTS .CHOICE>>
                            <CRLF><CRLF>
                            <HLIGHT ,H-BOLD>
                            <TELL "You lost " N <GET .REQUIREMENTS .CHOICE> " life points">
                            <TELL ,PERIOD-CR>
                            <HLIGHT 0>
                            <SETG LIFE-POINTS <- ,LIFE-POINTS <GET .REQUIREMENTS .CHOICE>>>
                            <UPDATE-STATUS-LINE>
                            <PRESS-A-KEY>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                        )>
                    )>
                    <RETURN>
                )(ELSE
                    <CRLF>
                    <TELL CR "Internal Error" ,PERIOD-CR>
                    <SET KEY !\q>
                    <RETURN>
                )>
            )>
        )>
        <COND (<SPECIAL-INTERRUPT-ROUTINE .KEY> <RETURN>)>
        <COND (<EQUAL? .KEY !\c !\C !\g !\G !\i !\I !\q !\Q !\h !\H !\? !\r !\R !\s !\S> <CRLF> <RETURN>)>
    >
    <RETURN .KEY>>

<ROUTINE PROCESS-STORY ("AUX" COUNT CHOICES TYPES REQUIREMENTS LIST CONTINUE CURRENT-LOC CHOICE CHOICE-TYPE)
    <SET CHOICES <GETP ,HERE ,P?CHOICES>>
    <SET TYPES <GETP ,HERE ,P?TYPES>>
    <SET REQUIREMENTS <GETP ,HERE ,P?REQUIREMENTS>>
    <SET CONTINUE <GETP ,HERE ,P?CONTINUE>>
    <SET CURRENT-LOC ,HERE>
    <SETG RUN-ONCE T>
    <COND (.CHOICES
        <REPEAT ()
            <CRLF>
            <TELL "You can ">
            <SET COUNT <GET .CHOICES 0>>
            <DO (I 1 .COUNT)
                <SET CHOICE-TYPE <GET .TYPES .I>>
                <COND (.REQUIREMENTS <SET LIST <GET .REQUIREMENTS .I>>)>
                <COND (<AND <EQUAL? .I .COUNT> <G? .COUNT 1>> <TELL "or ">)>
                <HLIGHT ,H-BOLD>
                <TELL N .I ") ">
                <HLIGHT 0>
                <TELL <GET .CHOICES .I>>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-SKILL> .REQUIREMENTS> <TELL " ("> <HLIGHT ,H-ITALIC> <TELL D .LIST> <HLIGHT 0> <TELL ")">)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-CODEWORD> .REQUIREMENTS> <PRINT-CODEWORDS .LIST>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-ITEM> .REQUIREMENTS> <TELL " ("> <HLIGHT ,H-ITALIC> <TELL D .LIST> <HLIGHT 0> <TELL ")">)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-MONEY> .REQUIREMENTS> <TELL " (" N .LIST " " D ,CURRENCY ")">)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-ANY> .REQUIREMENTS> <PRINT-ANY .LIST>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-ALL> .REQUIREMENTS> <PRINT-ALL .LIST>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-SKILL-ITEM> .REQUIREMENTS> <PRINT-ALL .LIST>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-LOSE-ITEM> .REQUIREMENTS> <TELL " ("> <HLIGHT ,H-ITALIC> <TELL D .LIST> <HLIGHT 0> <TELL ")">)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-LOSE-LIFE> .REQUIREMENTS> <TELL " (" N .LIST " life points)">)>
                <COND (<AND <NOT <EQUAL? .COUNT 2>> <L? .I .COUNT> <TELL ", ">>)>
                <COND (<AND <EQUAL? .I 1> <EQUAL? .COUNT 2>> <TELL " ">)>
            >
            <TELL ,PERIOD-CR>
            <SET CHOICE <PROCESS-CHOICES .CHOICES>>
            <COND (.CHOICE <RETURN>)>
        >
        <COND (<EQUAL? .CURRENT-LOC ,HERE> <SETG RUN-ONCE F>)>
        <RETURN .CHOICE>
    )(.CONTINUE
        <SETG HERE .CONTINUE>
        <PRESS-A-KEY>
        <RETURN>
    )>
    <RETURN !\x>>

; "Story - Choice Requirements Validations"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHECK-ALL (ITEMS "OPT" CONTAINER "AUX" COUNT)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (.ITEMS
        <SET COUNT <GET .ITEMS 0>>
        <DO (I 1 .COUNT)
            <COND (<NOT <IN? <GET .ITEMS .I> .CONTAINER>> <RFALSE>)>
        >
    )>
    <RTRUE>>

<ROUTINE CHECK-ANY (ITEMS "OPT" CONTAINER "AUX" COUNT)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (.ITEMS
        <SET COUNT <GET .ITEMS 0>>
        <DO (I 1 .COUNT)
            <COND (<IN? <GET .ITEMS .I> .CONTAINER> <RTRUE>)>
        >
        <RFALSE>
    )>
    <RTRUE>>

<ROUTINE CHECK-CODEWORD (CODEWORD)
    <COND (<NOT .CODEWORD> <RTRUE>)>
    <RETURN <IN? .CODEWORD ,CODEWORDS>>>

<ROUTINE CHECK-CODEWORDS (CODEWORDS)
    <RETURN <CHECK-ALL .CODEWORDS ,CODEWORDS>>>

<ROUTINE CHECK-ITEM (ITEM)
    <COND (<NOT .ITEM> <RTRUE>)>
    <RETURN <IN? .ITEM ,PLAYER>>>

<ROUTINE CHECK-LIFE (AMOUNT)
    <COND (<G? .AMOUNT 0>
        <COND (<L=? ,LIFE-POINTS .AMOUNT>
            <CRLF><CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "You'll die if you do that" ,EXCLAMATION-CR>
            <HLIGHT 0>
            <PRESS-A-KEY>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE CHECK-MONEY (AMOUNT)
    <COND (<G? .AMOUNT 0>
        <COND (<L? ,MONEY .AMOUNT>
            <CRLF><CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "You do not have enough " D ,CURRENCY ,PERIOD-CR>
            <HLIGHT 0>
            <PRESS-A-KEY>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE CHECK-POSSESSIONS (ITEM)
    <COND (.ITEM
        <COND (<NOT <CHECK-ITEM .ITEM>>
            <NOT-POSSESSED .ITEM>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE CHECK-SKILL (SKILL)
    <COND (<OR <IN? .SKILL ,SKILLS> <CHECK-TEMP-SKILLS .SKILL>>
        <RETURN <CHECK-SKILL-POSSESSIONS .SKILL>>
    )>
    <RFALSE>>

<ROUTINE CHECK-SKILL-ITEM (SKILL ITEM "OPT" CONTAINER)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<AND <OR <IN? .SKILL ,SKILLS> <CHECK-TEMP-SKILLS .SKILL>> <IN? .ITEM .CONTAINER>>
        <RETURN <CHECK-SKILL-POSSESSIONS .SKILL>>
    )>>

<ROUTINE CHECK-TEMP-SKILLS (SKILL "AUX" COUNT)
    <COND (.SKILL
        <SET COUNT <GET TEMP-SKILLS 0>>
        <DO (I 1 .COUNT)
            <COND (<EQUAL? <GET TEMP-SKILLS .I> .SKILL>
                <RETURN <CHECK-SKILL-POSSESSIONS .SKILL>>
            )>
        >
        <RFALSE>
    )>
    <RTRUE>>

<ROUTINE CHECK-SKILL-POSSESSIONS (SKILL "AUX" REQUIREMENTS COUNT)
    <SET REQUIREMENTS <GETP .SKILL ,P?REQUIRES>>
    <COND (<NOT .REQUIREMENTS> <RTRUE>)>
    <SET COUNT <GET .REQUIREMENTS 0>>
    <DO (I 1 .COUNT)
        <COND (<CHECK-ITEM <GET .REQUIREMENTS .I>> <RTRUE>)>
    >
    <RFALSE>>

<ROUTINE NOT-ALL-ANY (TYPE LIST "OPT" CONTAINER)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<EQUAL? .TYPE R-ANY R-ALL>
        <HLIGHT ,H-BOLD>
        <CRLF><CRLF>
        <TELL "You do not have ">
        <COND (<EQUAL? .TYPE R-ANY>
            <TELL "any">
        )(<EQUAL? .TYPE R-ALL>
            <TELL "all">
        )> 
        <TELL " of the ">
        <COND (<EQUAL? .CONTAINER ,CODEWORDS>
            <TELL "codewords">
            <HLIGHT 0>
            <PRINT-CODEWORDS .LIST>
        )(ELSE
            <TELL "items">
            <HLIGHT 0>
            <COND (<EQUAL? .TYPE R-ANY>
                <PRINT-ANY .LIST>
            )(<EQUAL? .TYPE R-ALL>
                <PRINT-ALL .LIST>
            )>
        )>
        <HLIGHT 0>
        <CRLF>
        <PRESS-A-KEY>
    )>>

<ROUTINE NOT-POSSESSED (OBJ)
    <CRLF><CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You do not possess " A .OBJ CR>
    <HLIGHT 0>
    <PRESS-A-KEY>>

<ROUTINE SKILL-FIRST-REQUIREMENT (SKILL "AUX" REQUIREMENTS)
    <SET REQUIREMENTS <GETP .SKILL ,P?REQUIRES>>
    <COND (<NOT .REQUIREMENTS> <RETURN NONE>)>
    <RETURN <GET .REQUIREMENTS 1>>>

; "Story - Event Routines (victory/death/prechoice/transition/codeword/story jump events)"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHECK-DEATH ("AUX" DEATH)
    <SET DEATH <GETP ,HERE ,P?DEATH>>
    <COND (.DEATH
        <PRINT-ENDING BAD-ENDING>
        <SETG CONTINUE-TO-CHOICES F>
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
        <SETG CONTINUE-TO-CHOICES F>
    )>>

<ROUTINE GAIN-CODEWORD ("OPT" CODEWORD)    
    <COND (<NOT .CODEWORD> <SET CODEWORD <GETP ,HERE ,P?CODEWORD>>)>
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
    <GAMES-UP>>

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
    <TELL "You are charged " N .COST " " D ,CURRENCY ,PERIOD-CR>
    <HLIGHT 0>
    <SETG MONEY <- ,MONEY .COST>>
    <COND (<L? ,MONEY 0> <SETG MONEY 0>)>
    <UPDATE-STATUS-LINE>>

<ROUTINE GAIN-ITEM ("AUX" ITEM)
    <SET ITEM <GETP ,HERE ,P?ITEM>>
    <TAKE-ITEM .ITEM>>

<ROUTINE GAIN-LIFE (POINTS "AUX" DIFF)
    <COND (<L? ,LIFE-POINTS ,MAX-LIFE-POINTS>
        <SET DIFF <- ,MAX-LIFE-POINTS ,LIFE-POINTS>>
        <CRLF>
        <SETG LIFE-POINTS <+ ,LIFE-POINTS .POINTS>>
        <HLIGHT ,H-BOLD>
        <TELL "You gained ">
        <COND (<G? ,LIFE-POINTS ,MAX-LIFE-POINTS>
            <SETG LIFE-POINTS ,MAX-LIFE-POINTS>
            <TELL N .DIFF>
        )(ELSE
            <TELL N .POINTS>
        )>
        <TELL " life points" ,PERIOD-CR>
        <HLIGHT 0>
    )>>

<ROUTINE GAIN-MONEY (COST)
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You gain " N .COST " " D ,CURRENCY ,PERIOD-CR>
    <HLIGHT 0>
    <SETG MONEY <+ ,MONEY .COST>>
    <UPDATE-STATUS-LINE>>

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
        <TELL "You lost " N .DMG " Life Points">
    )>
    <HLIGHT 0>
    <TELL ,PERIOD-CR>
    <RETURN>>

<ROUTINE REMOVE-ITEM (ITEM REASON)
    <REMOVE .ITEM>
    <HLIGHT ,H-BOLD>
    <TELL "You " .REASON " " T .ITEM ,PERIOD-CR>
    <HLIGHT 0>
    <PRESS-A-KEY>
    <CRLF>
    <RETURN>>

<ROUTINE TAKE-ITEM (ITEM "AUX" QUANTITY)
    <COND (.ITEM
        <CRLF>
        <TELL "[You gained ">
        <HLIGHT ,H-BOLD>
        <TELL A .ITEM>
        <HLIGHT 0>
        <TELL "]" CR>
        <COND (<G=? <COUNT-POSSESSIONS> LIMIT-POSSESSIONS>
            <CRLF>
            <TELL "You are carrying too many items" ,PERIOD-CR>
            <DROP-REPLACE-ITEM .ITEM>
        )(ELSE
            <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
            <COND (<CHECK-ITEM .ITEM>
                <COND (.QUANTITY
                    <PUTP .ITEM ,P?QUANTITY <+ .QUANTITY 1>>
                )>
            )(ELSE
                <COND (.QUANTITY
                    <PUTP .ITEM ,P?QUANTITY 1>
                )>
                <MOVE .ITEM ,PLAYER>
            )>
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
            <TELL "You cannot drop " T .ITEM " because it is required by " T .REQUIRES " skill" ,EXCLAMATION-CR>
            <HLIGHT 0>
            <RFALSE>
        )>
    )>
    <RTRUE>>

<ROUTINE COUNT-CONTAINER (CONTAINER "AUX" COUNT ITEM QUANTITY)
    <SET COUNT 0>
    <SET ITEM <FIRST? .CONTAINER>>
    <REPEAT ()
        <COND (<NOT .ITEM> <RETURN>)>
        <COND (<NOT <FSET? .ITEM ,NDESCBIT>>
            <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
            <COND (<G? .QUANTITY 0>
                <SET COUNT <+ .COUNT .QUANTITY>>
            )(ELSE
                <SET COUNT <+ .COUNT 1>>
            )>
        )>
        <SET ITEM <NEXT? .ITEM>>
    >
    <RETURN .COUNT>>

<ROUTINE COUNT-IN-CONTAINER (LIST CONTAINER "AUX" COUNT ITEMS)
    <SET COUNT 0>
    <SET ITEMS <GET .LIST 0>>
    <DO (I 1 .ITEMS)
        <COND (<IN? <GET .LIST .I> .CONTAINER> <SET COUNT <+ .COUNT 1>>)>
    >
    <RETURN .COUNT>>

<ROUTINE COUNT-POSSESSIONS ()
    <RETURN <COUNT-CONTAINER ,PLAYER>>>

<ROUTINE DROP-REPLACE-ITEM (OBJ "AUX" KEY COUNT ITEM CHOICE QUANTITY)
    <COND (<AND .OBJ <G=? <COUNT-POSSESSIONS> LIMIT-POSSESSIONS>>
        <REPEAT ()
            <CRLF>
            <TELL "Please choose an item to drop:" CR>
            <SET COUNT 0>
            <SET ITEM <FIRST? ,PLAYER>>
            <REPEAT ()
                <COND (<NOT .ITEM> <RETURN>)>
                <COND (<NOT <FSET? .ITEM ,NDESCBIT>>
                    <SET COUNT <+ .COUNT 1>>
                    <HLIGHT ,H-BOLD>
                    <TELL N .COUNT>
                    <HLIGHT 0>
                    <TELL " - " T .ITEM>
                    <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
                    <COND (.QUANTITY <TELL " (" N .QUANTITY ")">)>
                    <CRLF>
                )>
                <SET ITEM <NEXT? .ITEM>>
            >
            <HLIGHT ,H-BOLD>
            <TELL N <+ .COUNT 1>>
            <HLIGHT 0>
            <TELL " - drop " T .OBJ " instead" ,PERIOD-CR>
            <SET KEY <INPUT 1>>
            <COND (<AND <G? .KEY 48> <L? .KEY <+ .COUNT 49>>>
                <SET CHOICE <- .KEY 48>>
                <SET ITEM <GET-ITEM .CHOICE>>
                <COND (.ITEM
                    <CRLF>
                    <TELL "Drop " T .ITEM "?">
                    <COND (<YES?>
                        <COND (<CHECK-DROPS .ITEM>
                            <TELL "You dropped " T .ITEM " and took " T .OBJ CR>
                            <COND (<NOT <EQUAL? .ITEM .OBJ>>
                                <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
                                <COND (.QUANTITY
                                    <SET QUANTITY <- .QUANTITY 1>>
                                    <COND (<G? .QUANTITY 0>
                                        <PUTP .ITEM ,P?QUANTITY .QUANTITY>
                                    )(ELSE
                                        <REMOVE .ITEM>
                                    )>
                                )(ELSE
                                    <REMOVE .ITEM>
                                )>
                                <COND (<CHECK-ITEM .OBJ>
                                    <SET QUANTITY <GETP .OBJ ,P?QUANTITY>>
                                    <COND (.QUANTITY
                                        <PUTP .OBJ ,P?QUANTITY <+ .QUANTITY 1>>
                                    )>
                                )>
                                <MOVE .OBJ ,PLAYER>
                            )>
                            <RETURN>
                        )>
                    )>
                )>
            )(<EQUAL? .KEY <+ .COUNT 49>>
                <CRLF>
                <TELL "Drop " T .OBJ "?">
                <COND (<YES?>
                    <TELL "You dropped " T .OBJ CR>
                    <SET QUANTITY <GETP .OBJ ,P?QUANTITY>>
                    <COND (<NOT .QUANTITY>
                        <REMOVE .OBJ>
                    )>
                    <RETURN>
                )>
            )>
        >
    )>>

<ROUTINE GET-ITEM (ITEM "OPT" CONTAINER "AUX" ITEMS COUNT)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND(<AND .ITEM <G=? <COUNT-CONTAINER .CONTAINER> 0>>
        <SET COUNT 0>
        <SET ITEMS <FIRST? .CONTAINER>>
        <REPEAT ()
            <COND (.ITEMS
                <COND (<NOT <FSET? .ITEMS ,NDESCBIT>>
                    <SET COUNT <+ .COUNT 1>>
                    <COND (<EQUAL? .COUNT .ITEM> <RETURN>)>
                )>
            )(ELSE
                <RETURN>
            )>
            <SET ITEMS <NEXT? .ITEMS>>
        >
        <RETURN .ITEMS>
    )>>

<ROUTINE GIVE-FROM-LIST (LIST UNABLE UNWILLING "OPT" MAX JUMP CONTAINER "AUX" ITEMS COUNT RESULT)
    <RESET-TEMP-LIST>
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<NOT .MAX> <SET MAX 1>)>
    <SET ITEMS <GET .LIST 0>>
    <SET COUNT 0>
    <DO (I 1 .ITEMS)
        <COND (<AND <GET .LIST .I> <IN? <GET .LIST .I> .CONTAINER>>
            <SET COUNT <+ .COUNT 1>>
            <COND (<L=? .COUNT <GET TEMP-LIST 0>>
                <PUT TEMP-LIST .COUNT <GET .LIST .I>>
            )>
        )>
    >
    <COND (<G? .COUNT 1>
        <RESET-GIVEBAG>
        <REPEAT ()
            <TRANSFER-CONTAINER ,GIVEBAG .CONTAINER>
            <SELECT-FROM-LIST TEMP-LIST .COUNT .MAX "item" ,GIVEBAG "give">
            <COND (<NOT <EQUAL? <COUNT-CONTAINER ,GIVEBAG> .MAX>>
                <COND (<AND <EQUAL? .MAX <+ <COUNT-CONTAINER ,GIVEBAG> 1>> <IN? ,ALL-MONEY ,GIVEBAG> <INTBL? ,ALL-MONEY .LIST <+ <GET .LIST 0> 1>>>
                    <COND (<G? ,MONEY 0>
                        <CRLF>
                        <TELL "Are you sure?">
                        <COND (<YES?>
                            <YOU-GAVE ,ALL-MONEY>
                            <COND (.JUMP
                                <STORY-JUMP .JUMP>
                                <SETG MONEY 0>
                                <MOVE ,ALL-MONEY ,PLAYER>
                            )>
                            <SET RESULT GIVE-GIVEN>
                            <RETURN>
                        )>
                    )(ELSE
                        <TRANSFER-CONTAINER ,GIVEBAG .CONTAINER>
                        <SET RESULT GIVE-UNABLE>
                        <RETURN>
                    )>
                )>
                <TRANSFER-CONTAINER ,GIVEBAG .CONTAINER>
                <EMPHASIZE .UNWILLING>
                <SET RESULT GIVE-UNWILLING>
                <RETURN>
            )(ELSE
                <CRLF>
                <TELL "Are you sure?">
                <COND (<YES?>
                    <YOU-GAVE>
                    <COND (.JUMP <STORY-JUMP .JUMP>)>
                    <SET RESULT GIVE-GIVEN>
                    <RETURN>
                )>
            )>
        >
        <RETURN .RESULT>
    )(ELSE
        <EMPHASIZE .UNABLE>
        <RETURN GIVE-UNABLE>
    )>>

<ROUTINE IF-ALIVE (TEXT)
    <COND (<IS-ALIVE> <TELL CR .TEXT CR>)>>

<ROUTINE IS-ALIVE ("OPT" THRESHOLD)
    <COND (<NOT .THRESHOLD> <SET THRESHOLD 0>)>
    <COND (<G? ,LIFE-POINTS .THRESHOLD> <RTRUE>)>
    <RFALSE>>

<ROUTINE RESET-TEMP-LIST ("AUX" ITEMS)
    <SET ITEMS <GET TEMP-LIST 0>>
    <DO (I 1 .ITEMS)
        <PUT TEMP-LIST .I NONE>
    >>

<ROUTINE SELECT-FROM-LIST (LIST ITEMS MAX "OPT" DESC CONTAINER ACTION "AUX" KEY COUNT CHOICE)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<NOT .ACTION> <SET ACTION "take">)>
    <SET COUNT 0>
    <COND (<NOT .DESC> <SET DESC "item">)>
    <RESET-SELECTIONS>
    <REPEAT ()
        <CRLF>
        <COND (<EQUAL? .CONTAINER ,PLAYER>
            <TELL "You are already carrying " N <COUNT-POSSESSIONS> " items in your inventory" ,PERIOD-CR>
        )>
        <TELL "You can select up to " N .MAX " " .DESC "s from:" CR>
        <DO (I 1 .ITEMS)
            <HLIGHT ,H-BOLD>
            <COND (<L? .I 10>
                <TELL N .I>
            )(ELSE
                <TELL C <+ <- .I 10> !\A>>
            )>
            <HLIGHT 0>
            <TELL " - [">
            <COND (<INTBL? <GET .LIST .I> SELECT-CHOICES 10> <TELL "X">)(ELSE <TELL " ">)>
            <TELL "] - " D <GET .LIST .I> CR>
        >
        <COND (<AND <EQUAL? .CONTAINER ,PLAYER> <L? .ITEMS 12>> <HLIGHT ,H-BOLD> <TELL "C"> <HLIGHT 0> <TELL " - View your character (" D ,CURRENT-CHARACTER ")" CR>)>
        <COND (<AND <EQUAL? .CONTAINER ,SKILLS> <L? .ITEMS 16>> <HLIGHT ,H-BOLD> <TELL "G"> <HLIGHT 0> <TELL " - Display skills glossary" CR>)>
        <HLIGHT ,H-BOLD>
        <TELL "0">
        <HLIGHT 0>
        <TELL " - I'm alright with my choices" ,PERIOD-CR>
        <TELL "Select which " .DESC "(s) to ">
        <TELL .ACTION>
        <TELL ":" CR>
        <SET KEY <INPUT 1>>
        <COND (<EQUAL? .KEY !\0>
            <COND (<L? .COUNT .MAX>
                <TELL CR "Are you sure?">
                <COND(<YES?> <RETURN>)>
            )(ELSE
                <RETURN>
            )>
        )>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,PLAYER> <L? .ITEMS 12> <EQUAL? .KEY !\c !\C>> <DESCRIBE-PLAYER> <PRESS-A-KEY>)>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,SKILLS> <L? .ITEMS 16> <EQUAL? .KEY !\G !\g>> <PRINT-SKILLS> <PRESS-A-KEY>)>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,PLAYER> <L? .ITEMS 18> <EQUAL? .KEY !\i !\I>> <DESCRIBE-INVENTORY> <PRESS-A-KEY>)>
        <COND (<OR <AND <G=? .KEY !\1> <L=? .KEY !\9>> <AND <G=? .KEY !\a> <L=? .KEY !\f>> <AND <G=? .KEY !\A> <L=? .KEY !\F>>>
            <COND (<AND <G=? .KEY !\a> <L=? .KEY !\f>>
                <SET CHOICE <+ <- .KEY !\a> 10>> 
            )(<AND <G=? .KEY !\A> <L=? .KEY !\F>>
                <SET CHOICE <+ <- .KEY !\A> 10>>
            )(ELSE
                <SET CHOICE <- .KEY !\0>>
            )>
            <COND (<L=? .CHOICE .ITEMS>
                <COND (<INTBL? <GET .LIST .CHOICE> SELECT-CHOICES 10>
                    <PUT SELECT-CHOICES <GET-INDEX SELECT-CHOICES <GET .LIST .CHOICE>> NONE>
                    <SET COUNT <- .COUNT 1>>
                )(ELSE
                    <COND (<EQUAL? .COUNT .MAX>
                        <CRLF>
                        <HLIGHT ,H-BOLD>
                        <TELL "You have already selected " N .MAX " " .DESC "s" ,EXCLAMATION-CR>
                        <HLIGHT 0>
                    )(ELSE
                        <SET COUNT <+ .COUNT 1>>
                        <PUT SELECT-CHOICES <GET-INDEX SELECT-CHOICES NONE> <GET .LIST .CHOICE>>
                    )>
                )>
            )>
        )>
    >
    <COND (<G? .COUNT 0>
        <DO (I 1 9)
            <COND (<GET SELECT-CHOICES .I>
                <COND (<EQUAL? .CONTAINER ,PLAYER>
                    <TAKE-ITEM <GET SELECT-CHOICES .I>>
                )(ELSE
                    <MOVE <GET SELECT-CHOICES .I> .CONTAINER>
                )>
            )>
        >
    )>
    <RETURN>>

<ROUTINE SKILL-SWAP (LIST "AUX" COUNT ITEMS SKILLS MY-SKILLS)
    <COND (<NOT .LIST> <RETURN>)>
    <SET ITEMS <GET .LIST 0>>
    <COND (<NOT .ITEMS> <RETURN>)>
    <SET COUNT 0>
    <SET MY-SKILLS <LTABLE NONE NONE NONE NONE NONE NONE NONE NONE>>
    <SET SKILLS <FIRST? ,SKILLS>>
    <REPEAT ()
        <COND (<NOT .SKILLS> <RETURN>)>
        <SET COUNT <+ .COUNT 1>>
        <PUT .MY-SKILLS .COUNT .SKILLS>
        <SET SKILLS <NEXT? .SKILLS>>
    >
    <DO (I 1 .ITEMS)
        <COND (<NOT <INTBL? <GET .LIST .I> .MY-SKILLS 9>>
            <SET COUNT <+ .COUNT 1>>
            <PUT .MY-SKILLS .COUNT <GET .LIST .I>>
        )>
    >
    <COND (<EQUAL? .COUNT 4> <RETURN>)>
    <REPEAT ()
        <RESET-SKILLS>
        <SELECT-FROM-LIST .MY-SKILLS .COUNT 4 "skill" ,SKILLS>
        <COND (<AND <EQUAL? <COUNT-CONTAINER ,SKILLS> 4> <CHECK-ALL .LIST ,SKILLS>> <RETURN>)>
        <COND (<NOT <EQUAL? <COUNT-CONTAINER ,SKILLS> 4>>
            <EMPHASIZE "You must select 4 skills!">
            <PRESS-A-KEY>
        )(ELSE <COND (<NOT <CHECK-ALL .LIST ,SKILLS>>)>
            <CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "You must also include these skills">
            <HLIGHT 0>
            <PRINT-ALL .LIST>
            <CRLF>
            <PRESS-A-KEY>
        )>
    >>

<ROUTINE YOU-GAVE ("OPT" ITEM)
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You gave: ">
    <HLIGHT 0>
    <COND (.ITEM
        <TELL D .ITEM CR>
    )(ELSE
        <PRINT-CONTAINER ,GIVEBAG>
    )>>

; "Story - Merchant routines (display)"
; ---------------------------------------------------------------------------------------------
<ROUTINE MERCHANT (WARES PRICELIST "OPT" CONTAINER "AUX" ITEM ITEMS KEY)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<OR <NOT .WARES> <NOT .PRICELIST>> <RETURN>)>
    <SET ITEMS <GET .WARES 0>>
    <REPEAT ()
        <CRLF>
        <TELL "You can buy anything you have money for:" CR>
        <DO (I 1 .ITEMS)
            <HLIGHT ,H-BOLD>
            <TELL N .I>
            <HLIGHT 0>
            <TELL " - " D <GET .WARES .I> " (" N <GET .PRICELIST .I> " " D ,CURRENCY ")" CR>
        >
        <HLIGHT ,H-BOLD>
        <TELL "0">
        <HLIGHT 0>
        <TELL " - Bye" CR>
        <TELL "You are carrying " N ,MONEY " " D ,CURRENCY ": ">
        <SET KEY <INPUT 1>>
        <CRLF>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\c !\C>> <DESCRIBE-PLAYER> <PRESS-A-KEY> <SET KEY NONE>)>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\i !\I> <EQUAL? .CONTAINER ,PLAYER>> <DESCRIBE-INVENTORY> <PRESS-A-KEY> <SET KEY NONE>)>
        <COND (<AND <G? .KEY 48> <L? .KEY <+ .ITEMS 49>>>
            <SET ITEM <- .KEY 48>>
            <CRLF>
            <TELL "Purchase " D <GET .WARES .ITEM> " (" N <GET .PRICELIST .ITEM> " " D ,CURRENCY ")?">
            <COND (<YES?>
                <CRLF>
                <HLIGHT ,H-BOLD>
                <COND (<L? ,MONEY <GET .PRICELIST .ITEM>>
                    <TELL "You can't afford " T <GET .WARES .ITEM> ,EXCLAMATION-CR>
                )(ELSE
                    <COND (<FSET? <GET .WARES .ITEM> ,TAKEBIT>
                        <COND (<IN? <GET .WARES .ITEM> .CONTAINER>
                            <TELL "You already have " T <GET .WARES .ITEM> ,EXCLAMATION-CR>
                        )(ELSE
                            <SETG MONEY <- ,MONEY <GET .PRICELIST .ITEM>>>
                            <TELL "You bought " T <GET .WARES .ITEM> CR>
                            <COND (<AND <EQUAL? .CONTAINER ,PLAYER> <EQUAL? <COUNT-POSSESSIONS> LIMIT-POSSESSIONS> <NOT <IN? <GET .WARES .ITEM> .CONTAINER>>>
                                <CRLF>
                                <TELL "You are carrying too many items." CR>
                                <DROP-REPLACE-ITEM <GET .WARES .ITEM>>
                            )(ELSE
                                <MOVE <GET .WARES .ITEM> .CONTAINER>
                            )>
                        )>
                    )(ELSE
                        <TELL "You can't have that" ,EXCLAMATION-CR>
                    )>
                )>
                <HLIGHT 0>
            )>
        )>
        <UPDATE-STATUS-LINE>
        <COND (<EQUAL? .KEY !\0>
            <CRLF>
            <TELL "Are you sure?">
            <COND (<YES?> <RTRUE>)>            
        )>
    >>

; "Story - Support Routines (display)"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-ALL (ITEMS)
    <PRINT-LIST .ITEMS "and ">>

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
                <COND (<G? .I 1>
                    <COND (<NOT <EQUAL? .COUNT 2>>
                        <TELL ", ">
                    )(ELSE
                        <TELL " ">
                    )>
                )> 
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
            <TELL ,PERIOD-CR>
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
        <COND (<FIRST? VEHICLES>
            <CRLF>
            <HLIGHT ,H-BOLD>
            <PRINT-CAP-OBJ ,VEHICLE>
            <TELL ": ">
            <HLIGHT 0>
            <PRINT-CONTAINER ,VEHICLES>
        )>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <PRINT-CAP-OBJ ,CURRENCY>
        <HLIGHT 0>
        <TELL ": ">
        <TELL N ,MONEY CR>
    )>>

<ROUTINE PRINT-CONTAINER (CONTAINER "AUX" COUNT ITEMS)
    <SET COUNT 0>
    <SET ITEMS <FIRST? .CONTAINER>>
    <COND (.ITEMS
        <REPEAT ()
            <COND (.ITEMS
                <COND (<NOT <FSET? .ITEMS ,NDESCBIT>>
                    <COND (<G? .COUNT 0> <TELL ", ">)>
                    <HLIGHT ,H-ITALIC>
                    <TELL D .ITEMS>
                    <HLIGHT 0>
                    <COND (<GETP .ITEMS ,P?QUANTITY>
                        <TELL " (" N <GETP .ITEMS ,P?QUANTITY> ")">
                    )>
                    <COND (<GETP .ITEMS ,P?STARS>
                        <TELL " (" N <GETP .ITEMS ,P?STARS> " stars)">
                    )>
                    <COND (<AND <FSET? .ITEMS ,WEARBIT> <FSET? .ITEMS ,WORNBIT>>
                        <TELL " (worn)">
                    )>
                    <SET COUNT <+ .COUNT 1>>
                )>
            )(ELSE
                <RETURN>
            )>
            <SET ITEMS <NEXT? .ITEMS>>
        >
    )>
    <COND (<G? .COUNT 0>
        <CRLF>
    )(ELSE
        <TELL "None" CR>
    )>>

<ROUTINE TRANSFER-CONTAINER (FROM TO "AUX" ITEM NEXT)
    <COND (<COUNT-CONTAINER .FROM>
        <SET ITEM <FIRST? .FROM>>
        <REPEAT ()
            <COND (<NOT .ITEM> <RETURN>)>
            <SET NEXT <NEXT? .ITEM>>
            <MOVE .ITEM .TO>
            <SET ITEM .NEXT>
        >
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
                <HLIGHT ,H-BOLD>
                <TELL N .I>
                <HLIGHT 0>
                <TELL " - " D <GET CHARACTERS .I> CR>
            >
            <HLIGHT ,H-BOLD>
            <TELL "C">
            <HLIGHT 0>
            <TELL " - Custom character" CR>
            <TELL "Select which character?">
            <SET KEY <INPUT 1>>
            <COND (<AND <G=? .KEY !\1> <L=? .KEY !\9>>
                <SET CHOICE <- .KEY !\0>>
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
                        <MOVE ,ALL-MONEY ,PLAYER>
                        <TELL CR "You have selected " CT ,CURRENT-CHARACTER CR>
                        <TELL CR "[Press a key to begin]" CR>
                        <INPUT 1>
                        <RETURN>
                    )>
                )(ELSE
                    <CRLF>
                )>
            )(<EQUAL? .KEY !\C !\c>
                <CREATE-CHARACTER>
                <TELL CR "You have created a custom character" ,PERIOD-CR>
                <TELL CR "[Press a key to begin]" CR>
                <INPUT 1>
                <RETURN>
            )(ELSE
                <CRLF>
            )>
        >
    )>>

<ROUTINE CREATE-CHARACTER ("AUX" SKILL REQUIREMENT)
    <CRLF>
    <REPEAT ()
        <RESET-SKILLS>
        <SELECT-FROM-LIST ,SKILL-GLOSSARY <GET ,SKILL-GLOSSARY 0> 4 "skill" ,SKILLS>
        <COND (<EQUAL? <COUNT-CONTAINER ,SKILLS> 4>
            <CRLF>
            <TELL "You have selected: ">
            <PRINT-CONTAINER ,SKILLS>
            <CRLF>
            <TELL "Start the game with this character?">
            <COND (<YES?> <RETURN>)>
        )(ELSE
            <CRLF>
            <HLIGHT ,H-BOLD>
            <TELL "You must select 4 skills" ,PERIOD-CR>
            <HLIGHT 0>
        )>
    >
    <SET SKILL <FIRST? ,SKILLS>>
    <REPEAT ()
        <COND (<NOT .SKILL> <RETURN>)>
        <SET REQUIREMENT <GETP .SKILL ,P?REQUIRES>>
        <COND (.REQUIREMENT
            <MOVE <GET .REQUIREMENT 1> ,PLAYER>
        )>
        <SET SKILL <NEXT? .SKILL>>
    >
    <SETG CURRENT-CHARACTER ,CHARACTER-CUSTOM>
    <SETG MONEY <GETP ,CHARACTER-CUSTOM ,P?MONEY>>
    <SETG LIFE-POINTS <GETP ,CHARACTER-CUSTOM ,P?LIFE-POINTS>>
    <SETG MAX-LIFE-POINTS ,LIFE-POINTS>
    <MOVE ,ALL-MONEY ,PLAYER>>

<ROUTINE DESCRIBE-CHARACTER (CHARACTER "AUX" COUNT SKILLS POSSESSIONS QUANTITY)
    <COND (.CHARACTER
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL CT .CHARACTER CR>
        <HLIGHT 0>
        <COND (<GETP .CHARACTER ,P?LDESC>
            <CRLF>
            <TELL <GETP .CHARACTER ,P?LDESC> ,PERIOD-CR>
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
                    <TELL <GETP <GET .SKILLS .I> P?LDESC> ,PERIOD-CR>
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
        )(ELSE
            <TELL "None">
        )>
        <CRLF>
        <COND (<GETP .CHARACTER ,P?MONEY>
            <CRLF>
            <HLIGHT ,H-BOLD>
            <PRINT-CAP-OBJ ,CURRENCY>
            <HLIGHT 0>
            <TELL ": " N <GETP .CHARACTER ,P?MONEY>>
            <CRLF>
        )>
    )>>

<ROUTINE PRINT-SKILLS ("AUX" COUNT)
    <SET COUNT <GET SKILL-GLOSSARY 0>>
    <COND (<G? .COUNT 0>
        <CRLF>
        <DO (I 1 .COUNT)
            <HLIGHT ,H-ITALIC>
            <TELL D <GET SKILL-GLOSSARY .I> CR>
            <HLIGHT 0>
            <TELL <GETP <GET SKILL-GLOSSARY .I> P?LDESC> ,PERIOD-CR>
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
    <RESET-CONTAINER ,SKILLS>
    <RESET-TEMP-SKILLS>>

<ROUTINE RESET-TEMP-SKILLS ("AUX" COUNT)
    <SET COUNT <GET TEMP-SKILLS 0>>
    <DO (I 1 .COUNT)
        <PUT TEMP-SKILLS .COUNT NONE>
    >>

<ROUTINE RESET-GIVEBAG ()
    <RESET-CONTAINER ,GIVEBAG>>

<ROUTINE RESET-PLAYER ()
    <SETG CURRENT-CHARACTER NONE>
    <SETG MONEY 0>
    <SETG LIFE-POINTS 0>
    <SETG MAX-LIFE-POINTS 0>
    <RESET-POSSESSIONS>
    <RESET-CODEWORDS>
    <RESET-SKILLS>
    <RESET-GIVEBAG>>

; "System/Utility/Miscellaneous routines"
; ---------------------------------------------------------------------------------------------
<ROUTINE EMPHASIZE (TEXT)
    <COND (.TEXT
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL .TEXT>
        <HLIGHT 0>
        <CRLF>
    )>>

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

<ROUTINE GAMES-UP ("OPT" TEXT "AUX" W)
    <COND (.TEXT <TELL .TEXT CR>)>
    <CRLF>
    <PRINT-GAME-OVER>
    <CRLF>
    <REPEAT PROMPT ()
        <PRINTI "Would you like to RESTART or QUIT? > ">
        <REPEAT ()
            <READLINE>
            <SET W <AND <GETB ,LEXBUF 1> <GET ,LEXBUF 1>>>
            <COND (<EQUAL? .W ,W?RESTART>
                <RESTART>
            )(<EQUAL? .W ,W?QUIT>
                <QUIT-MSG>
            )(T
                <TELL CR "(Please type RESTART or QUIT) > ">
            )>
        >
    >>

<ROUTINE LINE-ERASE (ROW)
    <CURSET .ROW 1>
    <DO (I <LOWCORE SCRH> 1 -1) <PRINTC !\ >>
    <CURSET .ROW 1>>

<ROUTINE PRESS-A-KEY ()
    <TELL CR "[Press a key to continue]" CR>
    <INPUT 1>
    <RETURN>>

<ROUTINE UPDATE-STATUS-LINE ("AUX" WIDTH)
    <COND (,CHARACTERS-ENABLED <SPLIT 2>)(ELSE <SPLIT 1>)>
    <SCREEN 1>
    <SET WIDTH <LOWCORE SCRH>>
    <HLIGHT ,H-INVERSE>
    <LINE-ERASE 1>
    <COND (,HERE
        <CURSET 1 1>
        <TELL D ,HERE>
        <COND (<AND ,CHARACTERS-ENABLED ,CURRENT-CHARACTER>
            <COND (,CURRENT-VEHICLE <TELL " " D ,CURRENT-VEHICLE>)>
            <CURSET 1 <- .WIDTH 16>>
            <TELL "Life: " N ,LIFE-POINTS "/" N ,MAX-LIFE-POINTS>
            <LINE-ERASE 2>
            <CURSET 2 1>
            <PRINT-CAP-OBJ ,CURRENT-CHARACTER>
            <CURSET 2 <- .WIDTH 16>>
            <PRINT-CAP-OBJ ,CURRENCY>
            <COND (<G? ,MONEY 9999>
                <TELL ": lots">
            )(ELSE
                <TELL ": " N ,MONEY>
            )>
        )>
    )>
    <SCREEN 0>
    <HLIGHT 0>>

<ROUTINE QUIT-MSG ()
    <TELL CR "Thanks for playing" ,PERIOD-CR>
    <QUIT>>
