<CONSTANT TEXT "This story has not been written yet.">

; "jump routines (skill/item/codeword)"
; ---------------------------------------------------------------------------------------------
<ROUTINE SKILL-JUMP (SKILL STORY)
	<COND (<CHECK-SKILL .SKILL> <STORY-JUMP .STORY>)>>

<ROUTINE ITEM-JUMP (ITEM STORY)
	<COND (<CHECK-ITEM .ITEM> <STORY-JUMP .STORY>)>>

<ROUTINE CODEWORD-JUMP (CODEWORD STORY)
	<COND (<CHECK-CODEWORD .CODEWORD> <STORY-JUMP .STORY>)>>

; "lost skills: moves 'lost' skills to LOST-SKILLS container"
; ---------------------------------------------------------------------------------------------
<OBJECT LOST-SKILLS
	(DESC "skills lost")
	(SYNONYM SKILLS)
	(ADJECTIVE LOST)
	(FLAGS CONTBIT OPENBIT)>

<ROUTINE LOSE-SKILL (SKILL)
	<COND (<AND .SKILL <CHECK-SKILL .SKILL>>
		<CRLF>
		<HLIGHT ,H-BOLD>
		<TELL "You lost " T .SKILL " skill">
		<TELL ,PERIOD-CR>
		<HLIGHT 0>
		<MOVE .SKILL ,LOST-SKILLS>
	)>>

<ROUTINE LOSE-SKILLS ("OPT" MAX)
	<COND (<NOT .MAX> <SET MAX 1>)>
	<LOSE-STUFF ,SKILLS ,LOST-SKILLS "skill" .MAX RESET-SKILLS>>


; "deaths"
; ---------------------------------------------------------------------------------------------
<CONSTANT DIED-IN-COMBAT "You died in combat">
<CONSTANT DIED-OF-HUNGER "You died of hunger">
<CONSTANT DIED-GREW-WEAKER "You grew weaker and eventually died">
<CONSTANT DIED-FROM-INJURIES "You died from your injuries">
<CONSTANT DIED-FROM-COLD "You eventually freeze to death">
<CONSTANT DIED-OF-THIRST "You go mad from thirst">
<CONSTANT KILLED-AT-ONCE "You are killed at once">

; "miscellaneous notifications"
; ---------------------------------------------------------------------------------------------
<CONSTANT NATURAL-HARDINESS "Your natural hardiness made you cope better with the situation">

; "helper functions/constants when damage is dealt to player"
; ---------------------------------------------------------------------------------------------
<ROUTINE PREVENT-DEATH ("OPT" STORY)
	<COND (<NOT .STORY> <SET STORY ,HERE>)>
	<COND (<GETP .STORY ,P?DEATH> <PUTP .STORY ,P?DEATH F>)>>

<ROUTINE TEST-MORTALITY (DAMAGE MESSAGE "OPT" STORY)
	<COND (<NOT .STORY> <SET .STORY ,HERE>)>
	<COND (<G? .DAMAGE 0>
		<LOSE-LIFE .DAMAGE .MESSAGE .STORY>
	)(ELSE
		<PREVENT-DEATH .STORY>
	)>>

<ROUTINE DELETE-CODEWORD (CODEWORD)
	<COND (<AND .CODEWORD <CHECK-CODEWORD .CODEWORD>>
		<CRLF>
		<TELL "[You lose the codeword ">
		<HLIGHT ,H-BOLD>
		<TELL D .CODEWORD "]" CR>
		<HLIGHT 0>
		<REMOVE .CODEWORD>
	)>>

<ROUTINE KEEP-ITEM (ITEM "OPT" JUMP)
	<CRLF>
	<TELL "Keep " T .ITEM "?">
	<COND (<YES?>
		<COND (<NOT <CHECK-ITEM .ITEM>> <TAKE-ITEM .ITEM>)>
		<COND (.JUMP <STORY-JUMP .JUMP>)>
		<RTRUE>
	)>
	<COND (<CHECK-ITEM .ITEM> <LOSE-ITEM .ITEM>)>
	<RFALSE>>

<ROUTINE GET-NUMBER (MESSAGE "OPT" MINIMUM MAXIMUM "AUX" COUNT)
	<REPEAT ()
		<CRLF>
		<TELL .MESSAGE>
		<COND (<AND <OR <ASSIGNED? MINIMUM> <ASSIGNED? MAXIMUM>> <G? .MAXIMUM .MINIMUM>>
			<TELL " (" N .MINIMUM "-" N .MAXIMUM ")">
		)>
		<TELL "? ">
		<READLINE>
		<COND (<EQUAL? <GETB ,LEXBUF 1> 1> <SET COUNT <CONVERT-TO-NUMBER 1 10>>
			<COND (<OR .MINIMUM .MAXIMUM>
				<COND (<AND <G=? .COUNT .MINIMUM> <L=? .COUNT .MAXIMUM>> <RETURN>)>
			)(<G? .COUNT 0>
				<RETURN>
			)>
		)>
	>
	<RETURN .COUNT>>

<ROUTINE ADD-QUANTITY (OBJECT "OPT" AMOUNT CONTAINER "AUX" QUANTITY CURRENT)
	<COND (<NOT .OBJECT> <RETURN>)>
	<COND (<L=? .AMOUNT 0> <RETURN>)>
	<COND (<NOT .CONTAINER> <SET CONTAINER ,PLAYER>)>
	<COND (<EQUAL? .CONTAINER ,PLAYER>
		<DO (I 1 .AMOUNT)
			<TAKE-ITEM .OBJECT>
		>
	)(ELSE
		<SET CURRENT <GETP .OBJECT ,P?QUANTITY>>
		<SET QUANTITY <+ .CURRENT .AMOUNT>>
		<PUTP .OBJECT ,P?QUANTITY .QUANTITY>
	)>>

<ROUTINE TAKE-QUANTITIES (OBJECT PLURAL MESSAGE "OPT" AMOUNT)
	<CRLF>
	<TELL "Take the " .PLURAL "?">
	<COND (<YES?> <ADD-QUANTITY .OBJECT <GET-NUMBER .MESSAGE 0 .AMOUNT> ,PLAYER>)>>

<ROUTINE BUY-STUFF (ITEM PLURAL PRICE "OPT" LIMIT "AUX" QUANTITIES)
	<COND (<NOT .LIMIT> <SET LIMIT 8>)>
	<COND (<G=? ,MONEY .PRICE>
		<CRLF>
		<TELL "Buy " D .ITEM " for " N .PRICE " " D ,CURRENCY " each?">
		<COND (<YES?>
			<REPEAT ()
				<SET QUANTITIES <GET-NUMBER "How many will you buy" 0 .LIMIT>>
				<COND (<G? .QUANTITIES 0>
					<COND (<L=? <* .QUANTITIES .PRICE> ,MONEY>
						<CRLF>
						<HLIGHT ,H-BOLD>
						<TELL "You purchased " N .QUANTITIES " ">
						<COND (<G? .QUANTITIES 1> <TELL .PLURAL>)(ELSE <TELL D .ITEM>)>
						<TELL ,PERIOD-CR>
						<CHARGE-MONEY <* .QUANTITIES .PRICE>>
						<ADD-QUANTITY .ITEM .QUANTITIES>
						<COND (<L? ,MONEY .PRICE> <RETURN>)>
					)(ELSE
						<EMPHASIZE "You can't afford that!">
					)>
				)(ELSE
					<RETURN>
				)>
			>
		)>
	)>>

<ROUTINE SELL-STUFF (ITEM PLURAL PRICE "AUX" (ITEMS-SOLD 0) (QUANTITY 0))
	<COND (<CHECK-ITEM .ITEM>
		<SET QUANTITY <GETP .ITEM ,P?QUANTITY>>
		<CRLF>
		<TELL "Sell " D .ITEM " at " N .PRICE " " D ,CURRENCY " each?">
		<COND (<YES?>
			<SET ITEMS-SOLD <GET-NUMBER "How many will you sell" 0 .QUANTITY>>
			<COND (<G? .ITEMS-SOLD 0>
				<SETG ,MONEY <+ ,MONEY <* .ITEMS-SOLD .PRICE>>>
				<SET .QUANTITY <- .QUANTITY .ITEMS-SOLD>>
				<CRLF>
				<TELL "You sold " N .ITEMS-SOLD " ">
				<HLIGHT ,H-BOLD>
				<COND (<G? .ITEMS-SOLD 1> <TELL .PLURAL>)(ELSE <TELL D .ITEM>)>
				<HLIGHT 0>
				<TELL ,PERIOD-CR>
				<COND (<G? .QUANTITY 0>
					<PUTP .ITEM ,P?QUANTITY .QUANTITY>
				)(ELSE
					<PUTP .ITEM ,P?QUANTITY 1>
					<REMOVE .ITEM>
				)>
			)>
		)>
	)>>

<ROUTINE TAKE-STUFF (ITEM PLURAL "OPT" AMOUNT "AUX" TAKEN)
	<COND (<NOT .AMOUNT> <SET .AMOUNT 1>)>
	<CRLF>
	<TELL "Take the ">
	<COND (<G? .AMOUNT 1> <TELL .PLURAL>)(<TELL D .ITEM>)>
	<TELL "?">
	<COND (<YES?>
		<COND (<G? .AMOUNT 1>
			<SET TAKEN <GET-NUMBER "How many will you take" 0 .AMOUNT>>
			<ADD-QUANTITY .ITEM .AMOUNT ,PLAYER>
			<RETURN .TAKEN>
		)(ELSE
			<TAKE-ITEM .ITEM>
			<RETURN 1>
		)>
	)>
	<RETURN 0>>

<ROUTINE LOSE-STUFF (CONTAINER LOST-CONTAINER ITEM "OPT" MAX ACTION "AUX" (COUNT 0) ITEMS)
	<COND (<NOT .MAX> <SET MAX 1>)>
	<COND (<G? <COUNT-CONTAINER .CONTAINER> .MAX>
		<RESET-TEMP-LIST>
		<SET ITEMS <COUNT-CONTAINER .CONTAINER>>
		<DO (I 1 .ITEMS)
			<SET COUNT <+ .COUNT 1>>
			<COND (<L=? .COUNT .ITEMS>
				<PUT TEMP-LIST .COUNT <GET-ITEM .I .CONTAINER>>
			)>
		>
		<REPEAT ()
			<COND (.ACTION <APPLY .ACTION>)>
			<SELECT-FROM-LIST TEMP-LIST .COUNT .MAX .ITEM .CONTAINER "retain">
			<COND (<EQUAL? <COUNT-CONTAINER .CONTAINER> .MAX>
				<CRLF>
				<TELL "You have selected: ">
				<PRINT-CONTAINER .CONTAINER>
				<CRLF>
				<TELL "Do you agree?">
				<COND (<YES?> <RETURN>)>
			)(ELSE
				<CRLF>
				<HLIGHT ,H-BOLD>
				<TELL "You must select " N .MAX " " .ITEM>
				<COND (<G? .MAX 1> <TELL "s">)>
				<TELL ,PERIOD-CR>
				<HLIGHT 0>
			)>
		>
		<DO (I 1 .COUNT)
			<COND (<NOT <IN? <GET TEMP-LIST .I> .CONTAINER>>
				<MOVE <GET TEMP-LIST .I> .LOST-CONTAINER>
			)>
		>
	)>>
