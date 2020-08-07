<CONSTANT INSTRUCTIONS-HEADER "|HOW TO USE THIS E-ADVENTURE|">
<CONSTANT INSTRUCTIONS-TEXT "Virtual Reality Adventure Books are solo adventures with a big difference. They're not random. Whether you live or die doesn't depend on a dice roll -- it's up to you.||To start your adventure simply choose your character. Each character has a unique selection of four skills: these skills will decide which options are available to you.||Also note the Life Points and possessions of the character. Life Points are lost each time you are wounded. If you are ever reduced to zero Life Points, you have been killed and the adventure ends. Sometimes you can recover Life Points during the adventure, but you can never have more Life Points that you started with. You can carry up to eight possessions at a time. If you are at this limit and find something else you want, drop one of your other possessions to make room for the new item.||Consider your selection of skills. They establish your special strengths, and will help you to role-play your choices during the adventure. If you arrive at an entry which lists options for more than one of your skills, you can choose which skill to use in that situation.||During action selection and in other parts of the game, pressing 'H' or '?' brings up a list of additional command keys.">

<ROUTINE INSTRUCTIONS ()
    <HLIGHT ,H-BOLD>
    <TELL INSTRUCTIONS-HEADER>
    <HLIGHT 0>
    <CRLF>
    <TELL INSTRUCTIONS-TEXT>
    <CRLF>>

<CONSTANT HELP-TEXT "C - Display player information (skills, items, codewords)|G - Display glossary of skills|I - Display inventory (items)|R - Restore progress from a saved file|S - Save current progress to a file|Q - quit the game">

<ROUTINE DISPLAY-HELP ()
    <CRLF>
    <HLIGHT ,H-BOLD>
    <TELL "Additional Command Keys:">
    <HLIGHT 0>
    <CRLF><CRLF>
    <TELL HELP-TEXT>
    <CRLF>>