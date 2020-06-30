<CONSTANT R-NONE 0>
<CONSTANT R-SKILL 1>
<CONSTANT R-CODEWORD 2>
<CONSTANT R-ITEM 3>

<CONSTANT TWO-NONES <LTABLE R-NONE R-NONE>>
<CONSTANT THREE-NONES <LTABLE R-NONE R-NONE R-NONE>>
<CONSTANT FOUR-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE>>

<CONSTANT PROLOGUE-TEXT "Sickened by the ways of your fellow men and despairing of man's cruelty, you have quit the teeming city of Godorno, with its cesspools and plague pits, its beggars and abject slaves. You walk for days, revelling in the fresh air of the countryside. This is a green land of hills and dales, farmsteads and mills - a veritable bread-basket that yields all its grains and fruit to the decadent city.||As you walk you have much time to think. Long ago your family told you how the star of destiny, purple Praxis, changed colour to the flaming gold of Moraine, God of War, at the moment of your birth. Even as Praxis flared with energy, so your mother's life waned. She died of exhaustion bringing you into the world, but her sisters looked after you until you were old enough, at eight, to go up to the dreaming spires of the academy at Hegalopolis.||The bookish scholars trained you in many things and all who taught there agreed you showed great promise. But when you were just fifteen years old, Gornild, the harsh overlord of Godorno, dissolved all the monasteries in the lands along the Marches, fearing their teachings would turn minds against his corrupt rule. You were forced to scratch out a miserable living just like the other poor folk of the city.||The cloistered life of the academy, with its politeness and order, gave you scant preparation for the life on the streets of Godorno. You developed the cunning of a sewer rat and the patience of the damned just staying alive from day to day, dodging the press gangs from the war galleys that carry young men off to fight the corsairs. Your cunning was great enough to avoid the fate of the galley slave and you have grown to maturity, strong, tough and determined.||The ways of the city folk revolt you. Your diligent study of history shows an ever churning cycle of oppressors and the downtrodden. Man is strapped to the wheel of fate to be alternately dragged to the heights and plunged again into the pits and windblasted depths of pain and want.||As you walk, every step that bears you away from the stench of the city is a step taken more lightly than the last. YOu resolve to return to the city only if you have changed things for the better. Yours is the nobleness of spirit that would lay down its life to better the lot of your fellow man. If Praxis robbed you of a mother's love, Praxis can repay the debt by shining brightly on your destiny.||As the miles pass with you deep in thought, your path takes you inexorably on towards the great forest beyond the lands of men. Your curiosity has been piqued by rumours and legends about the ancient Tree of Knowledge, a fabled tree hundres of feet high, with golden bark and silver leaves. It is said to grow at the centre of the great Forest of Arden.||Fey sylvan elves are said to dwell there. The stories of what they look like and the fate that befalls those lost in the forest are too fantastically horrific to be true. Each fable tells a different story: of elves with six arms, of elves with scimitar blades in place of forearms, and of greenbark bows that can send an arrow from one horizon to the other and which always hit their mark. And there are stories of elves with jewels for eyes which melt when they cry, as they must when disturbed by man, for they keenly sense the tragedy of man's mortality.||Though each story is fanciful and bizarre they all agree in one respect. No one who sees the elves lives to tell of it. There isn't a man alive who has glimpsed the splendid glory of Elvenhame, the city of the elves.||You no longer know whether it is the desire to see elves or your wish to change the world for the better that takes you on your quest. What, however, if you were to learn the knowledge of ages and return to the lands of men as a saviour? Your name would go down in history. Anything less magnificent than this noble quest for knowledge that will save mankind will not do. You will become a hreo or die in the attempt.||You are on the road. It is approaching early evening and purple Praxis already beams out in the low dusk sky. As you stare at the star, it seems to wink out then flare bright golden yellow before resuming its purple form. It is a sign that your destiny awaits in the Forest of Arden.">

<ROOM PROLOGUE
    (IN ROOMS)
    (DESC "PROLOGUE")
    (STORY PROLOGUE-TEXT)
    (CONTINUE STORY001)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT001 "The road tops a ridge that is straddled by the ruins of a great wall, half covered in turf. The wall once marked the border between the lands of man and domain of the elves. Quickly you scramble up and over the blocks of fallen stone. Standing atop the ruin, you survey the outlands beyond.||Your gaze sweeps across the broad patches of purple heather and yellow gorse that cover the inhospitable uplands. The air smells fresh; it is good to be free of the noisome taint of the sewers and plague pits of the city you have left behind. The road winds down into a valley, at the foot of which nestles Burg, a small town of neat white houses with roof of triangular grey slates. Here may be your last chance to talk with mankind before you are swallowed up by the depths of the great Forest of Arden.||As you walk towards the buildings through the tilled and reaped land of the valley, you pass gleaners - peasants who search the ground for stalks of straw and seed spilled during the harvest. The townsfolk, seemingly wary of outsiders, keep out of your way. Ahead of you is an inn, the largest building in the town. Looking forward to perhaps your last night's sleep in a proper bed for many weeks, you make for this hostelry.||The inn seems surprisingly large for a town that is at the very edge of the wilderness. It must once have been a baronial hall built by a lord seeking to carve out a kingdom beyond the great wall. As you walk down the main street the ruddy sky is turning with the onset of twilight. What looked an inviting little town by day seems sombre and unwelcoming at nightfall. As you linger a moment outside the inn, there is a crack of thunder and it begins to pour with rain.||Inside the inn a young girl is lighting oil lamps with a taper. Until your eyes grow accustomed to the gloom you cannot make out who shares the common room with you, nor many details of the interior of the inn itself.">
<CONSTANT STORY001-CHOICES <LTABLE "wait by the door until you can see better" "step in and warm yourself before the fire">>

<ROOM STORY001
    (IN ROOMS)
    (DESC "001")
    (STORY TEXT001)
    (CHOICES STORY001-CHOICES)
    (DESTINATIONS <LTABLE STORY037 STORY055>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT002 "\"It is the forest which cleans and purifies the air for all the world to breathe. Without the Forest of Arden all living things would choke, gag, and die. The trees absorb the foul air of man's polution, his burning and wasting, and give it back to the world again clean, fresh and ready to breath. The stench and dross of the cities is purged and cleansed by the trees. The forest is the lifeblood of the world.\"||The old woman delivers these words very gravely, convincing you that she believes every word of what she is saying. All the time her eyes never leave yours.||\"Ah, but I see I bore you. Enough of this idle prattle, I must take my rest. Good night to you.\"||So saying, she gets up and makes to leave you. You are about to protest that you are far from bored but realize she is only looking for a polite way to leave your company. You let her go and decide to take a room at the inn as well.">

<ROOM STORY002
    (IN ROOMS)
    (DESC "002")
    (STORY TEXT002)
    (CONTINUE STORY333)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT003 "A figure lies dead in the forest. Ants crawl in and out of its newly picked-clean eye sockets; beetles and rats gnaw at the remains. With a shock you realize the figure is wearing identical clothes to yours - there isn't another pair of boots in the world quite like yours, made to order by a cobbler in Godorno.||\"You are not wearing my ring,\" says Elanor. \"If you cannot trust me, I cannot aid you. You must find your won way and I must continue my search for the saviour of the forest. Begone and never come back, you weak-willed doubter.\"||Elanor and the owl disappear. You are on your own again.">

<ROOM STORY003
    (IN ROOMS)
    (DESC "003")
    (STORY TEXT003)
    (CONTINUE STORY070)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT004 "Valerian's voice is markedly different from the guttural speech of the Westermen, but there is no doubt he has thrown in his lot with them. It is plain that they depend upon him for their knowledge of the forest and its many dangers. They are planning how to destroy and burn the whole forest tree by tree. Valerian has convinced the chief of the Westermen that his realm will not be safe until every tree, every sapling and every bush in the forest has been razed to the ground.||\"You wanted to tell me something of note, Valerian? Else why have I summoned all my advisers?\"||\"Indeed, sire, I have a plan to destroy the forest at a stroke.\"||\"What stroke?\"||\"By killing the Tree of Life at the very centre of the forest. Slay the tree of Life, sire, and the whole forest, along with everything in it, will die.\"||\"Well, your advice has been sound in the past, Valerian. I will do as you suggest and slay the Tree of Life.\"">
<CONSTANT STORY004-CHOICES <LTABLE "interrupt and tell the chief that the death of the forest will mean death and destruction for the whole world, including him" "speak out of the pavilion and leave while the going is good">>

<ROOM STORY004
    (IN ROOMS)
    (DESC "004")
    (STORY TEXT004)
    (CHOICES STORY004-CHOICES)
    (DESTINATIONS <LTABLE STORY198 STORY038>)
    (TYPES TWO-NONES)
    (CODEWORD CODEWORD-BULLHORN)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT005 "As Valerian stands up, he lets his cloak fall to the floor, reavealing armour made of quilted leather - light armor that wouldn't stop a sword thrust. He has no sword or obvious weapon to hand. Three small coloured pouches swing from his belt.">
<CONSTANT STORY005-CHOICES <LTABLE "decide to hold your ground" "decide to close with him">>

<ROOM STORY005
    (IN ROOMS)
    (DESC "005")
    (STORY TEXT005)
    (CHOICES STORY005-CHOICES)
    (DESTINATIONS <LTABLE STORY027 STORY065>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT006 "You call out the dragon's name. Its great head rears slowly above you and its yellow-green eyes bore into yours. Its nostrils dilate as it sucks in a deep breath. Too late, you realize you lied to yourself about knowing the creature's name. There is a terrible whooshing sounds like the dragon's real name as it breathes acid and gas upon you. The torrent of gas and air rolls you across the ground and you are lucky to bang your head on a rock, sparing yourself a more painful death. The Forest of Arden is doomed.">

<ROOM STORY006
    (IN ROOMS)
    (DESC "006")
    (STORY TEXT006)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT007 "You say the word and vanish. Your invisibility, however, doesn't help you deal with the Infernal Statue, whose sword is still chopping into the Tree of Life. You are wasting precious time. Which spell will you cast to help save the tree?">
<CONSTANT STORY007-CHOICES <LTABLE "cast Choking Fog" "Bafflement" "Visceral Disruption" "Tower of Will">>

<ROOM STORY007
    (IN ROOMS)
    (DESC "007")
    (STORY TEXT007)
    (CHOICES STORY007-CHOICES)
    (DESTINATIONS <LTABLE STORY346 STORY113 STORY064 STORY186>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT008 "The Kwerrel is delighted with his shiny golden disks of metal, whe he starts trying to weave into his hair. Now that he has got what he wants he scampers away, leaving you alone inside the bush. The archway back to the forest has reappeared so you make good your escape from the bush.">

<ROOM STORY008
    (IN ROOMS)
    (DESC "008")
    (STORY TEXT008)
    (CONTINUE STORY406)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT009 "\"I must test your fitness to be the forest's saviour,\" says Elanor. \"I hope you pass the test. YOu would not like to see the forest laid to waste would you?\"||She looks regal and yet kind, but her eyes never leave yours.">
<CONSTANT STORY009-CHOICES <LTABLE "reply that your reason for visiting the forest is to find the Tree of Knowledge and take some of its wisdom away with you to the lands of men" "say that the forest is too beautiful to be laid waste and you will try to save it">>

<ROOM STORY009
    (IN ROOMS)
    (DESC "009")
    (STORY TEXT009)
    (CHOICES STORY009-CHOICES)
    (DESTINATIONS <LTABLE STORY024 STORY040>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT010 "\"Then why have you disturbed my slumber? You have woken me a year early. Now I will feel sick for the next year-\"||The dragon rolls over and seems to be going back to sleep.">
<CONSTANT STORY010-CHOICES <LTABLE "attack it" "try to steal its treasure" "continue your quest and leave the dragon to slumber">>

<ROOM STORY010
    (IN ROOMS)
    (DESC "010")
    (STORY TEXT010)
    (CHOICES STORY010-CHOICES)
    (DESTINATIONS <LTABLE STORY059 STORY079 STORY049>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT011 "You know without doubt that your best plan is to call upon the dragon that has promised its help. Certeain in the knowledge that it will obey you, you set off for the Bonehill to enlist its help.||The journey passes swiftly with the help of an elf to guide you, and you are soon at the dragon's lar.||You call out its name . . .">

<ROOM STORY011
    (IN ROOMS)
    (DESC "011")
    (STORY TEXT011)
    (CONTINUE STORY083)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT012 "You tell Pozzo that to escape the forest he should make for a river and follow it to the sea. You know that there is a city or town at every river mouth for hundreds of miles around, and when he reaches one he can take ship for Godorno. He bids you farewell and says you may stay as his honoured guest at his in in Burg if you are ever travelling that way again. With that, he sets out to return to his beloved daughter.||You are soon safe back in the forest, and alone again. The awful sights and sounds of the Westerman camp are soon left far behind.">
<CONSTANT STORY012-CHOICES <LTABLE "head west" "east" "south-west" "south">>

<ROOM STORY012
    (IN ROOMS)
    (DESC "012")
    (STORY TEXT012)
    (CHOICES STORY012-CHOICES)
    (DESTINATIONS <LTABLE STORY043 STORY427 STORY070 STORY078>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT013 "All is quiet behind you but you do not look back. The path is difficult, overgrown and boggy. Every now and then you are hard put to decide which way it leads, but by keeping fairly close to the great river you make progress for many hours until nightfall.||The noises of the forest seem to intensify with night: there is buzzing, clicking, croaking and the hoot of alone owl to keep you company. Finding a dry place to rest is not easy but at last you find a mound of earth on which you can settle down.">
<CONSTANT STORY013-CHOICES <LTABLE "turn your pendant into a warning stone" "otherwise">>

<ROOM STORY013
    (IN ROOMS)
    (DESC "013")
    (STORY TEXT013)
    (CHOICES STORY013-CHOICES)
    (DESTINATIONS <LTABLE STORY361 STORY419>)
    (REQUIREMENTS <LTABLE SKILL-CHARMS NONE>)
    (TYPES <LTABLE R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT014 "\"Yes it would, more terrible than you can know. The stench and dross of the cities is purged and cleansed by the forest. The trees absorb the foul air of man's pollution, his berning and smelting, and give it back to the world again clean, fresh and ready to breathe. The forest is the lifeblood of the world; without it the world will choke, gag and die. The sin of man, his waste, his poisons, are made good again by the life force of nature. You feel something of this, don't you?\" The woman looks at you approvingly.||Sensing that you can trust here, you ask about the Tree of Knowledge.||\"If you come to my bower in the forest I can take you to the Great Tree. But I must warn you that if you harm so much as a leaf on your way there you will never leave the forest. When you enter the forest follow the Burgstream to the great Sirion river and then walk down the eastern bank. My followers will bring me word of your progress.\"||She takes up her staff and taps it once on the table. Her gnarled old staff turns into a little flute, which she hands to you with the words, \"Blow this at need in the forest and my friends will help you.\"||You murmur your thanks and fall to wondering how she can make the animals of the forest do her bidding. As the fire burns down, the woman goes to sleep in her chair. Not wishing to distrub her, you take a room at the inn for the night.">

<ROOM STORY014
    (IN ROOMS)
    (DESC "014")
    (STORY TEXT014)
    (CONTINUE STORY333)
    (ITEM MAPLE-FLUTE)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT015 "The imp puts on the emerald ring as if it were a bracelet, and then tries to rip it off again. But the band of gold constricts until it is a perfect fit around his wrist.||\"Alack, alack, I can never take this cursed thing off,\" the imp laments.||\"Help me, and I will remove the ring.\"||\"I am the Kwerrel, and the Kwerrel keeps no bargains.\"||\"Then you are a prisoner of the Lady of the Forest's ring for ever and every being in the forest will know that you are not her friend,\" you say.||Quailing at your words, the Kwerrel says, \"Tke the flesh of the toadstool. Make an infusion with elderflower wine and give it to any being you wish to drug into sleep. They will sleep the sleep of the damned. Look, now I open the archway for you to leave.\"||As the imp speaks the gold ring grows and falls from his wrist to lie on the ground near the giant toadstool. You pick it up again, take a large piece of the flesh of the toadstool. Bidding the little imp goodby, you walk back into the forest.">

<ROOM STORY015
    (IN ROOMS)
    (DESC "015")
    (STORY TEXT015)
    (CONTINUE STORY406)
    (ITEM TOADSTOOL-FLESH)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT016 "You walk across the room without looking to either side, pretending not to have heard the command.||The same voice rings out again, but the imperious tone now carries the sharp ring of anger: \"So you think you can come here and treat us as though we are beneath notice, do you? Are you deaf? Ignore Valerian, would you? I'll make you pay for your insolence.\"||There is a scramble as people leave the common room. Only the old woman in grey stays to watch the fight. It is too late to do anything but fight or run.">
<CONSTANT STORY016-CHOICES <LTABLE "run out of the inn without looking back" "otherwise, you must fight">>

<ROOM STORY016
    (IN ROOMS)
    (DESC "016")
    (STORY TEXT016)
    (CHOICES STORY016-CHOICES)
    (DESTINATIONS <LTABLE STORY117 STORY005>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT017 "The odds are stacked against you as more and more guards pour into the pavilion. Together with the chief's advisers they easily overwhelm you, forcing you to your knees before the chief. The Westermen's leader reaches for his sword, draws it back and drives it into your heart, smiling evilly as he does so. As you die, so too do the hopes for saving the Forest of Arden.">

<ROOM STORY017
    (IN ROOMS)
    (DESC "017")
    (STORY TEXT017)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT018 "As you voice acceptance of the duel, a hundred of the most wise and ancient looking elves appear silently from the trees at the edge of the clearing. They fan out, encircling you completely, and with their feet scrape a circle in the dirt at the clearing's edge.||All the elves are typical of their kind, with long wine-red hair and pale green skin that has a silvery bloom. Their clothes, in shades of green and brown, blends with the backdrop of the forest and makes it seem as if the very trees have walled  you into the clearing. If you get beyond that ring, you feel it will only ever be as vanquisher of the elves' champion, whoever that might be.||\"If you step outside the circle you have lost,\" states the King of the Elves. \"I will choose a champion from all elvenkind to face you.\"">
<CONSTANT STORY018-CHOICES <LTABLE "try out the potency of your magic against that of the immortal elves" "try your skill with the sword against the champion of all the elves" "try to pit your body against one of the lithe quick elves" "concede defeat if you have none of these skills">>

<ROOM STORY018
    (IN ROOMS)
    (DESC "018")
    (STORY TEXT018)
    (CHOICES STORY018-CHOICES)
    (DESTINATIONS <LTABLE STORY033 STORY050 STORY063 STORY163>)
    (REQUIREMENTS <LTABLE SKILL-SPELLS SKILL-SWORDPLAY SKILL-UNARMED-COMBAT NONE>)
    (TYPES <LTABLE R-SKILL R-SKILL R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT019 "The dragon bats you out of the cavern and sends you rolling down the bank like a golden cannonball. You struggle to your feet while the ancient beast mocks you.||\"It is a long time since I spied a golden turtle in these parts.\" He laughs and hisses as you stagger away from the Bonehill.||Weighed bown by gold, you have no chance of completing your quest unless you head back to Burg and find someone to remove the 
precious metal. No matter, you will be rich beyond your wildest dreams . . .">

<ROOM STORY019
    (IN ROOMS)
    (DESC "019")
    (STORY TEXT019)
    (CONTINUE STORY039)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT020 "He points up at the sun shining down on the clearing. Spitting onto his finger, he flicks the saliva up into the air. To your astonishment, a green watery film covers the face of the sun. It lasts only an instant before being wiped away like the blinking of a giant celestial eye. The Elf King turns to you, and his feral smile is brimming with triumph. \"Can you do that, mortal? Make the sun go green?\"">
<CONSTANT STORY020-CHOICES <LTABLE "cast an illusion to achieve the desired effect and pass the Elf King's test" "Otherwise you must admit defeat">>

<ROOM STORY020
    (IN ROOMS)
    (DESC "020")
    (STORY TEXT020)
    (CHOICES STORY020-CHOICES)
    (DESTINATIONS <LTABLE STORY232 STORY069>)
    (REQUIREMENTS <LTABLE SKILL-SPELLS NONE>)
    (TYPES <LTABLE R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT021 "With the dragon's help and the might of the elves, you feel you have a chance of defeating the forces of the Westermen and driving the threat of the evil from the forest. Full of confidence in your ability to call upon a powerful ally of the ancient times, you head towards the rowan trees at the edge of the forest.||Travelling along routes that seem to come unbidden to you mind, you reach a clearing that seems strangely familiar. Was it perhaps, that you met the elves? Or does some horror of your travels lurk nearby in the undergrowth?||Summoning up your courage, you call out to whoever or whatever will here: |\"Elves! If you would win your freedom, come talk with a mortal who can deliver it. For I have secured us an ally equal to half the Westermen's forces - a dragon whose very appearance will slay scores of them from sheer terror. Come forward and speak with me.\"||The words of your challenge die away, suffocated by the preternatural silence of the forest. You might have expected to hear the chirruping voice of a bird or the faint rustle of a woodmouse questing for beetles, yet there is nothoing. Cursing the elves for their arrogance, you shout again, \"Come forward!\"||Spittle flies from your lips and your face flushes with the violent passion of your request. Again you wait for a reply.||\"Do you think that one dragon is enough, then, to beat your fellow men?\" says a cool voice from behind you.||Spinning around, you see no more than inces from your face the eternally youthful face of an elf. Yet the penetrating eyes that are windows to the wisdom of countless centuries mark this elf out above all others. The Elf King has answered your call.||\"One dragon is more than enough,\" you reply, \"with the forces of the elves a well. He will demoralize the Westermen, plunging them into chaos from which the deadly arrows of the elves will cruelly pluck them.\"||He smiles a cold smile, approving of the relish with which you describe the Westermen's deaths. \"Brave words indeed, for a mortal. But for elves to accede to your schemes and counsels, you must prove yourself worthy of our respect.\"||\"How may I do that?\"||\"Overcome my champion in a duel. Only then will we heed your words.\"">
<CONSTANT STORY021-CHOICES <LTABLE "use" "use" "accept his terms if you have neither">>

<ROOM STORY021
    (IN ROOMS)
    (DESC "021")
    (STORY TEXT021)
    (CHOICES STORY021-CHOICES)
    (DESTINATIONS <LTABLE STORY215 STORY309 STORY137>)
    (REQUIREMENTS <LTABLE SKILL-FOLKLORE <LTABLE CODEWORD-SPECULUM> NONE>)
    (TYPES <LTABLE R-SKILL R-CODEWORD R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT022 "The sprite inclines your own reflected face in an expression of deep meditation. \"I see your destiny,\" it says at last. \"You will either prove yourself a hero, saving the forest, or else you will allow venality and pride to lead you to your doom.\"||\"Being a hero sounds the better option,\" you comment drily.||\"In that case, you must seek Elanor the Grey Lady. Solitude has made her strange - not quite elvish in her ways, but not human any longer either. But you should trust her, as she'll set you on the right path. Then you must find the elves. Convincing them to help you may prove a weighty task, for they are proud and aloof and wilfully headstrong. Next seek the camp of the Westermen to learn their plans. They will destroy the forest if they succeed, and only direct action can stop them. Perhaps you can dig up a worm to help you.\"||There is a long pause. You look expectantly at the reflection until it finally gives you a distinctly unhuman grin. \"Well, that is the prophecy,\" it concludes.">
<CONSTANT STORY022-CHOICES <LTABLE "keep your promise to break the mirror" "leave it intact for the time being">>

<ROOM STORY022
    (IN ROOMS)
    (DESC "022")
    (STORY TEXT022)
    (CHOICES STORY022-CHOICES)
    (DESTINATIONS <LTABLE STORY418 STORY105>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT023 "The Infernal Statue is belching steam as its sword arm rises and falls like a piston. As you do not wish to attack the steaming statue directly, what will you do?">
<CONSTANT STORY023-CHOICES <LTABLE "attack the shieldbearers and bodyguards clustered around the great boiler" "try to get to the pipe that connects the Infernal Statue to the boiler">>

<ROOM STORY023
    (IN ROOMS)
    (DESC "023")
    (STORY TEXT023)
    (CHOICES STORY023-CHOICES)
    (DESTINATIONS <LTABLE STORY203 STORY397>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT024 "\"The hackers and burners, the men from the west, say the ants of the forest must be eradicated because they eat the farmers' crops,\" she syas. \"What do you say?\"">
<CONSTANT STORY024-CHOICES <LTABLE "say the ants are indeed pests and should be wiped out" "reply that the forest would choke and die if there were no ants to eat the dead leaves and wood" "use your knowledge">>

<ROOM STORY024
    (IN ROOMS)
    (DESC "024")
    (STORY TEXT024)
    (CHOICES STORY024-CHOICES)
    (DESTINATIONS <LTABLE STORY051 STORY067 STORY171>)
    (REQUIREMENTS <LTABLE NONE NONE SKILL-WILDERNESS-LORE>)
    (TYPES <LTABLE R-NONE R-NONE R-SKILL>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT025 "The Chief of the Westermen describes his favourite toy to you. His eyes are shining with enthusiasm as he describes a great steam-powered machine of metal armour inside which a man can ride. The suit is as large as a giant and as powerful as a steam hammer, it can smash men to pulp or rend them limb from limb. The chief believes it works by magic.||\"It only has one weakness. Sever the line that connects it to the steam furnace and it dies. Only a real hero could stand up to The Steamer and do that, by the gods,\"||At that moment a visitor is announched. \"It is Valerian the Moon Druid, sire,\" says the herald. \"He says he has important news. Shall we let him come in?\"||\"Aye, let him enter.\" The speech of Westermen sounds guttural and uncouth, but you can understand their dialect. The man who enters is the man you first saw in the inn at Burg. He is still dressed in the black travelling cloak, but his hood is thrown back to reveal his hatchet-like face and pointed black goatee beard. He bows before the chief, then wrinkles his nose and stares at you.">
<CONSTANT STORY025-CHOICES <LTABLE "make your excuses and leave" "choose to stay and hear what news Valerian brings">>

<ROOM STORY025
    (IN ROOMS)
    (DESC "025")
    (STORY TEXT025)
    (CHOICES STORY025-CHOICES)
    (DESTINATIONS <LTABLE STORY038 STORY004>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT026 "\"You have seen what will come to pass if you fail in your quest: death and nothing but death. Now let us see whether your future holds something different in store.\"||Elanor takes your hand and brushes the surface of the water with your fingertips. A new picture forms and your eyes grow round with wonder. Something that looks like a hill set between tall dark trees is stirring and turning to look at you. It is a dragon, the oldest of the ancient beasts, not quite immortal. Its red eyes contrast horribly with the smooth jade green scales of its body. It snorts and a cloud of green gas rolls towards you. You jerk back from the vision in horror, before you remember it is just a picture on the water. You see yourself darting away from the cloud. Later, the vision shows you riding astride the creature's back while it flexes it wings in flight.||\"You must win over the dragon, the most powerful of the forest's denizens,\" says Elanor.\"Then it will fight for you against the Westermen.\"">

<ROOM STORY026
    (IN ROOMS)
    (DESC "026")
    (STORY TEXT026)
    (CONTINUE STORY041)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT027 "While you hold your ground, Valerian begins casting a spell.">
<CONSTANT STORY027-CHOICES <LTABLE "go onto the offensive" "prepare a defensive magic" "otherwise do nothing">>

<ROOM STORY027
    (IN ROOMS)
    (DESC "027")
    (STORY TEXT027)
    (CHOICES STORY027-CHOICES)
    (DESTINATIONS <LTABLE STORY169 STORY182 STORY087>)
    (REQUIREMENTS <LTABLE SKILL-SPELLS SKILL-SPELLS NONE>)
    (TYPES <LTABLE R-SKILL R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT028 "Fearing death at any moment, you plunge your dagger into the rubber hose that connects the great boiler to the Infernal Statue, which is still hacking chunks out of the Tree of Life. The hose breaks and the ends whip round with dreadful force. The Westermen coming to attack you are scythed off their feet by the hose, and you are bathed in a fog of hot steam.||You stagger out of the fog where you were safe, because it is unbearably hot, and watch as the Infernal Statue seems to run down like a clockwork toy. It bends, bows and then rolls down into the deep blue pool. The Westermen give a howl of dismay and begin to retreat, harried by the arrows of the elves.">

<ROOM STORY028
    (IN ROOMS)
    (DESC "028")
    (STORY TEXT028)
    (CONTINUE STORY500)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT029 "Valerian's attention is distracted by what the king is pointing out on the map. You inch quietly past the guards and towards the pavilion's porchway. Valerian looks up and his eyes narrow, then he cries out, \"There's something moving, they're getting away. I have the senses of a bat.\"||He points in your general dirction. The guards peer from him to where you stand, unable to make you out.">
<CONSTANT STORY029-CHOICES <LTABLE "cast the Shield of Defence spell, if you think this is your best option" "otherwise make a run for the forest">>

<ROOM STORY029
    (IN ROOMS)
    (DESC "029")
    (STORY TEXT029)
    (CHOICES STORY029-CHOICES)
    (DESTINATIONS <LTABLE STORY441 STORY451>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT030 "It will take two days to travel from Elvenhame to the Tree of Life. You delay as long as possible, mustering more than seven thousand elves, before setting out to defend the Tree of Life.||The elves fight bravely but they are outnumbered and in hand-to-hand fighting their lack of swords and armour proves a fatal weakness. Green blood flows everywhere.||You perish along with the last of the elves, vainly trying to protect their king. The death of so many immortal elves is the greatest disaster the world has ever witnessed. Nothing can now stop the Westermen reaching the Tree of Life: the Forest of Arden is doomed.">

<ROOM STORY030
    (IN ROOMS)
    (DESC "030")
    (STORY TEXT030)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT031 "A grandiose gesture brings forth the Choking Fog about the machine. But why have you used this spell against a machine that doesn't breathe but is powered by steam? The steam rushing from vents in the head dissipates the fog and the Infernal Statue lurches to the Tree of Life once again, raising its sword arm to strike.">
<CONSTANT STORY031-CHOICES <LTABLE "cast Bafflement" "Visceral Disruption" "Tower of Will">>

<ROOM STORY031
    (IN ROOMS)
    (DESC "031")
    (STORY TEXT031)
    (CHOICES STORY031-CHOICES)
    (DESTINATIONS <LTABLE STORY113 STORY064 STORY186>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT032 "There is another great whooshing exhalation behind you and you start to sprint. The gurgling sounds closer this time. The dragon must be chasing you. Straining your ears, you listen for sounds of the leviathan crashing through the ferns behind, over the rasping of your own breath and the thudding of your feet on the ground. You run until exhaustion overwhelms you but there are no sounds of pursuit now. It seems you have escaped the dragon.||If indeed you are near the Bonehill, the dragon's lair..">
<CONSTANT STORY032-CHOICES <LTABLE "travel for several days to the west to regain your course" "continue north in your original direction">>

<ROOM STORY032
    (IN ROOMS)
    (DESC "032")
    (STORY TEXT032)
    (CHOICES STORY032-CHOICES)
    (DESTINATIONS <LTABLE STORY043 STORY127>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT033 "\"I choose to use magic to fight this duel,\" you say, confident that your power is enough to beat any elf.||The King of the Elves smiles when he hears your choice - a cool smile that induces doubt and imbues you with fear. You realize you have never seen an elf smile before; the action transforms the king's face, making him look quite human all of a sudden.||\"You think to pit your magic against that of the elves? I will be the champion of elvendom in this duel: I can fashion a spell as well as any other standing here. We will use no death magics. We have potions to revive us if we are wounded. Don't make me kill you; submit if you feel my power overmastering yours.\"||With that he gestures you to take up position inside the grassy circle.">
<CONSTANT STORY033-CHOICES <LTABLE "stay in position opposite him" "try getting out of the duel by telling the king you should be measured against your foes, the Westermen, instead of the elves you have come to help">>

<ROOM STORY033
    (IN ROOMS)
    (DESC "033")
    (STORY TEXT033)
    (CHOICES STORY033-CHOICES)
    (DESTINATIONS <LTABLE STORY076 STORY092>)
    (TYPES TWO-NONES)
    (PRECHOICE-EVENT STORY033-DECISION)
    (FLAGS LIGHTBIT)>

<GLOBAL STORY033-DECISION-FLAG F>

<ROUTINE STORY033-DECISION ()
    <CRLF>
    <TELL "Stand with the wind in your face (yes) or at your back (no)?">
    <COND (<YES?> <SETG ,STORY033-DECISION-FLAG T>)>>

<CONSTANT TEXT034 "You could not possibly be near the Bonehill, which is several days travel to the east. The whole character of the forest here is very different from the area near the Bonehill. You can however, at least investigate the area where the whooshing noise came from.">

<ROOM STORY034
    (IN ROOMS)
    (DESC "034")
    (STORY TEXT034)
    (CONTINUE STORY068)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT035 "Elanor, today dressed in a silver gown of gossamer silk, turns to look at you searchingly as you walk underneath the hawthorn arch. She smiles and asks if you are feeling brave today.||You sense a sombre urgency behind her words, and, imitating a courtly bow, you reply, \"My lady, I have never felt more heroic!\"||\"Good. Do you dare to glimpse your future, my hero?\"||You have always avoided fortune-tellers. You have noticed that if a fortune-teller gives good news, people go away happy and expect good fortune to turn up on a plate without them lifting a finger. If the soothsayer prophesies misfortune a sense of helplessness comes over people and they all too often sink into a despairing inactivity which leads to their downfall through sloth. Thus their prophesy is self-fulfulling. It is a well-known fact in Godorno that those soothsayers who always give good auguries are never short of customers, leading you to conclude that they often lie, pretending to see happy events when they should be giving bad news, good fortune when they should be giving bad tidings.||Your worry on this score, however, is soon gone. Looking in the basin of smooth clear water it seems as though an artist is hurriedly painting a picture of ghoulish horror.\"The water shows what will come to pass if you do not succeed in your quest,\" says Elanor.||The picture is complete now in terrible detail, as if you were actually looking at the burnt remains of the forest. The trees have been chopped down as far as the eye can see. An infernal engine of some kind belches black smoke. Two hundred paces away you see a forge where a gigantic cauldron is suspended over a bonfire; six men constantly feed the fire with wood and charcoal. All the men working there have very pale skins, their faces long and thin, like hatchets. They shout to each other over the din of the engine in a language you don't understand.||Teams of horses harnessed together pull logs to where groups of men cut them up ready for burning. A row of children sit nearby; they are darker skinned than men and have been set to toil over sharpening the saws.||Where the trees have been felled and stripped, men are torching the underbrush. They seem intent on killing everything that lives in the forest. A pall of smoke hangs like a storm-cloud over the scene.||Then the vision shifts and the men have gone, leaving behind nothing but the grey ashes of death. All that remains of the forest is a few blackened stumps.">

<ROOM STORY035
    (IN ROOMS)
    (DESC "035")
    (STORY TEXT035)
    (CONTINUE STORY026)
    (CODEWORD CODEWORD-CRABCLAW)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT036 "The dragon yawns, its fangs raking the sky twenty feet apart. You can see the glands inside its throat that produce the acid and poison for its deadly breath. The ancient beast could kill you in a moment.">
<CONSTANT STORY036-CHOICES <LTABLE "flee" "see what fate intends for you if you feel brave enough">>

<ROOM STORY036
    (IN ROOMS)
    (DESC "036")
    (STORY TEXT036)
    (CHOICES STORY036-CHOICES)
    (DESTINATIONS <LTABLE STORY165 STORY178>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT037 "The smoking lamps produce little light, but peering through the gloom you can see several circular tables set about the hall, three near the fire and four back in the shadows. Two men, one tall and the other short and stocky, hog the fire and are engaged in conversation. Several dark figures are seated at the tables. One of these seems to be shrouded in a black travelling cloak.||\"You, stranger. Do you fear enemies here? Why skulk in the shadows like a rogue? Step nearer the fire so we may see your face.\"||You can't even tell who spoke to you but he doesn't sound friendly.">
<CONSTANT STORY037-CHOICES <LTABLE "obey the command" "ignore it" "leave the inn">>

<ROOM STORY037
    (IN ROOMS)
    (DESC "037")
    (STORY TEXT037)
    (CHOICES STORY037-CHOICES)
    (DESTINATIONS <LTABLE STORY108 STORY016 STORY117>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT038 "Once you are a safe distance from the pavilion, you run for the edge of the trees, quickly hiding yourself in the depths of the forest. The awful sights and sounds of the Westerman camp are soon far behind.">
<CONSTANT STORY038-CHOICES <LTABLE "report back to the elves" "head west" "east" "south-west" "south">>

<ROOM STORY038
    (IN ROOMS)
    (DESC "038")
    (STORY TEXT038)
    (CHOICES STORY038-CHOICES)
    (DESTINATIONS <LTABLE STORY053 STORY043 STORY070 STORY270 STORY078>)
    (REQUIREMENTS <LTABLE <LTABLE CODEWORD-WATERBEARER CODEWORD-BULLHORN> NONE NONE NONE NONE>)
    (TYPES <LTABLE R-CODEWORD R-NONE R-NONE R-NONE R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT039 "Your plight is hopeless. YOu will never stagger out of the great forest weighed down as you are. One of the dark denizens of the deepest dark tracts of wood will catch you and skin you for the exotic hide you now wear. You will never escape. Because of your greed, the Forest of Arden is doomed.">

<ROOM STORY039
    (IN ROOMS)
    (DESC "039")
    (STORY TEXT039)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT040 "\"The hackers and burners, the men from the west, say the ants of the forest must be eradicated beause the ants eat their crops. What do you say?\"">
<CONSTANT STORY040-CHOICES <LTABLE "say the ants are indeed pests and should be wiped out" "reply that the forest would choke and die if there were no ants to eat the dead leaves and wood" "use your knowledge">>

<ROOM STORY040
    (IN ROOMS)
    (DESC "040")
    (STORY TEXT040)
    (CHOICES STORY040-CHOICES)
    (DESTINATIONS <LTABLE STORY075 STORY067 STORY171>)
    (REQUIREMENTS <LTABLE NONE NONE SKILL-WILDERNESS-LORE>)
    (TYPES <LTABLE R-NONE R-NONE R-SKILL>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT041 "Elanor takes your hand once more and brushes the surface of the water again. The water is icy to your touch this time. A shiver of indefinable apprehension runs through you.||A new picture forms. Elves with bows throng the depths of the forest. They have pale green skin and hair the colour of rich red wine. They are sniping at the Westermen, unseen. Men fall in swathes, pierced by the elves' arrows, but the Westermen come on and on, advancing towards some unseen goal. The elves fall back; it seems they are looking to you to do something decisive.||A terrible figure stalks into view. You can't tell whether it is a man or some infernal magical machine. It looks like a full suit of armour, large enough for a giant of a man, that hisses steam at the joints. It bears a great sword which whistles through the air as it strides mechanically towards you.||The vision fades.||\"Your moment of truth, hero. You must be prepared to fight the smoking man. Remember this vision, saviour, it shows the way to success in your quest,\" she says.||She pauses before continuing, \"Tomorrow will be Midsummer's day. It is time for you to go in search of the elves. But, my hero you must be careful. Tell them you are a friend of mine and they might not kill you, for they sometimes shoota man dead with a single arrow before the hapless wanderer knows he is being watched. Harm neither hide nor leaf of the forest. Only by your feeling for nature will the elves judge you. Aside from that they are impartial. You could be a saint or a murderer among men, yet it would count for nothing among the elves.\"||When she is sure you know the way she bids you farewell with one last warning. \"The flute will be of no use to  you, for I cannot save you from the elves if you anger them. Farewell.\"">

<ROOM STORY041
    (IN ROOMS)
    (DESC "041")
    (STORY TEXT041)
    (CONTINUE STORY070)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT042 "You are in the dark about the plans of Westermen.">
<CONSTANT STORY042-CHOICES <LTABLE "try to find their camp and spy on it" "lead as many elves as you can muster in pitched battle against the Westermen">>

<ROOM STORY042
    (IN ROOMS)
    (DESC "042")
    (STORY TEXT042)
    (CHOICES STORY042-CHOICES)
    (DESTINATIONS <LTABLE STORY270 STORY030>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT043 "After several days of trekking west through the forest, and climbing towards uplands, you reach the edge of the Anvil Mountains. Climbing high above the treeline you can see the Forest of Arden laid out beneath you almost like a map. You should have turned south if you wanted to reach the Bonehill, or south-west if you wanted to search for the bower of the Lady of the Forest. As it is you have wasted too much time, and you are far out of your way.||You re-enter the forest, journeying along the paths between its great trees. After the few days, however, you start to find the fresh bodies of hundres of elves among the trees. It is as though they have all been slain instantly in the act of doing everyday things - some while eating their supper. Whatever has caused this terrible has bereft the forest of life: it is doomed and so are you.">

<ROOM STORY043
    (IN ROOMS)
    (DESC "043")
    (STORY TEXT043)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT044 "You travel on until you reach the next obstacle in your path: a tributary of the Sirion that is spanned by a rope bridge, the only means of crossing the water. The bridge has clearly been tended to recently, as bushes have been hacked back from the stancions between which it hangs. Tentatively, you step onto the bidge, which holds your weight but sags more and more as you approach its centre.||When you are half-way across, a waterspout erupts from the river beneath you, out of which flails a mass of vegetation ringed with fibrous tentacles. The water was thrown up by an Embracer, which plucks you from the bridge.">
<CONSTANT STORY044-CHOICES <LTABLE "use " "use" "do something else if you do not have these skills">>

<ROOM STORY044
    (IN ROOMS)
    (DESC "044")
    (STORY TEXT044)
    (CHOICES STORY044-CHOICES)
    (DESTINATIONS <LTABLE STORY061 STORY081 STORY103>)
    (REQUIREMENTS <LTABLE SKILL-UNARMED-COMBAT SKILL-SWORDPLAY R-NONE>)
    (TYPES <LTABLE R-SKILL R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT048 "Your sword cuts cleanly through the fibers, lopping the tentacles into pieces. The Embracer emits a piercing shriek and subsides once more into the river. You swim to the far bank before the man-eating monster can recover.">

<ROOM STORY048
    (IN ROOMS)
    (DESC "048")
    (STORY TEXT048)
    (CONTINUE STORY013)
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
<CONSTANT STORY055-CHOICES <LTABLE "tell them who you are and why you have come to Burg" "remain silent">>

<ROOM STORY055
    (IN ROOMS)
    (DESC "055")
    (STORY TEXT055)
    (CHOICES STORY055-CHOICES)
    (DESTINATIONS <LTABLE STORY072 STORY094>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY059
    (IN ROOMS)
    (DESC "059")
    (FLAGS LIGHTBIT)>

<ROOM STORY060
    (IN ROOMS)
    (DESC "060")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT061 "You grab two flailing tentacles, haul yourself towards the creature's cone-shaped head and smash your fist repeatedly between its murky grey eyes. Its coils loosen and fall away, and you break the surface gasping for air. Swimming to the far bank, you scramble out before the Embracer can recover.">

<ROOM STORY061
    (IN ROOMS)
    (DESC "061")
    (STORY TEXT061)
    (CONTINUE STORY013)
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

<ROOM STORY068
    (IN ROOMS)
    (DESC "068")
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
    <COND (<AND <IN? ,CODEWORD-WATERBEARER ,CODEWORDS> <IN? ,CODEWORD-BULLHORN ,CODEWORDS>> <RETURN ,STORY256>)>
    <COND (<IN? ,CODEWORD-WATERBEARER ,CODEWORDS> <RETURN ,STORY042>)>
    <RETURN ,STORY060>>

<ROOM STORY072
    (IN ROOMS)
    (DESC "072")
    (FLAGS LIGHTBIT)>

<ROOM STORY075
    (IN ROOMS)
    (DESC "075")
    (FLAGS LIGHTBIT)>

<ROOM STORY076
    (IN ROOMS)
    (DESC "076")
    (EVENT-HANDLER STORY076-EVENTS)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY076-EVENTS ()
    <HLIGHT ,H-BOLD>
    <COND (<NOT ,STORY033-DECISION-FLAG>
        <TELL "You take up position in the circle on the west side, where the ground is flattest and where the wind is at your back.">
    )(
        <TELL "You take up position in the circle on the east side, where the ground is uneven and where the wind is in your face.">
    )>
    <HLIGHT 0>
    <CRLF>
    <PRESS-A-KEY>
    <CRLF>
    <RETURN ,STORY110>>

<ROOM STORY078
    (IN ROOMS)
    (DESC "078")
    (FLAGS LIGHTBIT)>

<ROOM STORY079
    (IN ROOMS)
    (DESC "079")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT081 "As the Embracer prepares to wrap you up in its tentacles, the smell of rot and marsh gas almost makes you gag. The tips of the fibrous tentacles wave in the air as if trying to sniff you out.">
<CONSTANT STORY081-CHOICES <LTABLE "try to climb the great mass of vegetation and drive your sword between its eyes" "slash at the other tentacles as it is preparing to coil around you">>

<ROOM STORY081
    (IN ROOMS)
    (DESC "081")
    (STORY TEXT081)
    (CHOICES STORY081-CHOICES)
    (DESTINATIONS <LTABLE STORY287 STORY048>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY083
    (IN ROOMS)
    (DESC "083")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT087 "A silver noose magically appears in the air before you and drops over your head. You try to drag the noose up and over your head, but the silvery cord tightens slowly until it flattens your windpipe. You grow purple owing to the lack of oxygen and the great effort you are putting into staying alive.||It is a futile struggle. Grugling horribly, unable even to speak, you subside into the floor and black out, never to regain consciousness.">

<ROOM STORY087
    (IN ROOMS)
    (DESC "087")
    (STORY TEXT087)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY092
    (IN ROOMS)
    (DESC "092")
    (FLAGS LIGHTBIT)>

<ROOM STORY094
    (IN ROOMS)
    (DESC "094")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT103 "It was a mistake to enter the forest without a guide. There is no time to do anything as the Embracer sucks you down into the murky depths. You struggle desperately hard but, unable to breathe, your strength soon fails you and you drown in the clutches of this hideous creature.">

<ROOM STORY103
    (IN ROOMS)
    (DESC "103")
    (STORY TEXT103)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY105
    (IN ROOMS)
    (DESC "105")
    (FLAGS LIGHTBIT)>

<ROOM STORY108
    (IN ROOMS)
    (DESC "108")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT110 "You review the spells you can cast against the King of the Elves in the duel.||VANISH allows you to disappear and move unseen.  CHOKING FOG brings a cloud of poisonous gas. VSCERAL DISRUPTION causes crippling stomach cramps. SHIELD OF DEFENSE protects agains manifest magical attacks. BAFFLEMENT makes your foe unable to understand what is happening. VISIONS creates two false illusions of yourself. TOWER OF WILL subdues your enemy and makes him do your will.||The elven bard announces the beginning of the duel. You are shocked at the swiftness of elven king's magic. Before ou have even fully contemplated which spell to use, he cries a single word of power and vanishes. A moment later he reappears along with two exact copies of himself. You can't tell which is which because all three appear motionless. You must quickly decide which spell to use first.">
<CONSTANT STORY110-CHOICES <LTABLE "cast Vanish" "Choking Fog" "Visceral Disruption or Bafflement" "Shield of Defense" "Visions" "Tower of Will">>

<ROOM STORY110
    (IN ROOMS)
    (DESC "110")
    (STORY TEXT110)
    (CHOICES STORY110-CHOICES)
    (DESTINATIONS <LTABLE STORY122 STORY143 STORY347 STORY326 STORY249 STORY174>)
    (TYPES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE R-NONE>)
    (FLAGS LIGHTBIT)>

<ROOM STORY113
    (IN ROOMS)
    (DESC "113")
    (FLAGS LIGHTBIT)>

<ROOM STORY117
    (IN ROOMS)
    (DESC "117")
    (FLAGS LIGHTBIT)>

<ROOM STORY122
    (IN ROOMS)
    (DESC "122")
    (FLAGS LIGHTBIT)>

<ROOM STORY127
    (IN ROOMS)
    (DESC "127")
    (FLAGS LIGHTBIT)>

<ROOM STORY137
    (IN ROOMS)
    (DESC "137")
    (FLAGS LIGHTBIT)>

<ROOM STORY143
    (IN ROOMS)
    (DESC "143")
    (FLAGS LIGHTBIT)>

<ROOM STORY163
    (IN ROOMS)
    (DESC "169")
    (FLAGS LIGHTBIT)>

<ROOM STORY165
    (IN ROOMS)
    (DESC "165")
    (FLAGS LIGHTBIT)>

<ROOM STORY169
    (IN ROOMS)
    (DESC "169")
    (FLAGS LIGHTBIT)>

<ROOM STORY171
    (IN ROOMS)
    (DESC "171")
    (FLAGS LIGHTBIT)>

<ROOM STORY174
    (IN ROOMS)
    (DESC "174")
    (FLAGS LIGHTBIT)>

<ROOM STORY178
    (IN ROOMS)
    (DESC "174")
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

<CONSTANT TEXT237 "You trudge on, singling out a particular tree to head for as far away as you can see and keeping it in sight as you go to try to make sure you don't walk in circles. When you reach the tree you look back and try to identify the one you left behind so that you can choose another tree to make for in the same general direction. It is tiring and you are exhausted.||Moving through winding mossy ways, wrapped in the green gloom of the forest depth, you catch the scent of unusual blooms. A path fringed with violet blossoms leads off between the great black boles of the trees, and following it with your gaze you glimpse a stone tower. It is some distance out of your path, and ominously draped in shadows.">
<CONSTANT STORY237-CHOICES <LTABLE "investigate the tower" "pass by without looking back">>

<ROOM STORY237
    (IN ROOMS)
    (DESC "237")
    (STORY TEXT237)
    (CHOICES STORY237-CHOICES)
    (DESTINATIONS <LTABLE STORY394 STORY454>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY249
    (IN ROOMS)
    (DESC "249")
    (FLAGS LIGHTBIT)>

<ROOM STORY256
    (IN ROOMS)
    (DESC "256")
    (FLAGS LIGHTBIT)>

<ROOM STORY258
    (IN ROOMS)
    (DESC "258")
    (FLAGS LIGHTBIT)>

<ROOM STORY270
    (IN ROOMS)
    (DESC "270")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT274 "The earth mound that was to be your bed collapses beneath you. It is the some of a giant man-eating Colossus beetle. You try to puzzle out what has happened in the pitch dark. Then as the chitinous walls of the throat of a Colossus beetle press you down to its gullet you realize you have been swallowed alive while you listened for a monster stalking you. Nothing will avail you now as the acid of the beetle's stomach does its work. If only you had a guide who might have warned that the mound of earth on which you chose to sleep was the cap of a Colossus beetle's burrow.">

<ROOM STORY274
    (IN ROOMS)
    (DESC "274")
    (STORY TEXT274)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY277
    (IN ROOMS)
    (DESC "277")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT287 "You grab one of the tentacles with your free hand and try to climb towards the head of the Embracer. It beats you back with its tentacles and one coils around your sword arm. The tentacle constricts around your wrist like a noose of steel and the sword falls from your grasp. Unfortunately the creature has more than enough tentacles to deal with you and soon both your arms are crushed to your sides by what felt like iron bars. The Embracer drags you to drown, before feeding. You will never see the Tree of Life now. The Forest of Arden is doomed.">

<ROOM STORY287
    (IN ROOMS)
    (DESC "287")
    (STORY TEXT287)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY309
    (IN ROOMS)
    (DESC "309")
    (FLAGS LIGHTBIT)>

<ROOM STORY326
    (IN ROOMS)
    (DESC "326")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT333 "The young girl, who says that her father is away on a journey to buy provisions, charges you a piece gold for your food and for a night's lodging.||You sleep well and awake early but refreshed. Washing in cold water is invigorating and you enjoy the feel of the rough inn towel. There will be no such comforts in the forest.||Downstairs the inn is deserted. The woman in grey, the only other guest, has left already. The young girl is mopping the floor and she looks troubled. Asking what ails her brings the reply, \"My father did not return last night. I tried not to worry but I knew in my heart he wouldn't come. He went into the forest to buy provisions before the Westermen block the spice road. I know he has gone the way of the others. And that strange woman in grey never so much as touched her bed last night, though she didn't leave her room till after dawn. I begged Father to take Renard to guide him but he wouldn't spend the money. Now I'll never see him again\". With this, she breaks into tears.||As you comfort here, you ask the innkeeper's daughter to describe her father and say you will try to find either him or news of him. As you turn to leave she says, \"Fare you well, traveller, you are my only hope.\"">

<ROOM STORY333
    (IN ROOMS)
    (DESC "333")
    (STORY TEXT333)
    (CONTINUE STORY210)
    (COST 1)
    (FLAGS LIGHTBIT)>

<ROOM STORY346
    (IN ROOMS)
    (DESC "346")
    (FLAGS LIGHTBIT)>

<ROOM STORY347
    (IN ROOMS)
    (DESC "347")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT361 "You perform the chant that makes the stone in your pendant grow warm if a large animal or beast should approach while you sleep. To your dismay the stone begins to heat up immediately when you lie down to rest. You look around but can see nothing in the dark. You strain your ears but all you can here are the usual night sounds of the forest. The stone grows hotter against your breast: the unseen danger is coming closer. The earth begins to vibrate beneath you as if a giant stalks you.">
<CONSTANT STORY361-CHOICES <LTABLE "try to hide by burying yourself in the earth mound" "climb a neaby tree">>

<ROOM STORY361
    (IN ROOMS)
    (DESC "361")
    (STORY TEXT361)
    (CHOICES STORY361-CHOICES)
    (DESTINATIONS <LTABLE STORY274 STORY392>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT392 "Just as you leave the mound of earth it collapses and the head of a Colossus beetle pokes out. Its head alone is twice as big as you and it shines blackly in the faint iridescence of nearby glow-worms. Its curving black horms are tipped with cruel crushing pincers. It lunges for you but you jump behind a tree and start to climb, hoping the beetle will not have the cunning to push the tree down and claim you as a tasty morsel.||It seems to lose track of you once you leave the ground and at last retreats cumbersomely into its burrow, which it caps once more with masticated mud.">

<ROOM STORY392
    (IN ROOMS)
    (DESC "392")
    (STORY TEXT392)
    (CONTINUE STORY237)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT394 "It takes much longer to reach the tower than you imagined, since path after path leads you up against such obstacles as thorn bushes or fallen trees whose rotting bark crawls with insects. At last you pass into the open, where a clearing of uneven grassy ground stands between the louring ranks of trees.||The tower is outlined in a halo of moonlight which makes the angular masonry blocks gleam like silver. Ivy cover the walls in a dark tangled net. Under a lichen-stained armorial crest looms a great black door sealed with an iron lock. Gazing up, you see a glimmer of green light from the topmost chamber of the tower. It is one sign that the place might not be abandoned and left to ruin.">
<CONSTANT STORY394-CHOICES <LTABLE "climb the tower" "pick the lock" "return to the main forest paths and continue on your way">>

<ROOM STORY394
    (IN ROOMS)
    (DESC "394")
    (STORY TEXT394)
    (CHOICES STORY394-CHOICES)
    (DESTINATIONS <LTABLE STORY464 STORY489 STORY454>)
    (REQUIREMENTS <LTABLE SKILL-AGILITY SKILL-ROGUERY NONE>)
    (TYPES <LTABLE R-SKILL R-SKILL R-NONE>)
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

<CONSTANT TEXT419 "You are rudely awakened when the earth mound that is your bead collapses beneath you. You try to puzzle out what has happened in the pitch dark. Then as the chitinous walls of a Colossus Beetle's throat press you down towards its stomach you realize you have been swallowed alive while you slept. Nothing will avail you now as the acid of the beetle's stomach does its work. If only you had a guide who might have warned that the mound of earth on which you chose to sleep was the cap of a Colossus beetle's burrow.">

<ROOM STORY419
    (IN ROOMS)
    (DESC "419")
    (STORY TEXT419)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY427
    (IN ROOMS)
    (DESC "427")
    (FLAGS LIGHTBIT)>

<ROOM STORY441
    (IN ROOMS)
    (DESC "441")
    (FLAGS LIGHTBIT)>

<ROOM STORY451
    (IN ROOMS)
    (DESC "451")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT454 "As you walk on you find gaunt grey crags jutting up out of the forest. It is a relief to find clear landmarks at last. The forest is broken here; where soil is thin above the grey rock only grass can grow, and you walk out of gloom into bright sunlight that hurts your eyes. There are countless paths heading back into the forest in all directions. As you stand comtemplating the choice of ways a voice above and behind you says, \"Lost, are you?\"||You turn around and look up. All you can see is a silver-feathered owl perched on top of an outcrop.||\"Lost, are you?\" the voice says again. It sounded as if the voice came from the owl but its beak didn't move.">
<CONSTANT STORY454-CHOICES <LTABLE "admit you are lost" "ignore it and walk on, choosing one of the many ways at random">>

<ROOM STORY454
    (IN ROOMS)
    (DESC "454")
    (STORY TEXT454)
    (CHOICES STORY454-CHOICES)
    (DESTINATIONS <LTABLE STORY258 STORY277>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY464
    (IN ROOMS)
    (DESC "464")
    (FLAGS LIGHTBIT)>

<ROOM STORY489
    (IN ROOMS)
    (DESC "489")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT500 "The Westermen are routed. They have faced a dragon, the elves and a hero among mankind and they have had enough. They are easy to pick off as they flee through the forest much more slowly than the elves can follow. In their panic, they break into smaller and smaller groups and the elves have no difficulty in killing them. They show no mercy: the Westermen die in their tens of thousands. They will leave the forest, never to return. The Tree of Life lives on and Elanor and the elves will tend it till it has made a full recovery.||Without you, the elves and the whole forest would have been doomed. Without the forest the whole world's atmosphere would have been thrown into imbalance. Elanor greets you as the forest's saviour she had always known you would be. Now everything that grows in the great Forest of Arden is your friend. You will not be famous when you return to the lands of men. No one will ever know what great deeds you have performed here, but it doesn't matter. You know you are a hero.">

<ROOM STORY500
    (IN ROOMS)
    (DESC "500")
    (STORY TEXT500)
    (VICTORY T)
    (FLAGS LIGHTBIT)>
