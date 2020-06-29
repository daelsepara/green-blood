<CONSTANT PROLOGUE-TEXT "Sickened by the ways of your fellow men and despairing of man's cruelty, you have quit the teeming city of Godorno, with its cesspools and plague pits, its beggars and abject slaves. You walk for days, revelling in the fresh air of the countryside. This is a green land of hills and dales, farmsteads and mills - a veritable bread-basket that yields all its grains and fruit to the decadent city.||As you walk you have much time to think. Long ago your family told you how the star of destiny, purple Praxis, changed colour to the flaming gold of Moraine, God of War, at the moment of your birth. Even as Praxis flared with energy, so your mother's life waned. She died of exhaustion bringing you into the world, but her sisters looked after you until you were old enough, at eight, to go up to the dreaming spires of the academy at Hegalopolis.||The bookish scholars trained you in many things and all who taught there agreed you showed great promise. But when you were just fifteen years old, Gornild, the harsh overlord of Godorno, dissolved all the monasteries in the lands along the Marches, fearing their teachings would turn minds against his corrupt rule. You were forced to scratch out a miserable living just like the other poor folk of the city.||The cloistered life of the academy, with its politeness and order, gave you scant preparation for the life on the streets of Godorno. You developed the cunning of a sewer rat and the patience of the damned just staying alive from day to day, dodging the press gangs from the war galleys that carry young men off to fight the corsairs. Your cunning was great enough to avoid the fate of the galley slave and you have grown to maturity, strong, tough and determined.||The ways of the city folk revolt you. Your diligent study of history shows an ever churning cycle of oppressors and the downtrodden. Man is strapped to the wheel of fate to be alternately dragged to the heights and plunged again into the pits and windblasted depths of pain and want.||As you walk, every step that bears you away from the stench of the city is a step taken more lightly than the last. YOu resolve to return to the city only if you have changed things for the better. Yours is the nobleness of spirit that would lay down its life to better the lot of your fellow man. If Praxis robbed you of a mother's love, Praxis can repay the debt by shining brightly on your destiny.||As the miles pass with you deep in thought, your path takes you inexorably on towards the great forest beyond the lands of men. Your curiosity has been piqued by rumours and legends about the ancient Tree of Knowledge, a fabled tree hundres of feet high, with golden bark and silver leaves. It is said to grow at the centre of the great Forest of Arden.||Fey sylvan elves are said to dwell there. The stories of what they look like and the fate that befalls those lost in the forest are too fantastically horrific to be true. Each fable tells a different story: of elves with six arms, of elves with scimitar blades in place of forearms, and of greenbark bows that can send an arrow from one horizon to the other and which always hit their mark. And there are stories of elves with jewels for eyes which melt when they cry, as they must when disturbed by man, for they keenly sense the tragedy of man's mortality.||Though each story is fanciful and bizarre they all agree in one respect. No one who sees the elves lives to tell of it. There isn't a man alive who has glimpsed the splendid glory of Elvenhame, the city of the elves.||You no longer know whether it is the desire to see elves or your wish to change the world for the better that takes you on your quest. What, however, if you were to learn the knowledge of ages and return to the lands of men as a saviour? Your name would go down in history. Anything less magnificent than this noble quest for knowledge that will save mankind will not do. You will become a hreo or die in the attempt.||You are on the road. It is approaching early evening and purple Praxis already beams out in the low dusk sky. As you stare at the star, it seems to wink out then flare bright golden yellow before resuming its purple form. It is a sign that your destiny awaits in the Forest of Arden.">

<ROOM PROLOGUE
    (IN ROOMS)
    (DESC "PROLOGUE")
    (STORY-TEXT PROLOGUE-TEXT)
    (CHOICE-TEXT NONE)
    (CHOICE-DESTINATIONS NONE)
    (CHOICE-SKILL-REQUIREMENTS NONE)
    (CHOICE-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE STORY001)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT001 "The road tops a ridge that is straddled by the ruins of a great wall, half covered in turf. The wall once marked the border between the lands of man and domain of the elves. Quickly you scramble up and over the blocks of fallen stone. Standing atop the ruin, you survey the outlands beyond.||Your gaze sweeps across the broad patches of purple heather and yellow gorse that cover the inhospitable uplands. The air smells fresh; it is good to be free of the noisome taint of the sewers and plague pits of the city you have left behind. The road winds down into a valley, at the foot of which nestles Burg, a small town of neat white houses with roof of triangular grey slates. Here may be your last chance to talk with mankind before you are swallowed up by the depths of the great Forest of Arden.||As you walk towards the buildings through the tilled and reaped land of the valley, you pass gleaners - peasants who search the ground for stalks of straw and seed spilled during the harvest. The townsfolk, seemingly wary of outsiders, keep out of your way. Ahead of you is an inn, the largest building in the town. Looking forward to perhaps your last night's sleep in a proper bed for many weeks, you make for this hostelry.||The inn seems surprisingly large for a town that is at the very edge of the wilderness. It must once have been a baronial hall built by a lord seeking to carve out a kingdom beyond the great wall. As you walk down the main street the ruddy sky is turning with the onset of twilight. What looked an inviting little town by day seems sombre and unwelcoming at nightfall. As you linger a moment outside the inn, there is a crack of thunder and it begins to pour with rain.||Inside the inn a young girl is lighting oil lamps with a taper. Until your eyes grow accustomed to the gloom you cannot make out who shares the common room with you, nor many details of the interior of the inn itself.">

<ROOM STORY001
    (IN ROOMS)
    (DESC "001")
    (STORY-TEXT TEXT001)
    (CHOICE-TEXT STORY001-CHOICE-TEXT)
    (CHOICE-DESTINATIONS STORY001-DESTINATIONS)
    (CHOICE-SKILL-REQUIREMENTS STORY001-SKILL-REQUIREMENTS)
    (CHOICE-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT STORY001-CHOICE-TEXT <LTABLE "wait by the door until you can see better" "step in and warm yourself before the fire">>
<CONSTANT STORY001-DESTINATIONS <LTABLE STORY037 STORY055>>
<CONSTANT STORY001-SKILL-REQUIREMENTS <LTABLE NONE NONE>>

<ROOM STORY037
    (IN ROOMS)
    (DESC "037")
    (STORY-TEXT NONE)
    (CHOICE-TEXT NONE)
    (CHOICE-DESTINATIONS NONE)
    (CHOICE-SKILL-REQUIREMENTS NONE)
    (CHOICE-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY055
    (IN ROOMS)
    (DESC "055")
    (STORY-TEXT NONE)
    (CHOICE-TEXT NONE)
    (CHOICE-DESTINATIONS NONE)
    (CHOICE-SKILL-REQUIREMENTS NONE)
    (CHOICE-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>
