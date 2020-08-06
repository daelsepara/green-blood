<SETG ZILLIB-VERSION "J5">

<GLOBAL HERE <>>                   ;"Player's location"

<VERSION? (ZIP)
          (T
           <CONSTANT H-NORMAL 0>
           <CONSTANT H-INVERSE 1>
           <CONSTANT H-BOLD 2>
           <CONSTANT H-ITALIC 4>
           <CONSTANT H-MONO 8>)>

<VERSION?
    (ZIP)
    (EZIP)
    (ELSE <ZIP-OPTIONS UNDO COLOR>)>

<CONSTANT TEMPTABLE <ITABLE 50>>

<CONSTANT READBUF-SIZE 100>
<CONSTANT LEXBUF-SIZE 59>

<DEFINE MAKE-READBUF () <ITABLE NONE ,READBUF-SIZE (BYTE)>>
<DEFINE MAKE-LEXBUF () <ITABLE ,LEXBUF-SIZE (LEXV) 0 #BYTE 0 #BYTE 0>>

<CONSTANT KBD-READBUF <MAKE-READBUF>>
<CONSTANT KBD-LEXBUF <MAKE-LEXBUF>>
<GLOBAL READBUF KBD-READBUF>
<GLOBAL LEXBUF KBD-LEXBUF>


;"The game can override this with SETG. It doesn't go through DARKNESS-F, since
 it has to be a constant on V3."
<OR <GASSIGNED? DARKNESS-STATUS-TEXT>
    <SETG DARKNESS-STATUS-TEXT "Darkness">>

<COND (<NOT <GASSIGNED? EXTRA-FLAGS>> <SETG EXTRA-FLAGS '()>)>

;"These are all set on ROOMS in case no game objects define them."
;"TODO: Eliminate some standard flags or make them optional.
  27 flags in the library only leaves 5 for V3 games."
<SETG KNOWN-FLAGS
    (ATTACKBIT CONTBIT DEVICEBIT DOORBIT EDIBLEBIT FEMALEBIT INVISIBLE KLUDGEBIT
     LIGHTBIT LOCKEDBIT NARTICLEBIT NDESCBIT ONBIT OPENABLEBIT OPENBIT PERSONBIT
     PLURALBIT READBIT SURFACEBIT TAKEBIT TOOLBIT TOUCHBIT TRANSBIT TRYTAKEBIT
     VOWELBIT WEARBIT WORNBIT
     !,EXTRA-FLAGS)>

<PROPDEF ARTICLE <>>

<DEFMAC PRINT-GAME-BANNER ()
    <COND (<GASSIGNED? GAME-TITLE>
           #SPLICE (<VERSION? (ZIP) (ELSE <HLIGHT ,H-BOLD>)>
                    <TELL ,GAME-TITLE CR>
                    <VERSION? (ZIP) (ELSE <HLIGHT ,H-NORMAL>)>
                    <TELL ,GAME-DESCRIPTION CR>))
          (ELSE '<TELL ,GAME-BANNER CR>)>>

<DEFMAC UPPERCASE-CHAR ('C)
    <FORM BIND <LIST <LIST ?TMP .C>>
        '<COND (<AND <G=? .?TMP !\a> <L=? .?TMP !\z>>
                <- .?TMP 32>)
               (ELSE .?TMP)>>>

<VERSION?
    (ZIP
     ;"If unlit, change HERE to 'Darkness' temporarily."
     <DEFMAC DO-READ ('RB 'LB)
         <EXPAND <FORM WRAP-FOR-DARK-STATUS <FORM READ .RB .LB>>>>

     <DEFMAC WRAP-FOR-DARK-STATUS ('F)
         <FORM BIND '((OHERE ,HERE))
             '<COND (<NOT ,HERE-LIT> <SETG HERE ,ROOMS>)>
             .F
             '<SETG HERE .OHERE>>>)
    (ELSE
     <DEFMAC DO-READ ('RB 'LB)
         <FORM READ .RB .LB>>)>

<ADD-TELL-TOKENS
    T *                  <PRINT-DEF .X>
    A *                  <PRINT-INDEF .X>
    CT *                 <PRINT-CDEF .X>
    CA *                 <PRINT-CINDEF .X>>

<VOC "RESTART">
<VOC "QUIT">

<OBJECT PLAYER
    (DESC "you")
    (SYNONYM ME MYSELF)
    (FLAGS NARTICLEBIT PLURALBIT PERSONBIT TOUCHBIT)>

<OBJECT ROOMS
    ;"For V3, we need an object called 'Darkness' to show in the status line."
    %<VERSION?
       (ZIP <LIST DESC ,DARKNESS-STATUS-TEXT>)
       (ELSE #SPLICE ())>
    ;"This has all the flags, just in case other objects don't define them."
    (FLAGS !,KNOWN-FLAGS)>

<ROUTINE V-VERSION ()
    <PRINT-GAME-BANNER>
    <TELL "Release ">
    <PRINTN <BAND <LOWCORE RELEASEID> *3777*>>
    <TELL " / Serial number ">
    <LOWCORE-TABLE SERIAL 6 PRINTC>
    <TELL %<STRING " / " ,ZIL-VERSION " lib " ,ZILLIB-VERSION>>
    <CRLF>>

;"Prints a (short) string with the first letter capitalized."
<ROUTINE PRINT-CAP-STR (S "AUX" MAX C)
    <DIROUT 3 ,TEMPTABLE>
    <PRINT .S>
    <DIROUT -3>
    <SET MAX <GET ,TEMPTABLE 0>>
    <COND (.MAX
           <INC MAX>
           <DO (I 2 .MAX)
               <SET C <GETB ,TEMPTABLE .I>>
               <AND <=? .I 2> <SET C <UPPERCASE-CHAR .C>>>
               <PRINTC .C>>)>>

;"Prints an object name with the first letter capitalized."
<ROUTINE PRINT-CAP-OBJ (OBJ "AUX" MAX C)
    <DIROUT 3 ,TEMPTABLE>
    <PRINTD .OBJ>
    <DIROUT -3>
    <SET MAX <GET ,TEMPTABLE 0>>
    <COND (.MAX
           <INC MAX>
           <DO (I 2 .MAX)
               <SET C <GETB ,TEMPTABLE .I>>
               <AND <=? .I 2> <SET C <UPPERCASE-CHAR .C>>>
               <PRINTC .C>>)>>

;"Implements <TELL A .OBJ>."
<ROUTINE PRINT-INDEF (OBJ "AUX" A)
    <COND (<FSET? .OBJ ,NARTICLEBIT>)
          (<SET A <GETP .OBJ ,P?ARTICLE>> <TELL .A> <PRINTC !\ >)
          (<FSET? .OBJ ,PLURALBIT> <TELL "some ">)
          (<FSET? .OBJ ,VOWELBIT> <TELL "an ">)
          (ELSE <TELL "a ">)>
    <PRINTD .OBJ>>

;"Implements <TELL T .OBJ>."
<ROUTINE PRINT-DEF (OBJ)
    <COND (<NOT <FSET? .OBJ ,NARTICLEBIT>> <TELL "the ">)>
    <PRINTD .OBJ>>

;"Implements <TELL CA .OBJ>."
<ROUTINE PRINT-CINDEF (OBJ "AUX" A)
    <COND (<FSET? .OBJ ,NARTICLEBIT>
           <PRINT-CAP-OBJ .OBJ>
           <RTRUE>)>
    <COND (<SET A <GETP .OBJ ,P?ARTICLE>> <PRINT-CAP-STR .A> <PRINTC !\ >)
          (<FSET? .OBJ ,PLURALBIT> <TELL "Some ">)
          (<FSET? .OBJ ,VOWELBIT> <TELL "An ">)
          (ELSE <TELL "A ">)>
    <PRINTD .OBJ>>

;"Implements <TELL CT .OBJ>."
<ROUTINE PRINT-CDEF (OBJ)
    <COND (<FSET? .OBJ ,NARTICLEBIT>
           <PRINT-CAP-OBJ .OBJ>
           <RTRUE>)
          (ELSE <TELL "The " D .OBJ>)>>

<DEFAULT-DEFINITION PRINT-GAME-OVER
    ;"Prints a message explaining that the game is over or the player has died.
      This is called after JIGS-UP has already printed the message passed in to
      describe the specific circumstances, so usually this should print a generic
      message appropriate for the game's theme."
    <ROUTINE PRINT-GAME-OVER ()
        <TELL "    ****  The game is over  ****" CR>>
>

;"Fills READBUF and LEXBUF by reading a command from the player.

Args:
  PROMPT?: Whether to print the prompt first.

Sets (contents):
  READBUF
  LEXBUF"
<DEFAULT-DEFINITION READLINE
    <ROUTINE READLINE ("OPT" PROMPT?)
        <COND (.PROMPT? <TELL CR "> ">)>
        <SETG READBUF ,KBD-READBUF>
        <SETG LEXBUF ,KBD-LEXBUF>
        <PUTB ,READBUF 0 <- ,READBUF-SIZE 2>>
        ;"The read buffer has a slightly different format on V3."
        <VERSION? (ZIP)
                  (ELSE
                   <PUTB ,READBUF 1 0>
                   <UPDATE-STATUS-LINE>)>
        <DO-READ ,READBUF ,LEXBUF>
        <RTRUE>>>

;"Prompts the player to answer a yes/no question by pressing 'y' or 'n',
repeating the prompt if they press any other key.

The question should be printed before calling this routine.

Returns:
  True if the user pressed 'y', false if they pressed 'n'."
<ROUTINE YES? ("AUX" RESP)
     <PRINTI " (y/n) >">
     <REPEAT ()
         <READLINE>
         <VERSION?
             (ZIP <SET RESP <GETB ,READBUF 1>>)
             (EZIP <SET RESP <GETB ,READBUF 1>>)
             (ELSE
              <COND (<GETB ,READBUF 1>
                     <SET RESP <GETB ,READBUF 2>>)
                    (ELSE
                     <SET RESP 0>)>)>
         <COND (<EQUAL? .RESP !\Y !\y>
                <RTRUE>)
               (<EQUAL? .RESP !\N !\n>
                <RFALSE>)
               (T
                ;<CRLF>
                <TELL "(Please type y or n) >" >)>>>

<ROUTINE GOTO (RM)
    <VERSION? (ZIP) (ELSE <HLIGHT ,H-BOLD>)>
    <TELL D .RM CR>
    <VERSION? (ZIP) (ELSE <HLIGHT ,H-NORMAL>)>>
