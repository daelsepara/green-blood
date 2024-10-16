<ROUTINE POWER (BASE EXP)
    <COND (<G? .EXP 0>
        <RETURN <* .BASE <POWER .BASE <- .EXP 1>>>>
    )(ELSE
        <RETURN 1>
    )>>

<ROUTINE GET-DIGIT (CHAR "OPT" BASE "AUX" DIGIT)
    <COND (<NOT .BASE> <SET BASE 10>)>
    <SET DIGIT 0>
    <COND (<AND <G? .BASE 10> <G=? .CHAR !\A> <L=? .CHAR !\Z>>
        <SET DIGIT <+ <- .CHAR !\A> 10>>
    )(<AND <G? .BASE 10> <G=? .CHAR !\a> <L=? .CHAR !\z>>
        <SET DIGIT <+ <- .CHAR !\a> 10>>
    )(<AND <G=? .CHAR !\0> <L=? .CHAR !\9>>
        <SET DIGIT <- .CHAR !\0>>
    )>
    <COND (<OR <G? .DIGIT <- .BASE 1>> <L? .DIGIT 0>> <RETURN 0>)>
    <RETURN .DIGIT>>

<ROUTINE TO-INTEGER (START LEN "OPT" BASE "AUX" NUM CHAR SIG)
    <COND (<NOT .BASE> <SET BASE 10>)>
    <SET SIG 1>
    <SET NUM 0>
    <DO (I 1 .LEN)
        <SET CHAR <GETB ,READBUF <+ .START .I>>>
        <COND (<OR
            <AND <G=? .CHAR !\0> <L=? .CHAR !\9>>
            <AND <G? .BASE 10> <L=? .BASE 36>
                <OR
                    <AND <G=? .CHAR !\A> <L=? .CHAR !\Z>>
                    <AND <G=? .CHAR !\a> <L=? .CHAR !\z>>
                >
            >>
            <SET NUM <+ .NUM <* <GET-DIGIT .CHAR .BASE> <POWER .BASE <- .LEN .I>>>>>
        )(<AND <EQUAL? .I 1> <EQUAL? .CHAR !\- !\+>>
            <COND (<EQUAL? .CHAR !\->
                <SET SIG -1>
            )>
        )(ELSE
            <RETURN 0>
        )>
    >
    <RETURN <* .SIG .NUM>>>

<ROUTINE CONVERT-TO-NUMBER (N "OPT" BASE "AUX" INDEX START LEN)
    <COND (<NOT .BASE> <SET BASE 10>)>
    <COND (<0? <GETB ,LEXBUF 1>> <RETURN 0>)>
    <SET INDEX <* .N 4>>
    <SET START <- <GETB ,LEXBUF <+ .INDEX 1>> 1>>
    <SET LEN <GETB ,LEXBUF .INDEX>>
    <RETURN <TO-INTEGER .START .LEN .BASE>>>