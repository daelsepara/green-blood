<CONSTANT R-NONE 0>
<CONSTANT R-SKILL 1>
<CONSTANT R-KEYWORD 2>
<CONSTANT R-ITEM 3>

<CONSTANT TEXT001 "The road tops a ridge that is straddled by the ruins of a great wall, half covered in turf. The wall once marked the border between the lands of man and domain of the elves. Quickly you scramble up and over the blocks of fallen stone. Standing atop the ruin, you survey the outlands beyond.||Your gaze sweeps across the broad patches of purple heather and yellow gorse that cover the inhospitable uplands. The air smells fresh; it is good to be free of the noisome taint of the sewers and plague pits of the city you have left behind. The road winds down into a valley, at the foot of which nestles Burg, a small town of neat white houses with roof of triangular grey slates. Here may be your last chance to talk with mankind before you are swallowed up by the depths of the great Forest of Arden.||As you walk towards the buildings through the tilled and reaped land of the valley, you pass gleaners - peasants who search the ground for stalks of straw and seed spilled during the harvest. The townsfolk, seemingly wary of outsiders, keep out of your way. Ahead of you is an inn, the largest building in the town. Looking forward to perhaps your last night's sleep in a proper bed for many weeks, you make for this hostelry.||The inn seems surprisingly large for a town that is at the very edge of the wilderness. It must once have been a baronial hall built by a lord seeking to carve out a kingdom beyond the great wall. As you walk down the main street the ruddy sky is turning with the onset of twilight. What looked an inviting little town by day seems sombre and unwelcoming at nightfall. As you linger a moment outside the inn, there is a crack of thunder and it begins to pour with rain.||Inside the inn a young girl is lighting oil lamps with a taper. Until your eyes grow accustomed to the gloom you cannot make out who shares the common room with you, nor many details of the interior of the inn itself.">
<CONSTANT STORY001-CHOICES-TEXT <LTABLE "wait by the door until you can see better" "step in and warm yourself before the fire">>
<CONSTANT STORY001-CHOICES-DESTINATIONS <LTABLE STORY037 STORY055>>
<CONSTANT STORY001-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY001
    (IN ROOMS)
    (DESC "001")
    (STORY-TEXT TEXT001)
    (CHOICES-TEXT STORY001-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY001-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY001-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT002 "\"It is the forest which cleans and purifies the air for all the world to breathe. Without the Forest of Arden all living things would choke, gag, and die. The trees absorb the foul air of man's polution, his burning and wasting, and give it back to the world again clean, fresh and ready to breath. The stench and dross of the cities is purged and cleansed by the trees. The forest is the lifeblood of the world.\"||The old woman delivers these words very gravely, convincing you that she believes every word of what she is saying. All the time her eyes never leave yours.||\"Ah, but I see I bore you. Enough of this idle prattle, I must take my rest. Good night to you.\"||So saying, she gets up and makes to leave you. You are about to protest that you are far from bored but realize she is only looking for a polite way to leave your company. You let her go and decide to take a room at the inn as well.">

<ROOM STORY002
    (IN ROOMS)
    (DESC "002")
    (STORY-TEXT TEXT002)
    (CONTINUE STORY333)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT003 "A figure lies dead in the forest. Ants crawl in and out of its newly picked-clean eye sockets; beetles and rats gnaw at the remains. With a shock you realize the figure is wearing identical clothes to yours - there isn't another pair of boots in the world quite like yours, made to order by a cobbler in Godorno.||\"You are not wearing my ring,\" says Elanor. \"If you cannot trust me, I cannot aid you. You must find your won way and I must continue my search for the saviour of the forest. Begone and never come back, you weak-willed doubter.\"||Elanor and the owl disappear. You are on your own again.">

<ROOM STORY003
    (IN ROOMS)
    (DESC "003")
    (STORY-TEXT TEXT003)
    (CONTINUE STORY070)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT004 "Valerian's voice is markedly different from the guttural speech of the Westermen, but there is no doubt he has thrown in his lot with them. It is plain that they depend upon him for their knowledge of the forest and its many dangers. They are planning how to destroy and burn the whole forest tree by tree. Valerian has convinced the chief of the Westermen that his realm will not be safe until every tree, every sapling and every bush in the forest has been razed to the ground.||\"You wanted to tell me something of note, Valerian? Else why have I summoned all my advisers?\"||\"Indeed, sire, I have a plan to destroy the forest at a stroke.\"||\"What stroke?\"||\"By killing the Tree of Life at the very centre of the forest. Slay the tree of Life, sire, and the whole forest, along with everything in it, will die.\"||\"Well, your advice has been sound in the past, Valerian. I will do as you suggest and slay the Tree of Life.\"">
<CONSTANT STORY004-CHOICES-TEXT <LTABLE "interrupt and tell the chief that the death of the forest will mean death and destruction for the whole world, including him" "speak out of the pavilion and leave while the going is good">>
<CONSTANT STORY004-CHOICES-DESTINATIONS <LTABLE STORY198 STORY038>>
<CONSTANT STORY004-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY004
    (IN ROOMS)
    (DESC "004")
    (STORY-TEXT TEXT004)
    (CHOICES-TEXT STORY004-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY004-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY004-CHOICES-TYPES)
    (KEYWORD KEYWORD-BULLHORN)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT005 "As Valerian stands up, he lets his cloak fall to the floor, reavealing armour made of quilted leather - light armor that wouldn't stop a sword thrust. He has no sword or obvious weapon to hand. Three small coloured pouches swing from his belt.">
<CONSTANT STORY005-CHOICES-TEXT <LTABLE "decide to hold your ground" "decide to close with him">>
<CONSTANT STORY005-CHOICES-DESTINATIONS <LTABLE STORY027 STORY065>>
<CONSTANT STORY005-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY005
    (IN ROOMS)
    (DESC "005")
    (STORY-TEXT TEXT005)
    (CHOICES-TEXT STORY005-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY005-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY005-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT006 "You call out the dragon's name. Its great head rears slowly above you and its yellow-green eyes bore into yours. Its nostrils dilate as it sucks in a deep breath. Too late, you realize you lied to yourself about knowing the creature's name. There is a terrible whooshing sounds like the dragon's real name as it breathes acid and gas upon you. The torrent of gas and air rolls you across the ground and you are lucky to bang your head on a rock, sparing yourself a more painful death. The Forest of Arden is doomed.">

<ROOM STORY006
    (IN ROOMS)
    (DESC "006")
    (STORY-TEXT TEXT006)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT007 "You say the word and vanish. Your invisibility, however, doesn't help you deal with the Infernal Statue, whose sword is still chopping into the Tree of Life. You are wasting precious time. Which spell will you cast to help save the tree?">
<CONSTANT STORY007-CHOICES-TEXT <LTABLE "cast Choking Fog" "Bafflement" "Visceral Disruption" "Tower of Will">>
<CONSTANT STORY007-CHOICES-DESTINATIONS <LTABLE STORY346 STORY113 STORY064 STORY186>>
<CONSTANT STORY007-CHOICES-TYPES <LTABLE R-NONE R-NONE R-NONE R-NONE>>

<ROOM STORY007
    (IN ROOMS)
    (DESC "007")
    (STORY-TEXT TEXT007)
    (CHOICES-TEXT STORY007-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY007-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY007-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT008 "The Kwerrel is delighted with his shiny golden disks of metal, whe he starts trying to weave into his hair. Now that he has got what he wants he scampers away, leaving you alone inside the bush. The archway back to the forest has reappeared so you make good your escape from the bush.">

<ROOM STORY008
    (IN ROOMS)
    (DESC "008")
    (STORY-TEXT TEXT008)
    (CONTINUE STORY406)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT009 "\"I must test your fitness to be the forest's saviour,\" says Elanor. \"I hope you pass the test. YOu would not like to see the forest laid to waste would you?\"||She looks regal and yet kind, but her eyes never leave yours.">
<CONSTANT STORY009-CHOICES-TEXT <LTABLE "reply that your reason for visiting the forest is to find the Tree of Knowledge and take some of its wisdom away with you to the lands of men" "say that the forest is too beautiful to be laid waste and you will try to save it">>
<CONSTANT STORY009-CHOICES-DESTINATIONS <LTABLE STORY024 STORY040>>
<CONSTANT STORY009-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY009
    (IN ROOMS)
    (DESC "009")
    (STORY-TEXT TEXT009)
    (CHOICES-TEXT STORY009-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY009-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY009-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT010 "\"Then why have you disturbed my slumber? You have woken me a year early. Now I will feel sick for the next year-\"||The dragon rolls over and seems to be going back to sleep.">
<CONSTANT STORY010-CHOICES-TEXT <LTABLE "attack it" "try to steal its treasure" "continue your quest and leave the dragon to slumber">>
<CONSTANT STORY010-CHOICES-DESTINATIONS <LTABLE STORY059 STORY079 STORY049>>
<CONSTANT STORY010-CHOICES-TYPES <LTABLE R-NONE R-NONE R-NONE>>

<ROOM STORY010
    (IN ROOMS)
    (DESC "010")
    (STORY-TEXT TEXT010)
    (CHOICES-TEXT STORY010-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY010-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY010-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT011 "You know without doubt that your best plan is to call upon the dragon that has promised its help. Certeain in the knowledge that it will obey you, you set off for the Bonehill to enlist its help.||The journey passes swiftly with the help of an elf to guide you, and you are soon at the dragon's lar.||You call out its name . . .">

<ROOM STORY011
    (IN ROOMS)
    (DESC "011")
    (STORY-TEXT TEXT011)
    (CONTINUE STORY083)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT012 "You tell Pozzo that to escape the forest he should make for a river and follow it to the sea. You know that there is a city or town at every river mouth for hundreds of miles around, and when he reaches one he can take ship for Godorno. He bids you farewell and says you may stay as his honoured guest at his in in Burg if you are ever travelling that way again. With that, he sets out to return to his beloved daughter.||You are soon safe back in the forest, and alone again. The awful sights and sounds of the Westerman camp are soon left far behind.">
<CONSTANT STORY012-CHOICES-TEXT <LTABLE "head west" "east" "south-west" "south">>
<CONSTANT STORY012-CHOICES-DESTINATIONS <LTABLE STORY043 STORY427 STORY070 STORY078>>
<CONSTANT STORY012-CHOICES-TYPE <LTABLE R-NONE R-NONE R-NONE R-NONE>>

<ROOM STORY012
    (IN ROOMS)
    (DESC "012")
    (STORY-TEXT TEXT012)
    (CHOICES-TEXT STORY012-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY012-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY012-CHOICES-TYPE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT013 "All is quiet behind you but you do not look back. The path is difficult, overgrown and boggy. Every now and then you are hard put to decide which way it leads, but by keeping fairly close to the great river you make progress for many hours until nightfall.||The noises of the forest seem to intensify with night: there is buzzing, clicking, croaking and the hoot of alone owl to keep you company. Finding a dry place to rest is not easy but at last you find a mound of earth on which you can settle down.">
<CONSTANT STORY013-CHOICES-TEXT <LTABLE "turn your pendant into a warning stone" "otherwise">>
<CONSTANT STORY013-CHOICES-DESTINATIONS <LTABLE STORY361 STORY419>>
<CONSTANT STORY013-CHOICES-TYPES <LTABLE R-SKILL R-NONE>>
<CONSTANT STORY013-CHOICES-REQUIREMENTS <LTABLE SKILL-CHARMS NONE>>

<ROOM STORY013
    (IN ROOMS)
    (DESC "013")
    (STORY-TEXT TEXT013)
    (CHOICES-TEXT STORY013-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY013-CHOICES-DESTINATIONS)
    (CHOICES-REQUIREMENTS STORY013-CHOICES-REQUIREMENTS)
    (CHOICES-TYPES STORY013-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT014 "\"Yes it would, more terrible than you can know. The stench and dross of the cities is purged and cleansed by the forest. The trees absorb the foul air of man's pollution, his berning and smelting, and give it back to the world again clean, fresh and ready to breathe. The forest is the lifeblood of the world; without it the world will choke, gag and die. The sin of man, his waste, his poisons, are made good again by the life force of nature. You feel something of this, don't you?\" The woman looks at you approvingly.||Sensing that you can trust here, you ask about the Tree of Knowledge.||\"If you come to my bower in the forest I can take you to the Great Tree. But I must warn you that if you harm so much as a leaf on your way there you will never leave the forest. When you enter the forest follow the Burgstream to the great Sirion river and then walk down the eastern bank. My followers will bring me word of your progress.\"||She takes up her staff and taps it once on the table. Her gnarled old staff turns into a little flute, which she hands to you with the words, \"Blow this at need in the forest and my friends will help you.\"||You murmur your thanks and fall to wondering how she can make the animals of the forest do her bidding. As the fire burns down, the woman goes to sleep in her chair. Not wishing to distrub her, you take a room at the inn for the night.">

<ROOM STORY014
    (IN ROOMS)
    (DESC "014")
    (STORY-TEXT TEXT014)
    (CONTINUE STORY333)
    (ITEM MAPLE-FLUTE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT015 "The imp puts on the emerald ring as if it were a bracelet, and then tries to rip it off again. But the band of gold constricts until it is a perfect fit around his wrist.||\"Alack, alack, I can never take this cursed thing off,\" the imp laments.||\"Help me, and I will remove the ring.\"||\"I am the Kwerrel, and the Kwerrel keeps no bargains.\"||\"Then you are a prisoner of the Lady of the Forest's ring for ever and every being in the forest will know that you are not her friend,\" you say.||Quailing at your words, the Kwerrel says, \"Tke the flesh of the toadstool. Make an infusion with elderflower wine and give it to any being you wish to drug into sleep. They will sleep the sleep of the damned. Look, now I open the archway for you to leave.\"||As the imp speaks the gold ring grows and falls from his wrist to lie on the ground near the giant toadstool. You pick it up again, take a large piece of the flesh of the toadstool. Bidding the little imp goodby, you walk back into the forest.">

<ROOM STORY015
    (IN ROOMS)
    (DESC "015")
    (STORY-TEXT TEXT015)
    (CONTINUE STORY406)
    (ITEM TOADSTOOL-FLESH)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT016 "You walk across the room without looking to either side, pretending not to have heard the command.||The same voice rings out again, but the imperious tone now carries the sharp ring of anger: \"So you think you can come here and treat us as though we are beneath notice, do you? Are you deaf? Ignore Valerian, would you? I'll make you pay for your insolence.\"||There is a scramble as people leave the common room. Only the old woman in grey stays to watch the fight. It is too late to do anything but fight or run.">
<CONSTANT STORY016-CHOICES-TEXT <LTABLE "run out of the inn without looking back" "otherwise, you must fight">>
<CONSTANT STORY016-CHOICES-DESTINATIONS <LTABLE STORY117 STORY005>>
<CONSTANT STORY016-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY016
    (IN ROOMS)
    (DESC "016")
    (STORY-TEXT TEXT016)
    (CHOICES-TEXT STORY016-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY016-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY016-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT017 "The odds are stacked against you as more and more guards pour into the pavilion. Together with the chief's advisers they easily overwhelm you, forcing you to your knees before the chief. The Westermen's leader reaches for his sword, draws it back and drives it into your heart, smiling evilly as he does so. As you die, so too do the hopes for saving the Forest of Arden.">

<ROOM STORY017
    (IN ROOMS)
    (DESC "017")
    (STORY-TEXT TEXT017)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT018 "As you voice acceptance of the duel, a hundred of the most wise and ancient looking elves appear silently from the trees at the edge of the clearing. They fan out, encircling you completely, and with their feet scrape a circle in the dirt at the clearing's edge.||All the elves are typical of their kind, with long wine-red hair and pale green skin that has a silvery bloom. Their clothes, in shades of green and brown, blends with the backdrop of the forest and makes it seem as if the very trees have walled  you into the clearing. If you get beyond that ring, you feel it will only ever be as vanquisher of the elves' champion, whoever that might be.||\"If you step outside the circle you have lost,\" states the King of the Elves. \"I will choose a champion from all elvenkind to face you.\"">
<CONSTANT STORY018-CHOICES-TEXT <LTABLE "try out the potency of your magic against that of the immortal elves" "try your skill with the sword against the champion of all the elves" "try to pit your body against one of the lithe quick elves" "concede defeat if you have none of these skills">>
<CONSTANT STORY018-CHOICES-DESTINATIONS <LTABLE STORY033 STORY050 STORY063 STORY163>>
<CONSTANT STORY018-CHOICES-REQUIREMENTS <LTABLE SKILL-SPELLS SKILL-SWORDPLAY SKILL-UNARMED-COMBAT NONE>>
<CONSTANT STORY018-CHOICES-TYPES <LTABLE R-SKILL R-SKILL R-SKILL R-NONE>>

<ROOM STORY018
    (IN ROOMS)
    (DESC "018")
    (STORY-TEXT TEXT018)
    (CHOICES-TEXT STORY018-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY018-CHOICES-DESTINATIONS)
    (CHOICES-REQUIREMENTS STORY018-CHOICES-REQUIREMENTS)
    (CHOICES-TYPES STORY018-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT019 "The dragon bats you out of the cavern and sends you rolling down the bank like a golden cannonball. You struggle to your feet while the ancient beast mocks you.||\"It is a long time since I spied a golden turtle in these parts.\" He laughs and hisses as you stagger away from the Bonehill.||Weighed bown by gold, you have no chance of completing your quest unless you head back to Burg and find someone to remove the 
precious metal. No matter, you will be rich beyond your wildest dreams . . .">

<ROOM STORY019
    (IN ROOMS)
    (DESC "019")
    (STORY-TEXT TEXT019)
    (CONTINUE STORY039)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT020 "He points up at the sun shining down on the clearing. Spitting onto his finger, he flicks the saliva up into the air. To your astonishment, a green watery film covers the face of the sun. It lasts only an instant before being wiped away like the blinking of a giant celestial eye. The Elf King turns to you, and his feral smile is brimming with triumph. \"Can you do that, mortal? Make the sun go green?\"">
<CONSTANT STORY020-CHOICES-TEXT <LTABLE "cast an illusion to achieve the desired effect and pass the Elf King's test" "Otherwise you must admit defeat">>
<CONSTANT STORY020-CHOICES-REQUIREMENTS <LTABLE SKILL-SPELLS NONE>>
<CONSTANT STORY020-CHOICES-DESTINATIONS <LTABLE STORY232 STORY069>>
<CONSTANT STORY020-CHOICES-TYPES <LTABLE R-SKILL R-NONE>>

<ROOM STORY020
    (IN ROOMS)
    (DESC "020")
    (STORY-TEXT TEXT020)
    (CHOICES-TEXT STORY020-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY020-CHOICES-DESTINATIONS)
    (CHOICES-REQUIREMENTS STORY020-CHOICES-REQUIREMENTS)
    (CHOICES-TYPES STORY020-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT021 "With the dragon's help and the might of the elves, you feel you have a chance of defeating the forces of the Westermen and driving the threat of the evil from the forest. Full of confidence in your ability to call upon a powerful ally of the ancient times, you head towards the rowan trees at the edge of the forest.||Travelling along routes that seem to come unbidden to you mind, you reach a clearing that seems strangely familiar. Was it perhaps, that you met the elves? Or does some horror of your travels lurk nearby in the undergrowth?||Summoning up your courage, you call out to whoever or whatever will here: |\"Elves! If you would win your freedom, come talk with a mortal who can deliver it. For I have secured us an ally equal to half the Westermen's forces - a dragon whose very appearance will slay scores of them from sheer terror. Come forward and speak with me.\"||The words of your challenge die away, suffocated by the preternatural silence of the forest. You might have expected to hear the chirruping voice of a bird or the faint rustle of a woodmouse questing for beetles, yet there is nothoing. Cursing the elves for their arrogance, you shout again, \"Come forward!\"||Spittle flies from your lips and your face flushes with the violent passion of your request. Again you wait for a reply.||\"Do you think that one dragon is enough, then, to beat your fellow men?\" says a cool voice from behind you.||Spinning around, you see no more than inces from your face the eternally youthful face of an elf. Yet the penetrating eyes that are windows to the wisdom of countless centuries mark this elf out above all others. The Elf King has answered your call.||\"One dragon is more than enough,\" you reply, \"with the forces of the elves a well. He will demoralize the Westermen, plunging them into chaos from which the deadly arrows of the elves will cruelly pluck them.\"||He smiles a cold smile, approving of the relish with which you describe the Westermen's deaths. \"Brave words indeed, for a mortal. But for elves to accede to your schemes and counsels, you must prove yourself worthy of our respect.\"||\"How may I do that?\"||\"Overcome my champion in a duel. Only then will we heed your words.\"">
<CONSTANT STORY021-CHOICES-TEXT <LTABLE "use your knowledge" "use the keyword" "accept his terms if you have neither">>
<CONSTANT STORY021-CHOICES-DESTINATIONS <LTABLE STORY215 STORY309 STORY137>>
<CONSTANT STORY021-CHOICES-REQUIREMENTS <LTABLE SKILL-FOLKLORE <LTABLE KEYWORD-SPECULUM> NONE>>
<CONSTANT STORY021-CHOICES-TYPES <LTABLE R-SKILL R-KEYWORD R-NONE>>

<ROOM STORY021
    (IN ROOMS)
    (DESC "021")
    (STORY-TEXT TEXT021)
    (CHOICES-TEXT STORY021-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY021-CHOICES-DESTINATIONS)
    (CHOICES-REQUIREMENTS STORY021-CHOICES-REQUIREMENTS)
    (CHOICES-TYPES STORY021-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT022 "The sprite inclines your own reflected face in an expression of deep meditation. \"I see your destiny,\" it says at last. \"You will either prove yourself a hero, saving the forest, or else you will allow venality and pride to lead you to your doom.\"||\"Being a hero sounds the better option,\" you comment drily.||\"In that case, you must seek Elanor the Grey Lady. Solitude has made her strange - not quite elvish in her ways, but not human any longer either. But you should trust her, as she'll set you on the right path. Then you must find the elves. Convincing them to help you may prove a weighty task, for they are proud and aloof and wilfully headstrong. Next seek the camp of the Westermen to learn their plans. They will destroy the forest if they succeed, and only direct action can stop them. Perhaps you can dig up a worm to help you.\"||There is a long pause. You look expectantly at the reflection until it finally gives you a distinctly unhuman grin. \"Well, that is the prophecy,\" it concludes.">
<CONSTANT STORY022-CHOICES-TEXT <LTABLE "keep your promise to break the mirror" "leave it intact for the time being">>
<CONSTANT STORY022-CHOICES-DESTINATIONS <LTABLE STORY418 STORY105>>
<CONSTANT STORY022-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY022
    (IN ROOMS)
    (DESC "022")
    (STORY-TEXT TEXT022)
    (CHOICES-TEXT STORY022-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY022-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY022-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT023 "The Infernal Statue is belching steam as its sword arm rises and falls like a piston. As you do not wish to attack the steaming statue directly, what will you do?">
<CONSTANT STORY023-CHOICES-TEXT <LTABLE "attack the shieldbearers and bodyguards clustered around the great boiler" "try to get to the pipe that connects the Infernal Statue to the boiler">>
<CONSTANT STORY023-CHOICES-DESTINATIONS <LTABLE STORY203 STORY397>>
<CONSTANT STORY023-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY023
    (IN ROOMS)
    (DESC "023")
    (STORY-TEXT TEXT023)
    (CHOICES-TEXT STORY023-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY023-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY023-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT024 "\"The hackers and burners, the men from the west, say the ants of the forest must be eradicated because they eat the farmers' crops,\" she syas. \"What do you say?\"">
<CONSTANT STORY024-CHOICES-TEXT <LTABLE "say the ants are indeed pests and should be wiped out" "reply that the forest would choke and die if there were no ants to eat the dead leaves and wood" "use your knowledge">>
<CONSTANT STORY024-CHOICES-DESTINATIONS <LTABLE STORY051 STORY067 STORY171>>
<CONSTANT STORY024-CHOICES-REQUIREMENTS <LTABLE NONE NONE SKILL-WILDERNESS-LORE>>
<CONSTANT STORY024-CHOICES-TYPES <LTABLE R-NONE R-NONE R-SKILL>>

<ROOM STORY024
    (IN ROOMS)
    (DESC "024")
    (STORY-TEXT TEXT024)
    (CHOICES-TEXT STORY024-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY024-CHOICES-DESTINATIONS)
    (CHOICES-REQUIREMENTS STORY024-CHOICES-REQUIREMENTS)
    (CHOICES-TYPES STORY024-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT025 "The Chief of the Westermen describes his favourite toy to you. His eyes are shining with enthusiasm as he describes a great steam-powered machine of metal armour inside which a man can ride. The suit is as large as a giant and as powerful as a steam hammer, it can smash men to pulp or rend them limb from limb. The chief believes it works by magic.||\"It only has one weakness. Sever the line that connects it to the steam furnace and it dies. Only a real hero could stand up to The Steamer and do that, by the gods,\"||At that moment a visitor is announched. \"It is Valerian the Moon Druid, sire,\" says the herald. \"He says he has important news. Shall we let him come in?\"||\"Aye, let him enter.\" The speech of Westermen sounds guttural and uncouth, but you can understand their dialect. The man who enters is the man you first saw in the inn at Burg. He is still dressed in the black travelling cloak, but his hood is thrown back to reveal his hatchet-like face and pointed black goatee beard. He bows before the chief, then wrinkles his nose and stares at you.">
<CONSTANT STORY025-CHOICES-TEXT <LTABLE "make your excuses and leave" "choose to stay and hear what news Valerian brings">>
<CONSTANT STORY025-CHOICES-DESTINATIONS <LTABLE STORY038 STORY004>>
<CONSTANT STORY025-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY025
    (IN ROOMS)
    (DESC "025")
    (STORY-TEXT TEXT025)
    (CHOICES-TEXT STORY025-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY025-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY025-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT027 "While you hold your ground, Valerian begins casting a spell.">
<CONSTANT STORY027-CHOICES-TEXT <LTABLE "go onto the offensive" "prepare a defensive magic" "otherwise">>
<CONSTANT STORY027-CHOICES-DESTINATIONS <LTABLE STORY169 STORY182 STORY087>>
<CONSTANT STORY027-CHOICES-REQUIREMENTS <LTABLE SKILL-SPELLS SKILL-SPELLS NONE>>
<CONSTANT STORY027-CHOICES-TYPES <LTABLE R-SKILL R-SKILL R-NONE>>

<ROOM STORY027
    (IN ROOMS)
    (DESC "027")
    (STORY-TEXT TEXT027)
    (CHOICES-TEXT STORY027-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY027-CHOICES-DESTINATIONS)
    (CHOICES-REQUIREMENTS STORY027-CHOICES-REQUIREMENTS)
    (CHOICES-TYPES STORY027-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<ROOM STORY033
    (IN ROOMS)
    (DESC "033")
    (FLAGS LIGHTBIT)>


<CONSTANT TEXT037 "The smoking lamps produce little light, but peering through the gloom you can see several circular tables set about the hall, three near the fire and four back in the shadows. Two men, one tall and the other short and stocky, hog the fire and are engaged in conversation. Several dark figures are seated at the tables. One of these seems to be shrouded in a black travelling cloak.||\"You, stranger. Do you fear enemies here? Why skulk in the shadows like a rogue? Step nearer the fire so we may see your face.\"||You can't even tell who spoke to you but he doesn't sound friendly.">
<CONSTANT STORY037-CHOICES-TEXT <LTABLE "obey the command" "ignore it" "leave the inn">>
<CONSTANT STORY037-CHOICES-DESTINATIONS <LTABLE STORY108 STORY016 STORY117>>
<CONSTANT STORY037-CHOICES-TYPES <LTABLE R-NONE R-NONE R-NONE>>

<ROOM STORY037
    (IN ROOMS)
    (DESC "037")
    (STORY-TEXT TEXT037)
    (CHOICES-TEXT STORY037-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY037-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY037-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT038 "Once you are a safe distance from the pavilion, you run for the edge of the trees, quickly hiding yourself in the depths of the forest. The awful sights and sounds of the Westerman camp are soon far behind.">
<CONSTANT STORY038-CHOICES-TEXT <LTABLE "report back to the elves" "head west" "east" "south-west" "south">>
<CONSTANT STORY038-CHOICES-DESTINATIONS <LTABLE STORY053 STORY043 STORY070 STORY270 STORY078>>
<CONSTANT STORY038-CHOICES-REQUIREMENTS <LTABLE <LTABLE KEYWORD-WATERBEARER KEYWORD-BULLHORN> NONE NONE NONE NONE>>
<CONSTANT STORY038-CHOICES-TYPES <LTABLE R-KEYWORD R-NONE R-NONE R-NONE R-NONE>>

<ROOM STORY038
    (IN ROOMS)
    (DESC "038")
    (STORY-TEXT TEXT038)
    (CHOICES-TEXT STORY038-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY038-CHOICES-DESTINATIONS)
    (CHOICES-REQUIREMENTS STORY038-CHOICES-REQUIREMENTS)
    (CHOICES-TYPES STORY038-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT039 "Your plight is hopeless. YOu will never stagger out of the great forest weighed down as you are. One of the dark denizens of the deepest dark tracts of wood will catch you and skin you for the exotic hide you now wear. You will never escape. Because of your greed, the Forest of Arden is doomed.">

<ROOM STORY039
    (IN ROOMS)
    (DESC "039")
    (STORY-TEXT TEXT039)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY040
    (IN ROOMS)
    (DESC "040")
    (FLAGS LIGHTBIT)>

<ROOM STORY042
    (IN ROOMS)
    (DESC "042")
    (FLAGS LIGHTBIT)>

<ROOM STORY043
    (IN ROOMS)
    (DESC "043")
    (FLAGS LIGHTBIT)>

<ROOM STORY049
    (IN ROOMS)
    (DESC "049")
    (FLAGS LIGHTBIT)>

<ROOM STORY050
    (IN ROOMS)
    (DESC "050")
    (FLAGS LIGHTBIT)>

<ROOM STORY051
    (IN ROOMS)
    (DESC "051")
    (FLAGS LIGHTBIT)>

<ROOM STORY053
    (IN ROOMS)
    (DESC "053")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT055 "A tall man and his short and stocky companion move apart to allow you room in front of the roaring log fire. Both give you a sidelong glance. They look rough and weather-beaten men: the smaller of the two has a face like a bull-mastiff, the taller has the sly cunning look of a fox.">
<CONSTANT STORY055-CHOICES-TEXT <LTABLE "tell them who you are and why you have come to Burg" "remain silent">>
<CONSTANT STORY055-CHOICES-DESTINATIONS <LTABLE STORY072 STORY094>>
<CONSTANT STORY055-CHOICES-TYPES <LTABLE R-NONE R-NONE>>

<ROOM STORY055
    (IN ROOMS)
    (DESC "055")
    (STORY-TEXT TEXT055)
    (CHOICES-TEXT STORY055-CHOICES-TEXT)
    (CHOICES-DESTINATIONS STORY055-CHOICES-DESTINATIONS)
    (CHOICES-TYPES STORY055-CHOICES-TYPES)
    (FLAGS LIGHTBIT)>

<ROOM STORY059
    (IN ROOMS)
    (DESC "059")
    (FLAGS LIGHTBIT)>

<ROOM STORY060
    (IN ROOMS)
    (DESC "060")
    (FLAGS LIGHTBIT)>

<ROOM STORY063
    (IN ROOMS)
    (DESC "063")
    (FLAGS LIGHTBIT)>

<ROOM STORY064
    (IN ROOMS)
    (DESC "064")
    (FLAGS LIGHTBIT)>

<ROOM STORY065
    (IN ROOMS)
    (DESC "065")
    (FLAGS LIGHTBIT)>

<ROOM STORY067
    (IN ROOMS)
    (DESC "067")
    (FLAGS LIGHTBIT)>

<ROOM STORY069
    (IN ROOMS)
    (DESC "069")
    (FLAGS LIGHTBIT)>

<ROOM STORY070
    (IN ROOMS)
    (DESC "070")
    (EVENT-HANDLER STORY070-EVENTS)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY070-EVENTS ()
    <COND (<AND <IN? ,KEYWORD-WATERBEARER ,KEYWORDS> <IN? ,KEYWORD-BULLHORN ,KEYWORDS>> <RETURN ,STORY256>)>
    <COND (<IN? ,KEYWORD-WATERBEARER ,KEYWORDS> <RETURN ,STORY042>)>
    <RETURN ,STORY060>>

<ROOM STORY072
    (IN ROOMS)
    (DESC "072")
    (FLAGS LIGHTBIT)>

<ROOM STORY078
    (IN ROOMS)
    (DESC "078")
    (FLAGS LIGHTBIT)>

<ROOM STORY079
    (IN ROOMS)
    (DESC "079")
    (FLAGS LIGHTBIT)>

<ROOM STORY083
    (IN ROOMS)
    (DESC "083")
    (FLAGS LIGHTBIT)>

<ROOM STORY087
    (IN ROOMS)
    (DESC "087")
    (FLAGS LIGHTBIT)>

<ROOM STORY094
    (IN ROOMS)
    (DESC "094")
    (FLAGS LIGHTBIT)>

<ROOM STORY105
    (IN ROOMS)
    (DESC "105")
    (FLAGS LIGHTBIT)>

<ROOM STORY108
    (IN ROOMS)
    (DESC "108")
    (FLAGS LIGHTBIT)>

<ROOM STORY113
    (IN ROOMS)
    (DESC "113")
    (FLAGS LIGHTBIT)>

<ROOM STORY117
    (IN ROOMS)
    (DESC "117")
    (FLAGS LIGHTBIT)>

<ROOM STORY137
    (IN ROOMS)
    (DESC "137")
    (FLAGS LIGHTBIT)>

<ROOM STORY163
    (IN ROOMS)
    (DESC "169")
    (FLAGS LIGHTBIT)>

<ROOM STORY169
    (IN ROOMS)
    (DESC "169")
    (FLAGS LIGHTBIT)>

<ROOM STORY171
    (IN ROOMS)
    (DESC "171")
    (FLAGS LIGHTBIT)>

<ROOM STORY182
    (IN ROOMS)
    (DESC "182")
    (FLAGS LIGHTBIT)>

<ROOM STORY186
    (IN ROOMS)
    (DESC "186")
    (FLAGS LIGHTBIT)>

<ROOM STORY198
    (IN ROOMS)
    (DESC "198")
    (FLAGS LIGHTBIT)>

<ROOM STORY203
    (IN ROOMS)
    (DESC "203")
    (FLAGS LIGHTBIT)>

<ROOM STORY210
    (IN ROOMS)
    (DESC "210")
    (FLAGS LIGHTBIT)>

<ROOM STORY215
    (IN ROOMS)
    (DESC "215")
    (FLAGS LIGHTBIT)>

<ROOM STORY232
    (IN ROOMS)
    (DESC "232")
    (FLAGS LIGHTBIT)>

<ROOM STORY256
    (IN ROOMS)
    (DESC "256")
    (FLAGS LIGHTBIT)>

<ROOM STORY270
    (IN ROOMS)
    (DESC "270")
    (FLAGS LIGHTBIT)>

<ROOM STORY309
    (IN ROOMS)
    (DESC "309")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT333 "The young girl, who says that her father is away on a journey to buy provisions, charges you a piece gold for your food and for a night's lodging.||You sleep well and awake early but refreshed. Washing in cold water is invigorating and you enjoy the feel of the rough inn towel. There will be no such comforts in the forest.||Downstairs the inn is deserted. The woman in grey, the only other guest, has left already. The young girl is mopping the floor and she looks troubled. Asking what ails her brings the reply, \"My father did not return last night. I tried not to worry but I knew in my heart he wouldn't come. He went into the forest to buy provisions before the Westermen block the spice road. I know he has gone the way of the others. And that strange woman in grey never so much as touched her bed last night, though she didn't leave her room till after dawn. I begged Father to take Renard to guide him but he wouldn't spend the money. Now I'll never see him again\". With this, she breaks into tears.||As you comfort here, you ask the innkeeper's daughter to describe her father and say you will try to find either him or news of him. As you turn to leave she says, \"Fare you well, traveller, you are my only hope.\"">

<ROOM STORY333
    (IN ROOMS)
    (DESC "333")
    (STORY-TEXT TEXT333)
    (CONTINUE STORY210)
    (COST 1)
    (FLAGS LIGHTBIT)>

<ROOM STORY346
    (IN ROOMS)
    (DESC "346")
    (FLAGS LIGHTBIT)>

<ROOM STORY361
    (IN ROOMS)
    (DESC "361")
    (FLAGS LIGHTBIT)>

<ROOM STORY397
    (IN ROOMS)
    (DESC "397")
    (FLAGS LIGHTBIT)>

<ROOM STORY406
    (IN ROOMS)
    (DESC "406")
    (FLAGS LIGHTBIT)>

<ROOM STORY418
    (IN ROOMS)
    (DESC "418")
    (FLAGS LIGHTBIT)>

<ROOM STORY419
    (IN ROOMS)
    (DESC "419")
    (FLAGS LIGHTBIT)>

<ROOM STORY427
    (IN ROOMS)
    (DESC "427")
    (FLAGS LIGHTBIT)>
