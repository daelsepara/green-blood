<INSERT-FILE "instructions">
<INSERT-FILE "player">
<INSERT-FILE "objects">
<INSERT-FILE "codewords">
<INSERT-FILE "numbers">
<INSERT-FILE "currency">
<INSERT-FILE "common">
<INSERT-FILE "endings">

<SET REDEFINE T>

; "'FALSE' constants"
<CONSTANT F <>>

<CONSTANT NONE F>

; "requirement types"
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
<CONSTANT R-GAIN-CODEWORD 10>
<CONSTANT R-DISCHARGE 11>
<CONSTANT LIMIT-POSSESSIONS 8>

; "choice types helper"
<CONSTANT TWO-NONES <LTABLE R-NONE R-NONE>>
<CONSTANT THREE-NONES <LTABLE R-NONE R-NONE R-NONE>>
<CONSTANT FOUR-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE>>
<CONSTANT FIVE-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE>>
<CONSTANT SIX-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE R-NONE>>

; "list selection constants"
; ---------------------------------------------------------------------------------------------
<CONSTANT SELECT-CHOICES <LTABLE NONE NONE NONE NONE NONE NONE NONE NONE NONE>>
<CONSTANT TEMP-LIST <LTABLE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE NONE>>

; "give action constants"
; ---------------------------------------------------------------------------------------------
<CONSTANT GIVE-GIVEN 0>
<CONSTANT GIVE-UNABLE 1>
<CONSTANT GIVE-UNWILLING 2>
<CONSTANT UNWILLING-TO-PART "You were unwilling to part with any.">
<CONSTANT UNABLE-TO-PART "You are unable to part with any.">

; "temporary skills manipulation"
; ---------------------------------------------------------------------------------------------
<CONSTANT TEMP-SKILLS <LTABLE NONE NONE>>

; "game globals"
; ---------------------------------------------------------------------------------------------
<GLOBAL CHARACTERS-ENABLED T>
<GLOBAL CURRENT-CHARACTER NONE>
<GLOBAL MONEY 0>
<GLOBAL LIFE-POINTS 0>
<GLOBAL MAX-LIFE-POINTS 0>
<GLOBAL CURRENT-VEHICLE NONE>

; "story lock(s) globals"
; ---------------------------------------------------------------------------------------------
<GLOBAL RUN-ONCE T>
<GLOBAL CONTINUE-TO-CHOICES T>

; "TELL globals"
; ---------------------------------------------------------------------------------------------
<GLOBAL PERIOD-CR ".|">
<GLOBAL EXCLAMATION-CR "!|">

; "player properties"
; ---------------------------------------------------------------------------------------------
<PROPDEF LDESC NONE>
<PROPDEF LIFE-POINTS 0>
<PROPDEF MONEY 0>
<PROPDEF POSSESSIONS NONE>
<PROPDEF REQUIRES NONE>
<PROPDEF SKILLS NONE>

; "story properties"
; ---------------------------------------------------------------------------------------------
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
; ---------------------------------------------------------------------------------------------
<PROPDEF QUANTITY -1>
<PROPDEF CHARGES -1>
<PROPDEF STARS 0>

<OBJECT SKILLS
    (DESC "Skills")
    (SYNONYM SKILLS)
    (FLAGS CONTBIT OPENBIT)>

<OBJECT CODEWORDS
    (DESC "Codewords")
    (SYNONYM CODEWORDS)
    (FLAGS CONTBIT OPENBIT)>

<OBJECT ALL-MONEY
    (DESC "all your money")
    (SYNONYM MONEY)
    (ADJECTIVE ALL YOUR)
    (FLAGS TAKEBIT NDESCBIT)>

<OBJECT GIVEBAG
    (DESC "items to give")
    (SYNONYM BAG)
    (ADJECTIVE GIVE)
    (FLAGS CONTBIT OPENBIT)>

<OBJECT LOST-BAG
	(DESC "stuff lost")
	(SYNONYM BAG)
	(ADJECTIVE LOST)
	(FLAGS CONTBIT OPENBIT)>

; "pause routines"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRESS-BEGIN ()
    <TELL CR "[Press a key to begin]" CR>
    <INPUT 1>>

<ROUTINE PRESS-A-KEY ()
    <TELL CR "[Press a key to continue]" CR>
    <INPUT 1>>

; "container manipulation"
; ---------------------------------------------------------------------------------------------
<ROUTINE COUNT-CONTAINER (CONTAINER "AUX" COUNT ITEM QUANTITY REMOVE)
    <SET COUNT 0>
    <SET ITEM <FIRST? .CONTAINER>>
    <REPEAT ()
        <SET REMOVE NONE>
        <COND (<NOT .ITEM> <RETURN>)>
        <COND (<NOT <FSET? .ITEM ,NDESCBIT>>
            <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
            <COND (<G? .QUANTITY 0>
                <SET COUNT <+ .COUNT .QUANTITY>>
            )(<EQUAL? .QUANTITY 0>
                <PUTP .ITEM ,P?QUANTITY 1>
                <SET REMOVE .ITEM>
            )(ELSE
                <INC .COUNT>
            )>
        )>
        <SET ITEM <NEXT? .ITEM>>
        <COND (.REMOVE <REMOVE .REMOVE>)> ; "remove objects with 0 quantities"
    >
    <RETURN .COUNT>>

; "italicize"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-ITALIC (TEXT)
    <COND(.TEXT
        <HLIGHT ,H-ITALIC>
        <TELL D .TEXT>
        <HLIGHT 0>
    )>>

; "print bold-faced text"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-BOLD (TEXT)
    <COND (.TEXT
        <HLIGHT ,H-BOLD>
        <TELL .TEXT>
        <HLIGHT 0>
    )>>

<ROUTINE EMPHASIZE (TEXT "OPT" (ADD-PERIOD-CR F))
    <COND (.TEXT
        <CRLF>
        <PRINT-BOLD .TEXT>
        <COND(.ADD-PERIOD-CR <PRINT-BOLD ,PERIOD-CR>)>
        <COND(<NOT .ADD-PERIOD-CR> <CRLF>)>
    )>>

<ROUTINE PAUSE-MESSAGE (MSG)
    <EMPHASIZE .MSG T>
    <PRESS-A-KEY>>

; "print routines (lists/containers)"
; ---------------------------------------------------------------------------------------------
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
                <COND (<AND <G? .COUNT 1> <EQUAL? .I .COUNT> .LASTFIX> <TELL .LASTFIX>)>
                <PRINT-ITALIC <GET .ITEMS .I>>
            >
            <TELL ")">
        )>
    )>>

<ROUTINE PRINT-ALL (ITEMS)
    <PRINT-LIST .ITEMS "and ">>

<ROUTINE PRINT-ANY (ITEMS)
    <PRINT-LIST .ITEMS "or ">>

<ROUTINE PRINT-CODEWORDS (CODEWORDS)
    <PRINT-LIST .CODEWORDS "and ">>

<ROUTINE PRINT-CONTAINER (CONTAINER "AUX" COUNT ITEMS)
    <COUNT-CONTAINER .CONTAINER>
    <SET COUNT 0>
    <SET ITEMS <FIRST? .CONTAINER>>
    <COND (.ITEMS
        <REPEAT ()
            <COND (.ITEMS
                <COND (<NOT <FSET? .ITEMS ,NDESCBIT>>
                    <COND (<G? .COUNT 0> <TELL ", ">)>
                    <PRINT-ITALIC .ITEMS>
                    <COND (<G=? <GETP .ITEMS ,P?QUANTITY> 0>
                        <TELL " (" N <GETP .ITEMS ,P?QUANTITY> ")">
                    )>
                    <COND (<G=? <GETP .ITEMS ,P?CHARGES> 0>
                        <TELL " (" N <GETP .ITEMS ,P?CHARGES> " charges left)">
                    )>
                    <COND (<G? <GETP .ITEMS ,P?STARS> 0>
                        <TELL " (" N <GETP .ITEMS ,P?STARS> " stars)">
                    )>
                    <COND (<AND <FSET? .ITEMS ,WEARBIT> <FSET? .ITEMS ,WORNBIT>>
                        <TELL " (worn)">
                    )>
                    <INC .COUNT>
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

; "story - choice requirements validations"
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

<ROUTINE CHECK-CHARGES (ITEM "AUX" CHARGES)
    <COND (<NOT .ITEM> <RTRUE>)>
    <SET CHARGES <GETP .ITEM ,P?CHARGES>>
    <COND (<L? .CHARGES 0>
        <RTRUE>
    )(<G? .CHARGES 0>
        <RTRUE>
    )>
    <RFALSE>>

<ROUTINE CHECK-CODEWORD (CODEWORD)
    <COND (<NOT .CODEWORD> <RTRUE>)>
    <RETURN <IN? .CODEWORD ,CODEWORDS>>>

<ROUTINE CHECK-CODEWORDS (CODEWORDS)
    <RETURN <CHECK-ALL .CODEWORDS ,CODEWORDS>>>

<ROUTINE CHECK-ITEM (ITEM "AUX" QUANTITY)
    <COND (<NOT .ITEM> <RTRUE>)>
    <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
    <COND (<L? .QUANTITY 0>
        <RETURN <IN? .ITEM ,PLAYER>>
    )(ELSE
        <RETURN <AND <IN? .ITEM ,PLAYER> <G? .QUANTITY 0>>>
    )>>

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
    <COND (<OR <AND <G? .AMOUNT 0> <L? ,MONEY .AMOUNT>> <L=? ,MONEY 0>>
        <CRLF><CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "You do not have enough " D ,CURRENCY ,PERIOD-CR>
        <HLIGHT 0>
        <PRESS-A-KEY>
        <RFALSE>
    )>
    <RTRUE>>

<ROUTINE NOT-POSSESSED (OBJ)
    <CRLF><CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You do not possess " A .OBJ ,PERIOD-CR>
    <HLIGHT 0>
    <PRESS-A-KEY>>

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
    <COND (<OR <NOT .SKILL> <NOT .ITEM>> <RTRUE>)>
    <COND (<AND <OR <IN? .SKILL ,SKILLS> <CHECK-TEMP-SKILLS .SKILL>> <IN? .ITEM .CONTAINER>>
        <RETURN <CHECK-SKILL-POSSESSIONS .SKILL>>
    )>
    <RFALSE>>

<ROUTINE CHECK-SKILL-POSSESSIONS (SKILL "AUX" REQUIREMENTS COUNT)
    <SET REQUIREMENTS <GETP .SKILL ,P?REQUIRES>>
    <COND (<NOT .REQUIREMENTS> <RTRUE>)>
    <SET COUNT <GET .REQUIREMENTS 0>>
    <DO (I 1 .COUNT)
        <COND (<CHECK-ITEM <GET .REQUIREMENTS .I>> <RTRUE>)>
    >
    <RFALSE>>

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

<ROUTINE NOT-ALL-ANY (TYPE LIST "OPT" CONTAINER "AUX" COUNT)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<EQUAL? .TYPE R-ANY R-ALL>
        <SET COUNT <GET .LIST 0>>
        <HLIGHT ,H-BOLD>
        <CRLF>
        <TELL CR "You do not have ">
        <COND (<G? .COUNT 1>
            <COND (<EQUAL? .TYPE R-ANY>
                <TELL "any">
            )(<EQUAL? .TYPE R-ALL>
                <TELL "all">
            )>
            <TELL " of the">
        )(<EQUAL? .CONTAINER ,CODEWORDS>
            <TELL "the">
        )(<FSET? <GET .LIST 1> ,VOWELBIT>
            <TELL "an">
        )(ELSE
            <TELL "a">
        )>
        <TELL " ">
        <COND (<EQUAL? .CONTAINER ,CODEWORDS>
            <TELL "codeword">
            <COND (<G? .COUNT 1>
                <TELL "s">
                <HLIGHT 0>
                <PRINT-CODEWORDS .LIST>
            )(ELSE
                <TELL " ">
                <HLIGHT 0>
                <PRINT-ITALIC <GET .LIST 1>>
                <TELL ,PERIOD-CR>
            )>
        )(ELSE
            <COND (<G? .COUNT 1>
                <TELL "items">
                <HLIGHT 0>
                <COND (<EQUAL? .TYPE R-ANY>
                    <PRINT-ANY .LIST>
                )(<EQUAL? .TYPE R-ALL>
                    <PRINT-ALL .LIST>
                )>
            )(ELSE
                <HLIGHT 0>
                <PRINT-ITALIC <GET .LIST 1>>
                <TELL ,PERIOD-CR>
            )>
        )>
        <HLIGHT 0>
        <CRLF>
        <PRESS-A-KEY>
    )>>

<ROUTINE NOT-CHARGED (OBJ)
    <CRLF><CRLF>
    <HLIGHT ,H-BOLD>
    <TELL CT .OBJ " has no charges left" ,PERIOD-CR>
    <HLIGHT 0>
    <PRESS-A-KEY>>

<ROUTINE SKILL-FIRST-REQUIREMENT (SKILL "AUX" REQUIREMENTS)
    <SET REQUIREMENTS <GETP .SKILL ,P?REQUIRES>>
    <COND (<NOT .REQUIREMENTS> <RETURN NONE>)>
    <RETURN <GET .REQUIREMENTS 1>>>

; "status line"
; ---------------------------------------------------------------------------------------------
<ROUTINE LINE-ERASE (ROW)
    <CURSET .ROW 1>
    <DO (I <LOWCORE SCRH> 1 -1) <PRINTC !\ >>
    <CURSET .ROW 1>>

<ROUTINE UPDATE-STATUS-LINE ("AUX" WIDTH)
    <COND (,HERE
        <COND (,CHARACTERS-ENABLED <SPLIT 2>)(ELSE <SPLIT 1>)>
        <SCREEN 1>
        <SET WIDTH <LOWCORE SCRH>>
        <HLIGHT ,H-INVERSE>
        <LINE-ERASE 1>
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
        <SCREEN 0>
        <HLIGHT 0>
    )>>

; "player inventory routines"
; ---------------------------------------------------------------------------------------------
<ROUTINE COUNT-POSSESSIONS ()
    <RETURN <COUNT-CONTAINER ,PLAYER>>>

<ROUTINE GET-ITEM (ITEM "OPT" CONTAINER "AUX" ITEMS COUNT)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND(<AND .ITEM <G=? <COUNT-CONTAINER .CONTAINER> 0>>
        <SET COUNT 0>
        <SET ITEMS <FIRST? .CONTAINER>>
        <REPEAT ()
            <COND (.ITEMS
                <COND (<NOT <FSET? .ITEMS ,NDESCBIT>>
                    <INC .COUNT>
                    <COND (<EQUAL? .COUNT .ITEM> <RETURN>)>
                )>
            )(ELSE
                <RETURN>
            )>
            <SET ITEMS <NEXT? .ITEMS>>
        >
        <RETURN .ITEMS>
    )>>

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
                    <INC .COUNT>
                    <HLIGHT ,H-BOLD>
                    <TELL N .COUNT>
                    <HLIGHT 0>
                    <TELL " - " T .ITEM>
                    <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
                    <COND (<G? .QUANTITY 0> <TELL " (" N .QUANTITY ")">)>
                    <CRLF>
                )>
                <SET ITEM <NEXT? .ITEM>>
            >
            <HLIGHT ,H-BOLD>
            <TELL N <+ .COUNT 1>>
            <HLIGHT 0>
            <TELL " - drop " T .OBJ " instead" ,PERIOD-CR>
            <REPEAT ()
                <SET KEY <INPUT 1>>
                <COND (<AND <G? .KEY !\0> <L=? .KEY <+ .COUNT 49>>> <RETURN>)>
            >
            <COND (<AND <G? .KEY 48> <L? .KEY <+ .COUNT 49>>>
                <SET CHOICE <- .KEY 48>>
                <SET ITEM <GET-ITEM .CHOICE>>
                <COND (.ITEM
                    <CRLF>
                    <TELL "Drop " T .ITEM "?">
                    <COND (<YES?>
                        <COND (<CHECK-DROPS .ITEM>
                            <HLIGHT 0>
                            <TELL CR "You dropped ">
                            <HLIGHT ,H-BOLD>
                            <TELL T .ITEM>
                            <HLIGHT 0>
                            <TELL " and took ">
                            <HLIGHT ,H-BOLD>
                            <TELL T .OBJ>
                            <HLIGHT 0>
                            <TELL ,PERIOD-CR>
                            <COND (<NOT <EQUAL? .ITEM .OBJ>>
                                <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
                                <COND (<G? .QUANTITY 0>
                                    <DEC .QUANTITY>
                                    <COND (<G? .QUANTITY 0>
                                        <PUTP .ITEM ,P?QUANTITY .QUANTITY>
                                    )(ELSE
                                        <PUTP .ITEM ,P?QUANTITY 1>
                                        <REMOVE .ITEM>
                                    )>
                                )(<EQUAL? .QUANTITY 0>
                                    <PUTP .ITEM ,P?QUANTITY 1>
                                    <REMOVE .ITEM>
                                )(ELSE
                                    <REMOVE .ITEM>
                                )>
                                <COND (<IN? .OBJ ,PLAYER>
                                    <SET QUANTITY <GETP .OBJ ,P?QUANTITY>>
                                    <COND (<G=? .QUANTITY 0> <PUTP .OBJ ,P?QUANTITY <+ .QUANTITY 1>>)>
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
                    <HLIGHT 0>
                    <TELL CR "You dropped ">
                    <HLIGHT ,H-BOLD>
                    <TELL T .OBJ>
                    <HLIGHT 0>
                    <TELL ,PERIOD-CR>
                    <SET QUANTITY <GETP .OBJ ,P?QUANTITY>>
                    <COND (<L? .QUANTITY 0> <REMOVE .OBJ>)>
                    <RETURN>
                )>
            )>
        >
    )>>

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
            ; "check if object has the QUANTITY property"
            <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
            <COND (<L? .QUANTITY 0>
                <COND (<NOT <CHECK-ITEM .ITEM>> <MOVE .ITEM ,PLAYER>)>
            )(ELSE
                <COND (<IN? .ITEM ,PLAYER>
                    <PUTP .ITEM ,P?QUANTITY <+ .QUANTITY 1>>
                )(ELSE
                    <PUTP .ITEM ,P?QUANTITY 1>
                    <MOVE .ITEM ,PLAYER>
                )>
            )>
        )>
    )>>

; "charged items"
; ---------------------------------------------------------------------------------------------
<ROUTINE DISCHARGE-ITEM (ITEM "OPT" AMOUNT "AUX" (CHARGES 0))
	<SET CHARGES <GETP .ITEM ,P?CHARGES>>
	<COND (<G? .CHARGES 0>
        <COND (<NOT .AMOUNT> <SET AMOUNT 1>)>
		<SET CHARGES <- .CHARGES .AMOUNT>>
		<COND (<L? .CHARGES 1> <SET CHARGES 0>)>
		<PUTP .ITEM ,P?CHARGES .CHARGES>
	)>>

<ROUTINE CHARGE-ITEM (ITEM MAX-CHARGE "OPT" AMOUNT "AUX" CHARGES)
	<COND (<NOT .AMOUNT> <SET AMOUNT 1>)>
	<SET CHARGES <GETP .ITEM ,P?CHARGES>>
	<SET CHARGES <+ .CHARGES .AMOUNT>>
	<COND (<G? .CHARGES .MAX-CHARGE> <SET CHARGES .MAX-CHARGE>)>
	<PUTP .ITEM ,P?CHARGES .CHARGES>>

<ROUTINE TAKE-CHARGED-ITEM (ITEM "OPT" AMOUNT)
	<COND (<NOT .AMOUNT> <SET AMOUNT 1>)>
	<PUTP .ITEM ,P?CHARGES .AMOUNT>
	<TAKE-ITEM .ITEM>>

<ROUTINE TAKE-OR-CHARGE (ITEM MAX-CHARGE "OPT" AMOUNT PROMPT PLURAL "AUX" TAKEN)
	<COND (<NOT .AMOUNT> <SET AMOUNT 1>)>
	<COND (<NOT .PLURAL> <SET PLURAL 1>)>
	<COND (<AND .PROMPT <G? .PLURAL 1>>
		<SET TAKEN <GET-NUMBER "You many will you take?" 0 .PLURAL>>
		<COND (<L=? .TAKEN 0>
			<RETURN 0>
		)(ELSE
			<SET PROMPT F>
			<SET AMOUNT <* .TAKEN .AMOUNT>>
			<SET PLURAL .TAKEN>
		)>
	)>
	<COND (.PROMPT <CRLF>)>
	<COND (<CHECK-ITEM .ITEM>
		<COND (.PROMPT
			<TELL "Take " T .ITEM>
			<COND (<G? .PLURAL 1> <TELL "s' (" N .PLURAL ")">)(ELSE <TELL "'s">)>
			<TELL " remaining ">
			<COND (<G? .AMOUNT 1> <TELL N .AMOUNT " charges">)(ELSE <TELL "charge">)>
			<TELL "?">
			<COND (<YES?>
				<CHARGE-ITEM .ITEM .MAX-CHARGE .AMOUNT>
				<RETURN .PLURAL>
			)>
		)(ELSE
			<CHARGE-ITEM .ITEM .MAX-CHARGE .AMOUNT>
			<RETURN .PLURAL>
		)>
	)(ELSE
		<COND (.PROMPT
			<TELL "Take " T .ITEM>
			<COND (<G? .PLURAL 1> <TELL "s (" N .PLURAL ")">)>
			<TELL " (" N .AMOUNT " charge">
			<COND (<G? .AMOUNT 1> <TELL "s">)>
			<TELL " left)?">
			<COND (<YES?>
				<TAKE-CHARGED-ITEM .ITEM .AMOUNT>
				<RETURN .PLURAL>
			)>
		)(ELSE
			<TAKE-CHARGED-ITEM .ITEM .AMOUNT>
			<RETURN .PLURAL>
		)>
	)>
	<RETURN 0>>


; "story routines - actions/events"
; ---------------------------------------------------------------------------------------------
<ROUTINE GAIN-CODEWORD ("OPT" CODEWORD LOCATION)
    <COND (<NOT .LOCATION> <SET LOCATION ,HERE>)>
    <COND (<NOT .CODEWORD> <SET CODEWORD <GETP .LOCATION ,P?CODEWORD>>)>
    <COND (.CODEWORD
        <CRLF>
        <TELL "[You gained the codeword ">
        <HLIGHT ,H-BOLD>
        <TELL D .CODEWORD>
        <HLIGHT 0>
        <TELL "]" CR>
        <MOVE .CODEWORD ,CODEWORDS>
    )>>

<ROUTINE REMOVE-ITEM (ITEM REASON "AUX" QUANTITY)
    <SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "You " .REASON " ">
    <COND (<L? .QUANTITY 0>
        <REMOVE .ITEM>
        <TELL T .ITEM>
    )(ELSE
        <COND (<G? .QUANTITY 0>
            <DEC .QUANTITY>
            <COND (<G? .QUANTITY 0>
                <PUTP .ITEM ,P?QUANTITY .QUANTITY>
            )(ELSE
                <PUTP .ITEM ,P?QUANTITY 1>
                <REMOVE .ITEM>
            )>
        )(ELSE
            <PUTP .ITEM ,P?QUANTITY 1>
            <REMOVE .ITEM>
        )>
        <TELL "a">
        <COND (<FSET? .ITEM ,VOWELBIT> <TELL "n">)>
        <TELL " " D .ITEM>
    )>
    <TELL ,PERIOD-CR>
    <HLIGHT 0>
    <PRESS-A-KEY>>

<ROUTINE GIVE-ITEM (ITEM)
    <REMOVE-ITEM .ITEM "gave">>

<ROUTINE LOSE-ITEM (ITEM)
    <REMOVE-ITEM .ITEM "lost">>

<ROUTINE CHARGE-MONEY (COST "OPT" (SILENT F))
    <COND(<NOT .SILENT>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "You are charged " N .COST " " D ,CURRENCY ,PERIOD-CR>
        <HLIGHT 0>
    )>
    <SETG MONEY <- ,MONEY .COST>>
    <COND (<L? ,MONEY 0> <SETG MONEY 0>)>
    <UPDATE-STATUS-LINE>>

<ROUTINE GAIN-ITEM ("OPT" LOCATION "AUX" ITEM)
    <COND (<NOT .LOCATION> <SET LOCATION ,HERE>)>
    <SET ITEM <GETP .LOCATION ,P?ITEM>>
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

<ROUTINE LOSE-MONEY ("OPT" STORY "AUX" COST)
    <COND (<NOT .STORY> <SET .STORY ,HERE>)>
    <SET COST <GETP .STORY ,P?COST>>
    <COND(<G? .COST 0> <CHARGE-MONEY .COST>)>>

<ROUTINE LOSE-LIFE (DMG MSG STORY)
    <SETG LIFE-POINTS <- ,LIFE-POINTS .DMG>>
    <COND (<L? ,LIFE-POINTS 0> <SETG LIFE-POINTS 0>)>
    <UPDATE-STATUS-LINE>
    <CRLF>
    <HLIGHT ,H-BOLD>
    <COND (<L? ,LIFE-POINTS 1>
        <TELL .MSG>
        <SETG CONTINUE-TO-CHOICES F>
        <PUTP .STORY ,P?DEATH T>
    )(ELSE
        <PUTP .STORY ,P?DEATH F>
        <TELL "You lost " N .DMG " Life Points">
    )>
    <HLIGHT 0>
    <TELL ,PERIOD-CR>>

; "story routines - print story, process choices"
; ---------------------------------------------------------------------------------------------
<ROUTINE PROCESS-CHOICES (CHOICES "AUX" DESTINATIONS REQUIREMENTS TYPES KEY CHOICE TYPE LIST)
    <SET DESTINATIONS <GETP ,HERE ,P?DESTINATIONS>>
    <SET REQUIREMENTS <GETP ,HERE ,P?REQUIREMENTS>>
    <SET TYPES <GETP ,HERE ,P?TYPES>>
    <TELL CR "What will you choose? ">
    <REPEAT ()
        <SET KEY <INPUT 1>>
        <COND (<AND <G=? .KEY !\1> <L=? .KEY !\9>>
            <SET CHOICE <- .KEY !\0>>
            <COND (<AND <G=? <GET .CHOICES 0> 1> <L=? .CHOICE <GET .CHOICES 0>>>
                <COND (<AND <G=? .CHOICE 1> <L=? .CHOICE <GET .DESTINATIONS 0>> <L=? .CHOICE <GET .TYPES 0>>>
                    <SET TYPE <GET .TYPES .CHOICE>>
                    <COND (<EQUAL? .TYPE R-NONE>
                        <SETG HERE <GET .DESTINATIONS .CHOICE>>
                        <CRLF>
                    )(<AND <EQUAL? .TYPE R-SKILL> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<OR <IN? <GET .REQUIREMENTS .CHOICE> ,SKILLS> <CHECK-TEMP-SKILLS <GET .REQUIREMENTS .CHOICE>>>
                            <COND (<CHECK-SKILL-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                                <COND (<CHECK-CHARGES <SKILL-FIRST-REQUIREMENT <GET .REQUIREMENTS .CHOICE>>>
                                    <SETG HERE <GET .DESTINATIONS .CHOICE>>
                                    <CRLF>
                                )(ELSE
                                    <NOT-CHARGED <SKILL-FIRST-REQUIREMENT <GET .REQUIREMENTS .CHOICE>>>
                                )>
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
                    )(<AND <OR <EQUAL? .TYPE R-DISCHARGE> <EQUAL? .TYPE R-ITEM> > .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                            <COND (<CHECK-CHARGES <GET .REQUIREMENTS .CHOICE>>
                                <COND (<EQUAL? .TYPE R-DISCHARGE> <DISCHARGE-ITEM <GET .REQUIREMENTS .CHOICE> 1>)>
                                <SETG HERE <GET .DESTINATIONS .CHOICE>>
                                <CRLF>
                            )(ELSE
                                <NOT-CHARGED <GET .REQUIREMENTS .CHOICE>>
                            )>
                        )>
                    )(<AND <EQUAL? .TYPE R-MONEY> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-MONEY <GET .REQUIREMENTS .CHOICE>>
                            <SETG HERE <GET .DESTINATIONS .CHOICE>>
                            <CRLF>
                            <COND (<G? <GET .REQUIREMENTS .CHOICE> 0>
                                <CHARGE-MONEY <GET .REQUIREMENTS .CHOICE>>
                                <PRESS-A-KEY>
                            )>
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
                            <COND (<CHECK-CHARGES <GET .LIST 2>>
                                <SETG HERE <GET .DESTINATIONS .CHOICE>>
                                <CRLF>
                            )(ELSE
                                <NOT-CHARGED <GET .LIST 2>>
                            )>
                        )(ELSE
                            <CRLF><CRLF>
                            <PRINT-BOLD "You do not have the ">
                            <PRINT-ITALIC <GET .LIST 1>>
                            <PRINT-BOLD " skill or a">
                            <COND (<FSET? <GET .LIST 2> ,VOWELBIT> <TELL "n">)>
                            <TELL " ">
                            <PRINT-ITALIC <GET .LIST 2>>
                            <PRINT-BOLD ,PERIOD-CR>
                        )>
                    )(<AND <EQUAL? .TYPE R-LOSE-ITEM> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <COND (<CHECK-POSSESSIONS <GET .REQUIREMENTS .CHOICE>>
                            <CRLF>
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
                    )(<AND <EQUAL? .TYPE R-GAIN-CODEWORD> .REQUIREMENTS <L=? .CHOICE <GET .REQUIREMENTS 0>>>
                        <CRLF>
                        <GAIN-CODEWORD <GET .REQUIREMENTS .CHOICE>>
                        <PRESS-A-KEY>
                        <SETG HERE <GET .DESTINATIONS .CHOICE>>
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
                <COND (<AND <EQUAL? .CHOICE-TYPE R-SKILL> .REQUIREMENTS> <TELL " ("> <PRINT-ITALIC .LIST> <TELL ")">)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-CODEWORD> .REQUIREMENTS> <PRINT-CODEWORDS .LIST>)>
                <COND (<AND <OR <EQUAL? .CHOICE-TYPE R-ITEM> <EQUAL? .CHOICE-TYPE R-DISCHARGE>> .REQUIREMENTS> <TELL " ("> <PRINT-ITALIC .LIST> <TELL ")">)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-MONEY> .REQUIREMENTS> <COND (<G? .LIST 0> <TELL " (" N .LIST " " D ,CURRENCY ")">)>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-ANY> .REQUIREMENTS> <PRINT-ANY .LIST>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-ALL> .REQUIREMENTS> <PRINT-ALL .LIST>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-SKILL-ITEM> .REQUIREMENTS> <PRINT-ALL .LIST>)>
                <COND (<AND <EQUAL? .CHOICE-TYPE R-LOSE-ITEM> .REQUIREMENTS> <TELL " ("> <PRINT-ITALIC .LIST> <TELL ")">)>
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

<ROUTINE SET-DESTINATION (STORY DESTINATION NEW)
	<PUT <GETP .STORY ,P?DESTINATIONS> .DESTINATION .NEW>>

; "story - print ending routnes"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-ENDING (MESSAGE "OPT" COLOR)
    <COND (<NOT .COLOR> <SET COLOR 1>)>
    <CRLF>
    <HLIGHT ,H-BOLD>
    <COLOR .COLOR 0>
    <TELL .MESSAGE>
    <COLOR 1 0>
    <HLIGHT 0>
    <GAMES-UP>>

; "story - event routines (victory/death/prechoice/transition/codeword/story jump events)"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHECK-DEATH ("AUX" DEATH)
    <SET DEATH <GETP ,HERE ,P?DEATH>>
    <COND (.DEATH
        <PRINT-ENDING BAD-ENDING 3>
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
        <COND (<EQUAL? .VICTORY T>
            <PRINT-ENDING GOOD-ENDING 4>
        )(ELSE
            <PRINT-ENDING .VICTORY 6>
        )>
        <SETG CONTINUE-TO-CHOICES F>
    )>>

<ROUTINE STORY-JUMP (STORY)
    <COND (.STORY
        <SETG HERE .STORY>
        <SETG CONTINUE-TO-CHOICES F>
        <PRESS-A-KEY>
    )>>

; "list manipulation"
; ---------------------------------------------------------------------------------------------
<ROUTINE RESET-TEMP-LIST ("AUX" ITEMS)
    <SET ITEMS <GET TEMP-LIST 0>>
    <DO (I 1 .ITEMS)
        <PUT TEMP-LIST .I NONE>
    >>

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
        <COND (<AND <OR <EQUAL? .CONTAINER ,PLAYER> <EQUAL? .CONTAINER ,SKILLS>> <L? .ITEMS 12>> <PRINT-BOLD "C"> <TELL " - View your character (" D ,CURRENT-CHARACTER ")" CR>)>
        <COND (<AND <EQUAL? .CONTAINER ,SKILLS> <L? .ITEMS 16>> <PRINT-BOLD "G"> <TELL " - Display skills glossary" CR>)>
        <PRINT-BOLD "0">
        <TELL " - I'm alright with my choices" ,PERIOD-CR>
        <TELL "Select which " .DESC "(s) to ">
        <TELL .ACTION>
        <TELL ":" CR>
        <REPEAT ()
            <SET KEY <INPUT 1>>
            <COND (
                <OR
                    <AND ,CHARACTERS-ENABLED <OR <EQUAL? .CONTAINER ,PLAYER> <EQUAL? .CONTAINER ,SKILLS>> <L? .ITEMS 12> <EQUAL? .KEY !\c !\C>>
                    <AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,SKILLS> <L? .ITEMS 16> <EQUAL? .KEY !\G !\g>>
                    <AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,PLAYER> <L? .ITEMS 18> <EQUAL? .KEY !\i !\I>>
                    <AND <G=? .KEY !\A> <L=? .KEY !\F> <L=? <+ <- .KEY !\A> 10> .ITEMS>>
                    <AND <G=? .KEY !\a> <L=? .KEY !\f> <L=? <+ <- .KEY !\a> 10> .ITEMS>>
                    <AND <G=? .KEY !\1> <L=? .KEY !\9> <L=? <- .KEY !\0> .ITEMS>>
                    <AND <EQUAL? .KEY !\h !\H> <L? .ITEMS 17>>
                    <EQUAL? .KEY !\0 !\?>
                >
                <RETURN>
            )>
        >
        <COND (<EQUAL? .KEY !\0>
            <COND (<L? .COUNT .MAX>
                <TELL CR "Are you sure?">
                <COND(<YES?> <RETURN>)>
            )(ELSE
                <RETURN>
            )>
        )>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,PLAYER> <L? .ITEMS 12> <EQUAL? .KEY !\c !\C>> <DESCRIBE-PLAYER> <PRESS-A-KEY>)>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,SKILLS> <L? .ITEMS 16> <EQUAL? .KEY !\G !\g>> <PRINT-SKILLS>)>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .CONTAINER ,PLAYER> <L? .ITEMS 18> <EQUAL? .KEY !\i !\I>> <DESCRIBE-INVENTORY> <PRESS-A-KEY>)>
        <COND (<OR <EQUAL? .KEY !\?> <AND <EQUAL? .KEY !\h !\H> <L? .ITEMS 17>>> <DISPLAY-HELP> <PRESS-A-KEY>)>
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
                    <DEC .COUNT>
                )(ELSE
                    <COND (<EQUAL? .COUNT .MAX>
                        <CRLF>
                        <HLIGHT ,H-BOLD>
                        <TELL "You have already selected " N .MAX " " .DESC "s" ,EXCLAMATION-CR>
                        <HLIGHT 0>
                    )(ELSE
                        <INC .COUNT>
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
    )>>

<ROUTINE GIVE-FROM-LIST (LIST UNABLE UNWILLING "OPT" MAX JUMP CONTAINER "AUX" ITEMS COUNT RESULT)
    <RESET-TEMP-LIST>
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<NOT .MAX> <SET MAX 1>)>
    <SET ITEMS <GET .LIST 0>>
    <SET COUNT 0>
    <DO (I 1 .ITEMS)
        <COND (<AND <GET .LIST .I> <IN? <GET .LIST .I> .CONTAINER>>
            <INC .COUNT>
            <COND (<L=? .COUNT <GET TEMP-LIST 0>>
                <PUT TEMP-LIST .COUNT <GET .LIST .I>>
            )>
        )>
    >
    <COND (<G=? .COUNT .MAX>
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

; "player alive checks"
; ---------------------------------------------------------------------------------------------
<ROUTINE IS-ALIVE ("OPT" THRESHOLD)
    <COND (<NOT .THRESHOLD> <SET THRESHOLD 0>)>
    <COND (<G? ,LIFE-POINTS .THRESHOLD> <RTRUE>)>
    <RFALSE>>

<ROUTINE IF-ALIVE (TEXT)
    <COND (<IS-ALIVE> <TELL CR .TEXT CR>)>>

<ROUTINE SKILL-SWAP (LIST "AUX" COUNT ITEMS SKILLS MY-SKILLS)
    <COND (<NOT .LIST> <RETURN>)>
    <SET ITEMS <GET .LIST 0>>
    <COND (<NOT .ITEMS> <RETURN>)>
    <SET COUNT 0>
    <SET MY-SKILLS <LTABLE NONE NONE NONE NONE NONE NONE NONE NONE>>
    <SET SKILLS <FIRST? ,SKILLS>>
    <REPEAT ()
        <COND (<NOT .SKILLS> <RETURN>)>
        <INC .COUNT>
        <PUT .MY-SKILLS .COUNT .SKILLS>
        <SET SKILLS <NEXT? .SKILLS>>
    >
    <DO (I 1 .ITEMS)
        <COND (<NOT <INTBL? <GET .LIST .I> .MY-SKILLS 9>>
            <INC .COUNT>
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
            <PRINT-BOLD "You must also include these skills">
            <PRINT-ALL .LIST>
            <CRLF>
            <PRESS-A-KEY>
        )>
    >>

<ROUTINE YOU-GAVE ("OPT" ITEM)
    <CRLF>
    <PRINT-BOLD "You gave: ">
    <COND (.ITEM
        <TELL D .ITEM CR>
    )(ELSE
        <PRINT-CONTAINER ,GIVEBAG>
    )>>

; "story - merchant routines (display)"
; ---------------------------------------------------------------------------------------------
<ROUTINE MERCHANT (WARES PRICELIST "OPT" CONTAINER (SELL F) "AUX" ITEM ITEMS KEY)
    <COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
    <COND (<OR <NOT .WARES> <NOT .PRICELIST>> <RETURN>)>
    <SET ITEMS <GET .WARES 0>>
    <REPEAT ()
        <CRLF>
        <COND (<NOT .SELL>
            <TELL "You can buy anything you have money for:">
        )(ELSE
            <TELL "You can sell these items at these prices if you have them:">
        )>
        <CRLF>
        <DO (I 1 .ITEMS)
            <HLIGHT ,H-BOLD>
            <TELL N .I>
            <HLIGHT 0>
            <TELL " - " D <GET .WARES .I> " (" N <GET .PRICELIST .I> " " D ,CURRENCY ")" CR>
        >
        <PRINT-BOLD "C">
        <TELL " - View your character (" D ,CURRENT-CHARACTER ")" CR>
        <PRINT-BOLD "I">
        <TELL " - Display inventory" CR>
        <PRINT-BOLD "0">
        <TELL " - Bye" CR>
        <TELL "You are carrying " N ,MONEY " " D ,CURRENCY ": ">
        <REPEAT ()
            <SET KEY <INPUT 1>>
            <COND (
                <OR
                    <AND ,CHARACTERS-ENABLED <OR <EQUAL? .KEY !\c !\C> <AND <EQUAL? .KEY !\i !\I> <EQUAL? .CONTAINER ,PLAYER>>>>
                    <AND <G=? .KEY !\1> <L=? .KEY !\9> <L=? <- .KEY !\0> .ITEMS>>
                    <EQUAL? .KEY !\h !\H !\? !\0>
                >
                <RETURN>
            )>
        >
        <CRLF>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\c !\C>> <DESCRIBE-PLAYER> <PRESS-A-KEY>)>
        <COND (<AND ,CHARACTERS-ENABLED <EQUAL? .KEY !\i !\I> <EQUAL? .CONTAINER ,PLAYER>> <DESCRIBE-INVENTORY> <PRESS-A-KEY>)>
        <COND (<EQUAL? .KEY !\h !\H !\?> <DISPLAY-HELP> <PRESS-A-KEY>)>
        <COND (<AND <G? .KEY 48> <L? .KEY <+ .ITEMS 49>>>
            <SET ITEM <- .KEY 48>>
            <CRLF>
            <COND (<NOT .SELL>
                <TELL "Purchase " D <GET .WARES .ITEM> " (" N <GET .PRICELIST .ITEM> " " D ,CURRENCY ")?">
            )(ELSE
                <TELL "Sell " D <GET .WARES .ITEM> " (" N <GET .PRICELIST .ITEM> " " D ,CURRENCY ")?">
            )>
            <COND (<YES?>
                <HLIGHT ,H-BOLD>
                <COND (<NOT .SELL>
                    <CRLF>
                    <COND (<L? ,MONEY <GET .PRICELIST .ITEM>>
                        <TELL "You can't afford " T <GET .WARES .ITEM> ,EXCLAMATION-CR>
                    )(ELSE
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
                    )>
                )(ELSE
                    <COND (<CHECK-ITEM <GET .WARES .ITEM>>
                        <REMOVE-ITEM <GET .WARES .ITEM> "sold">
                        <SETG MONEY <+ ,MONEY <GET .PRICELIST .ITEM>>>
                    )(ELSE
                        <CRLF>
                        <TELL "You do not have any " D  <GET .WARES .ITEM> ,EXCLAMATION-CR>
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

; "print routines (story)"
; ---------------------------------------------------------------------------------------------
<ROUTINE PRINT-PAGE ("OPT" PAGE "AUX" TEXT)
    <COND (<NOT .PAGE> <SET PAGE ,HERE>)>
    <SET TEXT <GETP .PAGE ,P?STORY>>
    <COND (.TEXT
        <CRLF>
        <TELL .TEXT>
        <CRLF>
    )>>

<ROUTINE PRINT-SKILLS ("AUX" COUNT)
    <SET COUNT <GET SKILL-GLOSSARY 0>>
    <COND (<G? .COUNT 0>
        <CRLF>
        <DO (I 1 .COUNT)
            <PRINT-ITALIC <GET SKILL-GLOSSARY .I>>
            <CRLF>
            <TELL <GETP <GET SKILL-GLOSSARY .I> P?LDESC> ,PERIOD-CR>
            <COND (<NOT <EQUAL? .I .COUNT>> <CRLF>)>
        >
    )>>

; "player information (display)"
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
        <PRINT-BOLD "Skills: ">
        <PRINT-CONTAINER ,SKILLS>
        <CRLF>
        <PRINT-BOLD "Possessions: ">
        <PRINT-CONTAINER ,PLAYER>
        <CRLF>
        <PRINT-BOLD "Codewords: ">
        <PRINT-CONTAINER ,CODEWORDS>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <PRINT-CAP-OBJ ,CURRENCY>
        <HLIGHT 0>
        <TELL ": ">
        <TELL N ,MONEY CR>
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

; "character routines"
; ---------------------------------------------------------------------------------------------
<ROUTINE CHOOSE-CHARACTER ("AUX" COUNT KEY CHOICE CHARACTER SKILLS POSSESSIONS)
    <SET COUNT <GET CHARACTERS 0>>
    <COND (<G? .COUNT 0>
        <REPEAT ()
            <SET COUNT <GET CHARACTERS 0>>
            <CRLF>
            <PRINT-BOLD "Choose a character:">
            <CRLF>
            <DO (I 1 .COUNT)
                <HLIGHT ,H-BOLD>
                <TELL N .I>
                <HLIGHT 0>
                <TELL " - " D <GET CHARACTERS .I> CR>
            >
            <PRINT-BOLD "C">
            <TELL " - Custom character" CR>
            <PRINT-BOLD "R">
            <TELL " - Restore from previous save" CR>
            <PRINT-BOLD "Q">
            <TELL " - Quit the game" CR>
            <TELL "Select which character?">
            <REPEAT ()
                <SET KEY <INPUT 1>>
                <COND (<OR <AND <G=? .KEY !\1> <L=? .KEY !\9> <L=? <- .KEY !\0> .COUNT>> <EQUAL? .KEY !\C !\c> <EQUAL? .KEY !\R !\r> <EQUAL? .KEY !\Q !\q>> <RETURN>)>
            >
            <COND (<AND <G=? .KEY !\1> <L=? .KEY !\9>>
                <SET CHOICE <- .KEY !\0>>
                <COND (<AND <G=? <GET CHARACTERS 0> 1> <G=? .CHOICE 1> <L=? .CHOICE <GET CHARACTERS 0>>>
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
                        <PRESS-BEGIN>
                        <RETURN>
                    )>
                )(ELSE
                    <CRLF>
                )>
            )(<EQUAL? .KEY !\C !\c>
                <CREATE-CHARACTER>
                <TELL CR "You have created a custom character" ,PERIOD-CR>
                <PRESS-BEGIN>
                <RETURN>
            )(<EQUAL? .KEY !\Q !\q>
                <CRLF>
                <TELL "Are you sure you want to quit the game?">
                <COND(<YES?> <QUIT-MSG>)>
            )(<EQUAL? .KEY !\R !\r>
                <COND (<NOT <RESTORE>>
                    <EMPHASIZE "Restore failed.">
                )>
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
                    <PRINT-ITALIC <GET .SKILLS .I>>
                    <CRLF>
                    <TELL <GETP <GET .SKILLS .I> P?LDESC> ,PERIOD-CR>
                >
            )>
            <CRLF>
        )(ELSE
            <TELL CR "None" CR>
        )>
        <PRINT-BOLD "Possessions: ">
        <SET POSSESSIONS <GETP .CHARACTER ,P?POSSESSIONS>>
        <COND (.POSSESSIONS
            <SET COUNT <GET .POSSESSIONS 0>>
            <COND (<G? .COUNT 0>
                <DO (I 1 .COUNT)
                    <COND (<AND <G? .I 1> <G? .COUNT 1>> <TELL ", ">)>
                    <PRINT-ITALIC <GET .POSSESSIONS .I>>
                    <SET QUANTITY <GETP <GET .POSSESSIONS .I> ,P?QUANTITY>>
                    <COND (<G? .QUANTITY 0>
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

; "reset routines"
; ---------------------------------------------------------------------------------------------
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

<ROUTINE RESET-CODEWORDS ()
    <RESET-CONTAINER ,CODEWORDS>>

<ROUTINE RESET-POSSESSIONS ()
    <RESET-CONTAINER ,PLAYER>>

<ROUTINE RESET-GIVEBAG ()
    <RESET-CONTAINER ,GIVEBAG>>

<ROUTINE RESET-SELECTIONS ()
    <DO (I 1 9) <PUT SELECT-CHOICES .I NONE>>>

<ROUTINE RESET-TEMP-SKILLS ("AUX" COUNT)
    <SET COUNT <GET TEMP-SKILLS 0>>
    <DO (I 1 .COUNT)
        <PUT TEMP-SKILLS .COUNT NONE>
    >>

<ROUTINE RESET-SKILLS ()
    <RESET-CONTAINER ,SKILLS>
    <RESET-TEMP-SKILLS>>

<ROUTINE RESET-PLAYER ()
    <SETG CURRENT-CHARACTER NONE>
    <SETG MONEY 0>
    <SETG LIFE-POINTS 0>
    <SETG MAX-LIFE-POINTS 0>
    <RESET-POSSESSIONS>
    <RESET-CODEWORDS>
    <RESET-SKILLS>
    <RESET-GIVEBAG>>

; "system/utility/miscellaneous routines"
; ---------------------------------------------------------------------------------------------
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

<ROUTINE QUIT-MSG ()
    <TELL CR "Thanks for playing" ,PERIOD-CR>
    <QUIT>>

; "gamebook loop"
; ---------------------------------------------------------------------------------------------
<ROUTINE GAME-BOOK ("AUX" KEY CURRENT-LOC)
    <INSTRUCTIONS>
    <COND (,CHARACTERS-ENABLED
        <RESET-PLAYER>
        <RESET-OBJECTS>
        <RESET-SELECTIONS>
        <RESET-TEMP-LIST>
        <RESET-GIVEBAG>
        <RESET-CONTAINER ,LOST-SKILLS>
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
            <LOSE-MONEY .CURRENT-LOC>
            <GAIN-CODEWORD NONE .CURRENT-LOC>
            <GAIN-ITEM .CURRENT-LOC>
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
            <COND (<EQUAL? .KEY !\x !\X> <RETURN>)>
        )>
        <UPDATE-STATUS-LINE>
    >>
