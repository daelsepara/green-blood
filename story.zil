<ROOM BLANK
    (IN ROOMS)
    (DESC " ")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT PROLOGUE-TEXT "Sickened by the ways of your fellow men and despairing of man's cruelty, you have quit the teeming city of Godorno, with its cesspools and plague pits, its beggars and abject slaves. You walk for days, revelling in the fresh air of the countryside. This is a green land of hills and dales, farmsteads and mills - a veritable bread-basket that yields all its grains and fruit to the decadent city.||As you walk you have much time to think. Long ago your family told you how the star of destiny, purple Praxis, changed colour to the flaming gold of Moraine, God of War, at the moment of your birth. Even as Praxis flared with energy, so your mother's life waned. She died of exhaustion bringing you into the world, but her sisters looked after you until you were old enough, at eight, to go up to the dreaming spires of the academy at Hegalopolis.||The bookish scholars trained you in many things and all who taught there agreed you showed great promise. But when you were just fifteen years old, Gornild, the harsh overlord of Godorno, dissolved all the monasteries in the lands along the Marches, fearing their teachings would turn minds against his corrupt rule. You were forced to scratch out a miserable living just like the other poor folk of the city.||The cloistered life of the academy, with its politeness and order, gave you scant preparation for the life on the streets of Godorno. You developed the cunning of a sewer rat and the patience of the damned just staying alive from day to day, dodging the press gangs from the war galleys that carry young men off to fight the corsairs. Your cunning was great enough to avoid the fate of the galley slave and you have grown to maturity, strong, tough and determined.||The ways of the city folk revolt you. Your diligent study of history shows an ever churning cycle of oppressors and the downtrodden. Man is strapped to the wheel of fate to be alternately dragged to the heights and plunged again into the pits and windblasted depths of pain and want.||As you walk, every step that bears you away from the stench of the city is a step taken more lightly than the last. YOu resolve to return to the city only if you have changed things for the better. Yours is the nobleness of spirit that would lay down its life to better the lot of your fellow man. If Praxis robbed you of a mother's love, Praxis can repay the debt by shining brightly on your destiny.||As the miles pass with you deep in thought, your path takes you inexorably on towards the great forest beyond the lands of men. Your curiosity has been piqued by rumours and legends about the ancient Tree of Knowledge, a fabled tree hundres of feet high, with golden bark and silver leaves. It is said to grow at the centre of the great Forest of Arden.||Fey sylvan elves are said to dwell there. The stories of what they look like and the fate that befalls those lost in the forest are too fantastically horrific to be true. Each fable tells a different story: of elves with six arms, of elves with scimitar blades in place of forearms, and of greenbark bows that can send an arrow from one horizon to the other and which always hit their mark. And there are stories of elves with jewels for eyes which melt when they cry, as they must when disturbed by man, for they keenly sense the tragedy of man's mortality.||Though each story is fanciful and bizarre they all agree in one respect. No one who sees the elves lives to tell of it. There isn't a man alive who has glimpsed the splendid glory of Elvenhame, the city of the elves.||You no longer know whether it is the desire to see elves or your wish to change the world for the better that takes you on your quest. What, however, if you were to learn the knowledge of ages and return to the lands of men as a saviour? Your name would go down in history. Anything less magnificent than this noble quest for knowledge that will save mankind will not do. You will become a hreo or die in the attempt.||You are on the road. It is approaching early evening and purple Praxis already beams out in the low dusk sky. As you stare at the star, it seems to wink out then flare bright golden yellow before resuming its purple form. It is a sign that your destiny awaits in the Forest of Arden.">

<ROOM PROLOGUE
    (IN ROOMS)
    (DESC "PROLOGUE")
    (STORY-TEXT PROLOGUE-TEXT)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE STORY001)
    (FLAGS LIGHTBIT)>

<CONSTANT STORY001-CHOICES-TEXT <LTABLE "wait by the door until you can see better" "step in and warm yourself before the fire">>
<CONSTANT STORY001-CHOICES-DESTINATIONS <LTABLE STORY037 STORY055>>
<CONSTANT TEXT001 "The road tops a ridge that is straddled by the ruins of a great wall, half covered in turf. The wall once marked the border between the lands of man and domain of the elves. Quickly you scramble up and over the blocks of fallen stone. Standing atop the ruin, you survey the outlands beyond.||Your gaze sweeps across the broad patches of purple heather and yellow gorse that cover the inhospitable uplands. The air smells fresh; it is good to be free of the noisome taint of the sewers and plague pits of the city you have left behind. The road winds down into a valley, at the foot of which nestles Burg, a small town of neat white houses with roof of triangular grey slates. Here may be your last chance to talk with mankind before you are swallowed up by the depths of the great Forest of Arden.||As you walk towards the buildings through the tilled and reaped land of the valley, you pass gleaners - peasants who search the ground for stalks of straw and seed spilled during the harvest. The townsfolk, seemingly wary of outsiders, keep out of your way. Ahead of you is an inn, the largest building in the town. Looking forward to perhaps your last night's sleep in a proper bed for many weeks, you make for this hostelry.||The inn seems surprisingly large for a town that is at the very edge of the wilderness. It must once have been a baronial hall built by a lord seeking to carve out a kingdom beyond the great wall. As you walk down the main street the ruddy sky is turning with the onset of twilight. What looked an inviting little town by day seems sombre and unwelcoming at nightfall. As you linger a moment outside the inn, there is a crack of thunder and it begins to pour with rain.||Inside the inn a young girl is lighting oil lamps with a taper. Until your eyes grow accustomed to the gloom you cannot make out who shares the common room with you, nor many details of the interior of the inn itself.">

<ROOM STORY001
    (IN ROOMS)
    (DESC "001")
    (STORY-TEXT TEXT001)
    (CHOICES-TEXT STORY001-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY001-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT002 "'It is the forest which cleans and purifies the air for all the world to breathe. Without the Forest of Arden all living things would choke, gag, and die. The trees absorb the foul air of man's polution, his burning and wasting, and give it back to the world again clean, fresh and ready to breath. The stench and dross of the cities is purged and cleansed by the trees. The forest is the lifeblood of the world.'||The old woman delivers these words very gravely, convincing you that she believes every word of what she is saying. All the time her eyes never leave yours.||'Ah, but I see I bore you. Enough of this idle prattle, I must take my rest. Good night to you.'||So saying, she gets up and makes to leave you. You are about to protest that you are far from bored but realize she is only looking for a polite way to leave your company. You let her go and decide to take a room at the inn as well.">

<ROOM STORY002
    (IN ROOMS)
    (DESC "002")
    (STORY-TEXT TEXT002)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE STORY333)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT005 "As Valerian stands up, he lets his cloak fall to the floor, reavealing armour made of quilted leather - light armor that wouldn't stop a sword thrust. He has no sword or obvious weapon to hand. Three small coloured pouches swing from his belt.">
<CONSTANT STORY005-CHOICES-TEXT <LTABLE "decide to hold your ground" "decide to close with him">>
<CONSTANT STORY005-CHOICES-DESTINATIONS <LTABLE STORY027 STORY065>>

<ROOM STORY005
    (IN ROOMS)
    (DESC "005")
    (STORY-TEXT TEXT005)
    (CHOICES-TEXT STORY005-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY005-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT016 "You walk across the room without looking to either side, pretending not to have heard the command.||The same voice rings out again, but the imperious tone now carries the sharp ring of anger: 'So you think you can come here and treat us as though we are beneath notice, do you? Are you deaf? Ignore Valerian, would you? I'll make you pay for your insolence.'||There is a scramble as people leave the common room. Only the old woman in grey stays to watch the fight. It is too late to do anything but fight or run.">
<CONSTANT STORY016-CHOICES-TEXT <LTABLE "run out of the inn without looking back" "otherwise, you must fight">>
<CONSTANT STORY016-CHOICES-DESTINATIONS <LTABLE STORY117 STORY005>>

<ROOM STORY016
    (IN ROOMS)
    (DESC "016")
    (STORY-TEXT TEXT016)
    (CHOICES-TEXT STORY016-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY016-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY027
    (IN ROOMS)
    (DESC "027")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT STORY037-CHOICES-TEXT <LTABLE "obey the command" "ignore it" "leave the inn">>
<CONSTANT STORY037-CHOICES-DESTINATIONS <LTABLE STORY108 STORY016 STORY117>>
<CONSTANT TEXT037 "The smoking lamps produce little light, but peering through the gloom you can see several circular tables set about the hall, three near the fire and four back in the shadows. Two men, one tall and the other short and stocky, hog the fire and are engaged in conversation. Several dark figures are seated at the tables. One of these seems to be shrouded in a black travelling cloak.||'You, stranger. Do you fear enemies here? Why skulk in the shadows like a rogue? Step nearer the fire so we may see your face.'||You can't even tell who spoke to you but he doesn't sound friendly.">

<ROOM STORY037
    (IN ROOMS)
    (DESC "037")
    (STORY-TEXT TEXT037)
    (CHOICES-TEXT STORY037-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY037-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT055 "A tall man and his short and stocky companion move apart to allow you room in front of the roaring log fire. Both give you a sidelong glance. They look rough and weather-beaten men: the smaller of the two has a face like a bull-mastiff, the taller has the sly cunning look of a fox.">
<CONSTANT STORY055-CHOICES-TEXT <LTABLE "tell them who you are and why you have come to Burg" "remain silent">>
<CONSTANT STORY055-CHOICES-DESTINATIONS <LTABLE STORY072 STORY094>>

<ROOM STORY055
    (IN ROOMS)
    (DESC "055")
    (STORY-TEXT TEXT055)
    (CHOICES-TEXT STORY055-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY055-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY065
    (IN ROOMS)
    (DESC "065")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY072
    (IN ROOMS)
    (DESC "072")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY094
    (IN ROOMS)
    (DESC "094")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY108
    (IN ROOMS)
    (DESC "108")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY117
    (IN ROOMS)
    (DESC "117")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY333
    (IN ROOMS)
    (DESC "333")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>
