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

<CONSTANT TEXT002 "\"It is the forest which cleans and purifies the air for all the world to breathe. Without the Forest of Arden all living things would choke, gag, and die. The trees absorb the foul air of man's polution, his burning and wasting, and give it back to the world again clean, fresh and ready to breath. The stench and dross of the cities is purged and cleansed by the trees. The forest is the lifeblood of the world.\"||The old woman delivers these words very gravely, convincing you that she believes every word of what she is saying. All the time her eyes never leave yours.||\"Ah, but I see I bore you. Enough of this idle prattle, I must take my rest. Good night to you.\"||So saying, she gets up and makes to leave you. You are about to protest that you are far from bored but realize she is only looking for a polite way to leave your company. You let her go and decide to take a room at the inn as well.">

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

<CONSTANT TEXT003 "A figure lies dead in the forest. Ants crawl in and out of its newly picked-clean eye sockets; beetles and rats gnaw at the remains. With a shock you realize the figure is wearing identical clothes to yours - there isn't another pair of boots in the world quite like yours, made to order by a cobbler in Godorno.||\"You are not wearing my ring,\" says Elanor. \"If you cannot trust me, I cannot aid you. You must find your won way and I must continue my search for the saviour of the forest. Begone and never come back, you weak-willed doubter.\"||Elanor and the owl disappear. You are on your own again.">

<ROOM STORY003
    (IN ROOMS)
    (DESC "003")
    (STORY-TEXT TEXT003)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE STORY070)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT004 "Valerian's voice is markedly different from the guttural speech of the Westermen, but there is no doubt he has thrown in his lot with them. It is plain that they depend upon him for their knowledge of the forest and its many dangers. They are planning how to destroy and burn the whole forest tree by tree. Valerian has convinced the chief of the Westermen that his realm will not be safe until every tree, every sapling and every bush in the forest has been razed to the ground.||\"You wanted to tell me something of note, Valerian? Else why have I summoned all my advisers?\"||\"Indeed, sire, I have a plan to destroy the forest at a stroke.\"||\"What stroke?\"||\"By killing the Tree of Life at the very centre of the forest. Slay the tree of Life, sire, and the whole forest, along with everything in it, will die.\"||\"Well, your advice has been sound in the past, Valerian. I will do as you suggest and slay the Tree of Life.\"">
<CONSTANT STORY004-CHOICES-TEXT <LTABLE "interrupt and tell the chief that the death of the forest will mean death and destruction for the whole world, including him" "speak out of the pavilion and leave while the going is good">>
<CONSTANT STORY004-CHOICES-DESTINATIONS <LTABLE STORY198 STORY038>>

<ROOM STORY004
    (IN ROOMS)
    (DESC "004")
    (STORY-TEXT TEXT004)
    (CHOICES-TEXT STORY004-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY004-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (KEYWORD KEYWORD-BULLHORN)
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

<CONSTANT TEXT006 "You call out the dragon's name. Its great head rears slowly above you and its yellow-green eyes bore into yours. Its nostrils dilate as it sucks in a deep breath. Too late, you realize you lied to yourself about knowing the creature's name. There is a terrible whooshing sounds like the dragon's real name as it breathes acid and gas upon you. The torrent of gas and air rolls you across the ground and you are lucky to bang your head on a rock, sparing yourself a more painful death. The Forest of Arden is doomed.">

<ROOM STORY006
    (IN ROOMS)
    (DESC "006")
    (STORY-TEXT TEXT006)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT007 "You say the word and vanish. Your invisibility, however, doesn't help you deal with the Infernal Statue, whose sword is still chopping into the Tree of Life. You are wasting precious time. Which spell will you cast to help save the tree?">
<CONSTANT STORY007-CHOICES-TEXT <LTABLE "cast Choking Fog" "Bafflement" "Visceral Disruption" "Tower of Will">>
<CONSTANT STORY007-CHOICES-DESTINATIONS <LTABLE STORY346 STORY113 STORY064 STORY186>>

<ROOM STORY007
    (IN ROOMS)
    (DESC "007")
    (STORY-TEXT TEXT007)
    (CHOICES-TEXT STORY007-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY007-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT008 "The Kwerrel is delighted with his shiny golden disks of metal, whe he starts trying to weave into his hair. Now that he has got what he wants he scampers away, leaving you alone inside the bush. The archway back to the forest has reappeared so you make good your escape from the bush.">

<ROOM STORY008
    (IN ROOMS)
    (DESC "008")
    (STORY-TEXT TEXT008)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE STORY406)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT009 "\"I must test your fitness to be the forest's saviour,\" says Elanor. \"I hope you pass the test. YOu would not like to see the forest laid to waste would you?\"||She looks regal and yet kind, but her eyes never leave yours.">
<CONSTANT STORY009-CHOICES-TEXT <LTABLE "reply that your reason for visiting the forest is to find the Tree of Knowledge and take some of its wisdom away with you to the lands of men" "say that the forest is too beautiful to be laid waste and you will try to save it">>
<CONSTANT STORY009-CHOICES-DESTINATIONS <LTABLE STORY024 STORY040>>

<ROOM STORY009
    (IN ROOMS)
    (DESC "009")
    (STORY-TEXT TEXT009)
    (CHOICES-TEXT STORY009-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY009-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT016 "You walk across the room without looking to either side, pretending not to have heard the command.||The same voice rings out again, but the imperious tone now carries the sharp ring of anger: \"So you think you can come here and treat us as though we are beneath notice, do you? Are you deaf? Ignore Valerian, would you? I'll make you pay for your insolence.\"||There is a scramble as people leave the common room. Only the old woman in grey stays to watch the fight. It is too late to do anything but fight or run.">
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

<ROOM STORY024
    (IN ROOMS)
    (DESC "024")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT027 "While you hold your ground, Valerian begins casting a spell.">
<CONSTANT STORY027-CHOICES-TEXT <LTABLE "go onto the offensive" "prepare a defensive magic" "otherwise">>
<CONSTANT STORY027-CHOICES-DESTINATIONS <LTABLE STORY169 STORY182 STORY087>>
<CONSTANT STORY027-CHOICES-SKILLS <LTABLE SKILL-SPELLS SKILL-SPELLS NONE>>

<ROOM STORY027
    (IN ROOMS)
    (DESC "027")
    (STORY-TEXT TEXT027)
    (CHOICES-TEXT STORY027-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY027-CHOICES-DESTINATIONS)
    (CHOICES-SKILL-REQUIREMENTS STORY027-CHOICES-SKILLS)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT STORY037-CHOICES-TEXT <LTABLE "obey the command" "ignore it" "leave the inn">>
<CONSTANT STORY037-CHOICES-DESTINATIONS <LTABLE STORY108 STORY016 STORY117>>
<CONSTANT TEXT037 "The smoking lamps produce little light, but peering through the gloom you can see several circular tables set about the hall, three near the fire and four back in the shadows. Two men, one tall and the other short and stocky, hog the fire and are engaged in conversation. Several dark figures are seated at the tables. One of these seems to be shrouded in a black travelling cloak.||\"You, stranger. Do you fear enemies here? Why skulk in the shadows like a rogue? Step nearer the fire so we may see your face.\"||You can't even tell who spoke to you but he doesn't sound friendly.">

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

<ROOM STORY038
    (IN ROOMS)
    (DESC "038")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY040
    (IN ROOMS)
    (DESC "040")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY042
    (IN ROOMS)
    (DESC "042")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
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

<ROOM STORY060
    (IN ROOMS)
    (DESC "060")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY064
    (IN ROOMS)
    (DESC "064")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
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

<ROOM STORY070
    (IN ROOMS)
    (DESC "070")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (KEYWORD-CHECK STORY070-KEYWORD-CHECK)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY070-KEYWORD-CHECK ()
    <COND (<AND <IN? ,KEYWORD-WATERBEARER ,KEYWORDS> <IN? ,KEYWORD-BULLHORN ,KEYWORDS>> <RETURN ,STORY256>)>
    <COND (<IN? ,KEYWORD-WATERBEARER ,KEYWORDS> <RETURN ,STORY042>)>
    <RETURN ,STORY060>>

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

<ROOM STORY087
    (IN ROOMS)
    (DESC "087")
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

<ROOM STORY113
    (IN ROOMS)
    (DESC "113")
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

<ROOM STORY169
    (IN ROOMS)
    (DESC "169")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY182
    (IN ROOMS)
    (DESC "182")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY186
    (IN ROOMS)
    (DESC "186")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY198
    (IN ROOMS)
    (DESC "198")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY210
    (IN ROOMS)
    (DESC "210")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY256
    (IN ROOMS)
    (DESC "256")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT333 "The young girl, who says that her father is away on a journey to buy provisions, charges you a piece gold for your food and for a night's lodging.||You sleep well and awake early but refreshed. Washing in cold water is invigorating and you enjoy the feel of the rough inn towel. There will be no such comforts in the forest.||Downstairs the inn is deserted. The woman in grey, the only other guest, has left already. The young girl is mopping the floor and she looks troubled. Asking what ails her brings the reply, \"My father did not return last night. I tried not to worry but I knew in my heart he wouldn't come. He went into the forest to buy provisions before the Westermen block the spice road. I know he has gone the way of the others. And that strange woman in grey never so much as touched her bed last night, though she didn't leave her room till after dawn. I begged Father to take Renard to guide him but he wouldn't spend the money. Now I'll never see him again\". With this, she breaks into tears.||As you comfort here, you ask the innkeeper's daughter to describe her father and say you will try to find either him or news of him. As you turn to leave she says, \"Fare you well, traveller, you are my only hope.\"">

<ROOM STORY333
    (IN ROOMS)
    (DESC "333")
    (STORY-TEXT TEXT333)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE STORY210)
    (COST 1)
    (FLAGS LIGHTBIT)>

<ROOM STORY346
    (IN ROOMS)
    (DESC "346")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>

<ROOM STORY406
    (IN ROOMS)
    (DESC "406")
    (STORY-TEXT NONE)
    (CHOICES-TEXT NONE)
    (CHOICES-DESTINATIONS NONE)
    (CHOICES-SKILL-REQUIREMENTS NONE)
    (CHOICES-KEYWORD-REQUIREMENTS NONE)
    (CONTINUE NONE)
    (FLAGS LIGHTBIT)>
