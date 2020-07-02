<CONSTANT R-NONE 0>
<CONSTANT R-SKILL 1>
<CONSTANT R-CODEWORD 2>
<CONSTANT R-ITEM 3>
<CONSTANT R-GOLD 4>

<CONSTANT TWO-NONES <LTABLE R-NONE R-NONE>>
<CONSTANT THREE-NONES <LTABLE R-NONE R-NONE R-NONE>>
<CONSTANT FOUR-NONES <LTABLE R-NONE R-NONE R-NONE R-NONE>>

<CONSTANT PROLOGUE-TEXT "Sickened by the ways of your fellow men and despairing of man's cruelty, you have quit the teeming city of Godorno, with its cesspools and plague pits, its beggars and abject slaves. You walk for days, revelling in the fresh air of the countryside. This is a green land of hills and dales, farmsteads and mills -- a veritable bread-basket that yields all its grains and fruit to the decadent city.||As you walk you have much time to think. Long ago your family told you how the star of destiny, purple Praxis, changed colour to the flaming gold of Moraine, God of War, at the moment of your birth. Even as Praxis flared with energy, so your mother's life waned. She died of exhaustion bringing you into the world, but her sisters looked after you until you were old enough, at eight, to go up to the dreaming spires of the academy at Hegalopolis.||The bookish scholars trained you in many things and all who taught there agreed you showed great promise. But when you were just fifteen years old, Gornild, the harsh overlord of Godorno, dissolved all the monasteries in the lands along the Marches, fearing their teachings would turn minds against his corrupt rule. You were forced to scratch out a miserable living just like the other poor folk of the city.||The cloistered life of the academy, with its politeness and order, gave you scant preparation for the life on the streets of Godorno. You developed the cunning of a sewer rat and the patience of the damned just staying alive from day to day, dodging the press gangs from the war galleys that carry young men off to fight the corsairs. Your cunning was great enough to avoid the fate of the galley slave and you have grown to maturity, strong, tough and determined.||The ways of the city folk revolt you. Your diligent study of history shows an ever churning cycle of oppressors and the downtrodden. Man is strapped to the wheel of fate to be alternately dragged to the heights and plunged again into the pits and windblasted depths of pain and want.||As you walk, every step that bears you away from the stench of the city is a step taken more lightly than the last. YOu resolve to return to the city only if you have changed things for the better. Yours is the nobleness of spirit that would lay down its life to better the lot of your fellow man. If Praxis robbed you of a mother's love, Praxis can repay the debt by shining brightly on your destiny.||As the miles pass with you deep in thought, your path takes you inexorably on towards the great forest beyond the lands of men. Your curiosity has been piqued by rumours and legends about the ancient Tree of Knowledge, a fabled tree hundres of feet high, with golden bark and silver leaves. It is said to grow at the centre of the great Forest of Arden.||Fey sylvan elves are said to dwell there. The stories of what they look like and the fate that befalls those lost in the forest are too fantastically horrific to be true. Each fable tells a different story: of elves with six arms, of elves with scimitar blades in place of forearms, and of greenbark bows that can send an arrow from one horizon to the other and which always hit their mark. And there are stories of elves with jewels for eyes which melt when they cry, as they must when disturbed by man, for they keenly sense the tragedy of man's mortality.||Though each story is fanciful and bizarre they all agree in one respect. No one who sees the elves lives to tell of it. There isn't a man alive who has glimpsed the splendid glory of Elvenhame, the city of the elves.||You no longer know whether it is the desire to see elves or your wish to change the world for the better that takes you on your quest. What, however, if you were to learn the knowledge of ages and return to the lands of men as a saviour? Your name would go down in history. Anything less magnificent than this noble quest for knowledge that will save mankind will not do. You will become a hreo or die in the attempt.||You are on the road. It is approaching early evening and purple Praxis already beams out in the low dusk sky. As you stare at the star, it seems to wink out then flare bright golden yellow before resuming its purple form. It is a sign that your destiny awaits in the Forest of Arden.">

<ROOM PROLOGUE
    (IN ROOMS)
    (DESC "PROLOGUE")
    (STORY PROLOGUE-TEXT)
    (CONTINUE STORY001)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT001 "The road tops a ridge that is straddled by the ruins of a great wall, half covered in turf. The wall once marked the border between the lands of man and domain of the elves. Quickly you scramble up and over the blocks of fallen stone. Standing atop the ruin, you survey the outlands beyond.||Your gaze sweeps across the broad patches of purple heather and yellow gorse that cover the inhospitable uplands. The air smells fresh; it is good to be free of the noisome taint of the sewers and plague pits of the city you have left behind. The road winds down into a valley, at the foot of which nestles Burg, a small town of neat white houses with roof of triangular grey slates. Here may be your last chance to talk with mankind before you are swallowed up by the depths of the great Forest of Arden.||As you walk towards the buildings through the tilled and reaped land of the valley, you pass gleaners -- peasants who search the ground for stalks of straw and seed spilled during the harvest. The townsfolk, seemingly wary of outsiders, keep out of your way. Ahead of you is an inn, the largest building in the town. Looking forward to perhaps your last night's sleep in a proper bed for many weeks, you make for this hostelry.||The inn seems surprisingly large for a town that is at the very edge of the wilderness. It must once have been a baronial hall built by a lord seeking to carve out a kingdom beyond the great wall. As you walk down the main street the ruddy sky is turning with the onset of twilight. What looked an inviting little town by day seems sombre and unwelcoming at nightfall. As you linger a moment outside the inn, there is a crack of thunder and it begins to pour with rain.||Inside the inn a young girl is lighting oil lamps with a taper. Until your eyes grow accustomed to the gloom you cannot make out who shares the common room with you, nor many details of the interior of the inn itself.">
<CONSTANT CHOICES001 <LTABLE "wait by the door until you can see better" "step in and warm yourself before the fire">>

<ROOM STORY001
    (IN ROOMS)
    (DESC "001")
    (STORY TEXT001)
    (CHOICES CHOICES001)
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

<CONSTANT TEXT003 "A figure lies dead in the forest. Ants crawl in and out of its newly picked-clean eye sockets; beetles and rats gnaw at the remains. With a shock you realize the figure is wearing identical clothes to yours -- there isn't another pair of boots in the world quite like yours, made to order by a cobbler in Godorno.||\"You are not wearing my ring,\" says Elanor. \"If you cannot trust me, I cannot aid you. You must find your own way and I must continue my search for the saviour of the forest. Begone and never come back, you weak-willed doubter.\"||Elanor and the owl disappear. You are on your own again.">

<ROOM STORY003
    (IN ROOMS)
    (DESC "003")
    (STORY TEXT003)
    (CONTINUE STORY070)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT004 "Valerian's voice is markedly different from the guttural speech of the Westermen, but there is no doubt he has thrown in his lot with them. It is plain that they depend upon him for their knowledge of the forest and its many dangers. They are planning how to destroy and burn the whole forest tree by tree. Valerian has convinced the chief of the Westermen that his realm will not be safe until every tree, every sapling and every bush in the forest has been razed to the ground.||\"You wanted to tell me something of note, Valerian? Else why have I summoned all my advisers?\"||\"Indeed, sire, I have a plan to destroy the forest at a stroke.\"||\"What stroke?\"||\"By killing the Tree of Life at the very centre of the forest. Slay the tree of Life, sire, and the whole forest, along with everything in it, will die.\"||\"Well, your advice has been sound in the past, Valerian. I will do as you suggest and slay the Tree of Life.\"">
<CONSTANT CHOICES004 <LTABLE "interrupt and tell the chief that the death of the forest will mean death and destruction for the whole world, including him" "speak out of the pavilion and leave while the going is good">>

<ROOM STORY004
    (IN ROOMS)
    (DESC "004")
    (STORY TEXT004)
    (CHOICES CHOICES004)
    (DESTINATIONS <LTABLE STORY198 STORY038>)
    (TYPES TWO-NONES)
    (CODEWORD CODEWORD-BULLHORN)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT005 "As Valerian stands up, he lets his cloak fall to the floor, reavealing armour made of quilted leather -- light armor that wouldn't stop a sword thrust. He has no sword or obvious weapon to hand. Three small coloured pouches swing from his belt.">
<CONSTANT CHOICES005 <LTABLE "decide to hold your ground" "decide to close with him">>

<ROOM STORY005
    (IN ROOMS)
    (DESC "005")
    (STORY TEXT005)
    (CHOICES CHOICES005)
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
<CONSTANT CHOICES007 <LTABLE "cast Choking Fog" "Bafflement" "Visceral Disruption" "Tower of Will">>

<ROOM STORY007
    (IN ROOMS)
    (DESC "007")
    (STORY TEXT007)
    (CHOICES CHOICES007)
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
<CONSTANT CHOICES009 <LTABLE "reply that your reason for visiting the forest is to find the Tree of Knowledge and take some of its wisdom away with you to the lands of men" "say that the forest is too beautiful to be laid waste and you will try to save it">>

<ROOM STORY009
    (IN ROOMS)
    (DESC "009")
    (STORY TEXT009)
    (CHOICES CHOICES009)
    (DESTINATIONS <LTABLE STORY024 STORY040>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT010 "\"Then why have you disturbed my slumber? You have woken me a year early. Now I will feel sick for the next year-\"||The dragon rolls over and seems to be going back to sleep.">
<CONSTANT CHOICES010 <LTABLE "attack it" "try to steal its treasure" "continue your quest and leave the dragon to slumber">>

<ROOM STORY010
    (IN ROOMS)
    (DESC "010")
    (STORY TEXT010)
    (CHOICES CHOICES010)
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
<CONSTANT CHOICES012 <LTABLE "head west" "east" "south-west" "south">>

<ROOM STORY012
    (IN ROOMS)
    (DESC "012")
    (STORY TEXT012)
    (CHOICES CHOICES012)
    (DESTINATIONS <LTABLE STORY043 STORY427 STORY070 STORY078>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT013 "All is quiet behind you but you do not look back. The path is difficult, overgrown and boggy. Every now and then you are hard put to decide which way it leads, but by keeping fairly close to the great river you make progress for many hours until nightfall.||The noises of the forest seem to intensify with night: there is buzzing, clicking, croaking and the hoot of alone owl to keep you company. Finding a dry place to rest is not easy but at last you find a mound of earth on which you can settle down.">
<CONSTANT CHOICES013 <LTABLE "turn your pendant into a warning stone" "otherwise">>

<ROOM STORY013
    (IN ROOMS)
    (DESC "013")
    (STORY TEXT013)
    (CHOICES CHOICES013)
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
<CONSTANT CHOICES016 <LTABLE "run out of the inn without looking back" "otherwise, you must fight">>

<ROOM STORY016
    (IN ROOMS)
    (DESC "016")
    (STORY TEXT016)
    (CHOICES CHOICES016)
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
<CONSTANT CHOICES018 <LTABLE "try out the potency of your magic against that of the immortal elves" "try your skill with the sword against the champion of all the elves" "try to pit your body against one of the lithe quick elves" "concede defeat if you have none of these skills">>

<ROOM STORY018
    (IN ROOMS)
    (DESC "018")
    (STORY TEXT018)
    (CHOICES CHOICES018)
    (DESTINATIONS <LTABLE STORY033 STORY050 STORY063 STORY163>)
    (REQUIREMENTS <LTABLE SKILL-SPELLS SKILL-SWORDPLAY SKILL-UNARMED-COMBAT NONE>)
    (TYPES <LTABLE R-SKILL R-SKILL R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT019 "The dragon bats you out of the cavern and sends you rolling down the bank like a golden cannonball. You struggle to your feet while the ancient beast mocks you.||\"It is a long time since I spied a golden turtle in these parts.\" He laughs and hisses as you stagger away from the Bonehill.||Weighed down by gold, you have no chance of completing your quest unless you head back to Burg and find someone to remove the 
precious metal. No matter, you will be rich beyond your wildest dreams . . .">

<ROOM STORY019
    (IN ROOMS)
    (DESC "019")
    (STORY TEXT019)
    (CONTINUE STORY039)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT020 "He points up at the sun shining down on the clearing. Spitting onto his finger, he flicks the saliva up into the air. To your astonishment, a green watery film covers the face of the sun. It lasts only an instant before being wiped away like the blinking of a giant celestial eye. The Elf King turns to you, and his feral smile is brimming with triumph. \"Can you do that, mortal? Make the sun go green?\"">
<CONSTANT CHOICES020 <LTABLE "cast an illusion to achieve the desired effect and pass the Elf King's test" "Otherwise you must admit defeat">>

<ROOM STORY020
    (IN ROOMS)
    (DESC "020")
    (STORY TEXT020)
    (CHOICES CHOICES020)
    (DESTINATIONS <LTABLE STORY232 STORY069>)
    (REQUIREMENTS <LTABLE SKILL-SPELLS NONE>)
    (TYPES <LTABLE R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT021 "With the dragon's help and the might of the elves, you feel you have a chance of defeating the forces of the Westermen and driving the threat of the evil from the forest. Full of confidence in your ability to call upon a powerful ally of the ancient times, you head towards the rowan trees at the edge of the forest.||Travelling along routes that seem to come unbidden to you mind, you reach a clearing that seems strangely familiar. Was it perhaps, that you met the elves? Or does some horror of your travels lurk nearby in the undergrowth?||Summoning up your courage, you call out to whoever or whatever will here: |\"Elves! If you would win your freedom, come talk with a mortal who can deliver it. For I have secured us an ally equal to half the Westermen's forces -- a dragon whose very appearance will slay scores of them from sheer terror. Come forward and speak with me.\"||The words of your challenge die away, suffocated by the preternatural silence of the forest. You might have expected to hear the chirruping voice of a bird or the faint rustle of a woodmouse questing for beetles, yet there is nothoing. Cursing the elves for their arrogance, you shout again, \"Come forward!\"||Spittle flies from your lips and your face flushes with the violent passion of your request. Again you wait for a reply.||\"Do you think that one dragon is enough, then, to beat your fellow men?\" says a cool voice from behind you.||Spinning around, you see no more than inces from your face the eternally youthful face of an elf. Yet the penetrating eyes that are windows to the wisdom of countless centuries mark this elf out above all others. The Elf King has answered your call.||\"One dragon is more than enough,\" you reply, \"with the forces of the elves a well. He will demoralize the Westermen, plunging them into chaos from which the deadly arrows of the elves will cruelly pluck them.\"||He smiles a cold smile, approving of the relish with which you describe the Westermen's deaths. \"Brave words indeed, for a mortal. But for elves to accede to your schemes and counsels, you must prove yourself worthy of our respect.\"||\"How may I do that?\"||\"Overcome my champion in a duel. Only then will we heed your words.\"">
<CONSTANT CHOICES021 <LTABLE "use" "use" "accept his terms if you have neither">>

<ROOM STORY021
    (IN ROOMS)
    (DESC "021")
    (STORY TEXT021)
    (CHOICES CHOICES021)
    (DESTINATIONS <LTABLE STORY215 STORY309 STORY137>)
    (REQUIREMENTS <LTABLE SKILL-FOLKLORE <LTABLE CODEWORD-SPECULUM> NONE>)
    (TYPES <LTABLE R-SKILL R-CODEWORD R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT022 "The sprite inclines your own reflected face in an expression of deep meditation. \"I see your destiny,\" it says at last. \"You will either prove yourself a hero, saving the forest, or else you will allow venality and pride to lead you to your doom.\"||\"Being a hero sounds the better option,\" you comment drily.||\"In that case, you must seek Elanor the Grey Lady. Solitude has made her strange -- not quite elvish in her ways, but not human any longer either. But you should trust her, as she'll set you on the right path. Then you must find the elves. Convincing them to help you may prove a weighty task, for they are proud and aloof and wilfully headstrong. Next seek the camp of the Westermen to learn their plans. They will destroy the forest if they succeed, and only direct action can stop them. Perhaps you can dig up a worm to help you.\"||There is a long pause. You look expectantly at the reflection until it finally gives you a distinctly unhuman grin. \"Well, that is the prophecy,\" it concludes.">
<CONSTANT CHOICES022 <LTABLE "keep your promise to break the mirror" "leave it intact for the time being">>

<ROOM STORY022
    (IN ROOMS)
    (DESC "022")
    (STORY TEXT022)
    (CHOICES CHOICES022)
    (DESTINATIONS <LTABLE STORY418 STORY105>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT023 "The Infernal Statue is belching steam as its sword arm rises and falls like a piston. As you do not wish to attack the steaming statue directly, what will you do?">
<CONSTANT CHOICES023 <LTABLE "attack the shieldbearers and bodyguards clustered around the great boiler" "try to get to the pipe that connects the Infernal Statue to the boiler">>

<ROOM STORY023
    (IN ROOMS)
    (DESC "023")
    (STORY TEXT023)
    (CHOICES CHOICES023)
    (DESTINATIONS <LTABLE STORY203 STORY397>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT024 "\"The hackers and burners, the men from the west, say the ants of the forest must be eradicated because they eat the farmers' crops,\" she syas. \"What do you say?\"">
<CONSTANT CHOICES024 <LTABLE "say the ants are indeed pests and should be wiped out" "reply that the forest would choke and die if there were no ants to eat the dead leaves and wood" "use your knowledge">>

<ROOM STORY024
    (IN ROOMS)
    (DESC "024")
    (STORY TEXT024)
    (CHOICES CHOICES024)
    (DESTINATIONS <LTABLE STORY051 STORY067 STORY171>)
    (REQUIREMENTS <LTABLE NONE NONE SKILL-WILDERNESS-LORE>)
    (TYPES <LTABLE R-NONE R-NONE R-SKILL>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT025 "The Chief of the Westermen describes his favourite toy to you. His eyes are shining with enthusiasm as he describes a great steam-powered machine of metal armour inside which a man can ride. The suit is as large as a giant and as powerful as a steam hammer, it can smash men to pulp or rend them limb from limb. The chief believes it works by magic.||\"It only has one weakness. Sever the line that connects it to the steam furnace and it dies. Only a real hero could stand up to The Steamer and do that, by the gods,\"||At that moment a visitor is announched. \"It is Valerian the Moon Druid, sire,\" says the herald. \"He says he has important news. Shall we let him come in?\"||\"Aye, let him enter.\" The speech of Westermen sounds guttural and uncouth, but you can understand their dialect. The man who enters is the man you first saw in the inn at Burg. He is still dressed in the black travelling cloak, but his hood is thrown back to reveal his hatchet-like face and pointed black goatee beard. He bows before the chief, then wrinkles his nose and stares at you.">
<CONSTANT CHOICES025 <LTABLE "make your excuses and leave" "choose to stay and hear what news Valerian brings">>

<ROOM STORY025
    (IN ROOMS)
    (DESC "025")
    (STORY TEXT025)
    (CHOICES CHOICES025)
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
<CONSTANT CHOICES027 <LTABLE "go onto the offensive" "prepare a defensive magic" "otherwise do nothing">>

<ROOM STORY027
    (IN ROOMS)
    (DESC "027")
    (STORY TEXT027)
    (CHOICES CHOICES027)
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
<CONSTANT CHOICES029 <LTABLE "cast the Shield of Defence spell, if you think this is your best option" "otherwise make a run for the forest">>

<ROOM STORY029
    (IN ROOMS)
    (DESC "029")
    (STORY TEXT029)
    (CHOICES CHOICES029)
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
<CONSTANT CHOICES031 <LTABLE "cast Bafflement" "Visceral Disruption" "Tower of Will">>

<ROOM STORY031
    (IN ROOMS)
    (DESC "031")
    (STORY TEXT031)
    (CHOICES CHOICES031)
    (DESTINATIONS <LTABLE STORY113 STORY064 STORY186>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT032 "There is another great whooshing exhalation behind you and you start to sprint. The gurgling sounds closer this time. The dragon must be chasing you. Straining your ears, you listen for sounds of the leviathan crashing through the ferns behind, over the rasping of your own breath and the thudding of your feet on the ground. You run until exhaustion overwhelms you but there are no sounds of pursuit now. It seems you have escaped the dragon.||If indeed you are near the Bonehill, the dragon's lair..">
<CONSTANT CHOICES032 <LTABLE "travel for several days to the west to regain your course" "continue north in your original direction">>

<ROOM STORY032
    (IN ROOMS)
    (DESC "032")
    (STORY TEXT032)
    (CHOICES CHOICES032)
    (DESTINATIONS <LTABLE STORY043 STORY127>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT033 "\"I choose to use magic to fight this duel,\" you say, confident that your power is enough to beat any elf.||The King of the Elves smiles when he hears your choice -- a cool smile that induces doubt and imbues you with fear. You realize you have never seen an elf smile before; the action transforms the king's face, making him look quite human all of a sudden.||\"You think to pit your magic against that of the elves? I will be the champion of elvendom in this duel: I can fashion a spell as well as any other standing here. We will use no death magics. We have potions to revive us if we are wounded. Don't make me kill you; submit if you feel my power overmastering yours.\"||With that he gestures you to take up position inside the grassy circle.">
<CONSTANT CHOICES033 <LTABLE "stay in position opposite him" "try getting out of the duel by telling the king you should be measured against your foes, the Westermen, instead of the elves you have come to help">>

<ROOM STORY033
    (IN ROOMS)
    (DESC "033")
    (STORY TEXT033)
    (CHOICES CHOICES033)
    (DESTINATIONS <LTABLE STORY076 STORY092>)
    (TYPES TWO-NONES)
    (PRECHOICE STORY033-DECISION)
    (FLAGS LIGHTBIT)>

<GLOBAL STORY033-DECISION-FLAG F>

<ROUTINE STORY033-DECISION ()
    <CRLF>
    <TELL "Stand with the wind in your face (yes) or at your back (no)?">
    <COND (<YES?> <SETG STORY033-DECISION-FLAG T>)>>

<CONSTANT TEXT034 "You could not possibly be near the Bonehill, which is several days travel to the east. The whole character of the forest here is very different from the area near the Bonehill. You can however, at least investigate the area where the whooshing noise came from.">

<ROOM STORY034
    (IN ROOMS)
    (DESC "034")
    (STORY TEXT034)
    (CONTINUE STORY068)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT035 "Elanor, today dressed in a silver gown of gossamer silk, turns to look at you searchingly as you walk underneath the hawthorn arch. She smiles and asks if you are feeling brave today.||You sense a sombre urgency behind her words, and, imitating a courtly bow, you reply, \"My lady, I have never felt more heroic!\"||\"Good. Do you dare to glimpse your future, my hero?\"||You have always avoided fortune-tellers. You have noticed that if a fortune-teller gives good news, people go away happy and expect good fortune to turn up on a plate without them lifting a finger. If the soothsayer prophesies misfortune a sense of helplessness comes over people and they all too often sink into a despairing inactivity which leads to their downfall through sloth. Thus their prophecy is self-fulfulling. It is a well-known fact in Godorno that those soothsayers who always give good auguries are never short of customers, leading you to conclude that they often lie, pretending to see happy events when they should be giving bad news, good fortune when they should be giving bad tidings.||Your worry on this score, however, is soon gone. Looking in the basin of smooth clear water it seems as though an artist is hurriedly painting a picture of ghoulish horror.\"The water shows what will come to pass if you do not succeed in your quest,\" says Elanor.||The picture is complete now in terrible detail, as if you were actually looking at the burnt remains of the forest. The trees have been chopped down as far as the eye can see. An infernal engine of some kind belches black smoke. Two hundred paces away you see a forge where a gigantic cauldron is suspended over a bonfire; six men constantly feed the fire with wood and charcoal. All the men working there have very pale skins, their faces long and thin, like hatchets. They shout to each other over the din of the engine in a language you don't understand.||Teams of horses harnessed together pull logs to where groups of men cut them up ready for burning. A row of children sit nearby; they are darker skinned than men and have been set to toil over sharpening the saws.||Where the trees have been felled and stripped, men are torching the underbrush. They seem intent on killing everything that lives in the forest. A pall of smoke hangs like a storm-cloud over the scene.||Then the vision shifts and the men have gone, leaving behind nothing but the grey ashes of death. All that remains of the forest is a few blackened stumps.">

<ROOM STORY035
    (IN ROOMS)
    (DESC "035")
    (STORY TEXT035)
    (CONTINUE STORY026)
    (CODEWORD CODEWORD-CRABCLAW)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT036 "The dragon yawns, its fangs raking the sky twenty feet apart. You can see the glands inside its throat that produce the acid and poison for its deadly breath. The ancient beast could kill you in a moment.">
<CONSTANT CHOICES036 <LTABLE "flee" "see what fate intends for you if you feel brave enough">>

<ROOM STORY036
    (IN ROOMS)
    (DESC "036")
    (STORY TEXT036)
    (CHOICES CHOICES036)
    (DESTINATIONS <LTABLE STORY165 STORY178>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT037 "The smoking lamps produce little light, but peering through the gloom you can see several circular tables set about the hall, three near the fire and four back in the shadows. Two men, one tall and the other short and stocky, hog the fire and are engaged in conversation. Several dark figures are seated at the tables. One of these seems to be shrouded in a black travelling cloak.||\"You, stranger. Do you fear enemies here? Why skulk in the shadows like a rogue? Step nearer the fire so we may see your face.\"||You can't even tell who spoke to you but he doesn't sound friendly.">
<CONSTANT CHOICES037 <LTABLE "obey the command" "ignore it" "leave the inn">>

<ROOM STORY037
    (IN ROOMS)
    (DESC "037")
    (STORY TEXT037)
    (CHOICES CHOICES037)
    (DESTINATIONS <LTABLE STORY108 STORY016 STORY117>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT038 "Once you are a safe distance from the pavilion, you run for the edge of the trees, quickly hiding yourself in the depths of the forest. The awful sights and sounds of the Westerman camp are soon far behind.">
<CONSTANT CHOICES038 <LTABLE "report back to the elves" "head west" "east" "south-west" "south">>

<ROOM STORY038
    (IN ROOMS)
    (DESC "038")
    (STORY TEXT038)
    (CHOICES CHOICES038)
    (DESTINATIONS <LTABLE STORY053 STORY043 STORY070 STORY270 STORY078>)
    (REQUIREMENTS <LTABLE <LTABLE CODEWORD-WATERBEARER CODEWORD-BULLHORN> NONE NONE NONE NONE>)
    (TYPES <LTABLE R-CODEWORD R-NONE R-NONE R-NONE R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT039 "Your plight is hopeless. You will never stagger out of the great forest weighed down as you are. One of the dark denizens of the deepest dark tracts of wood will catch you and skin you for the exotic hide you now wear. You will never escape. Because of your greed, the Forest of Arden is doomed.">

<ROOM STORY039
    (IN ROOMS)
    (DESC "039")
    (STORY TEXT039)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT040 "\"The hackers and burners, the men from the west, say the ants of the forest must be eradicated beause the ants eat their crops. What do you say?\"">
<CONSTANT CHOICES040 <LTABLE "say the ants are indeed pests and should be wiped out" "reply that the forest would choke and die if there were no ants to eat the dead leaves and wood" "use your knowledge">>

<ROOM STORY040
    (IN ROOMS)
    (DESC "040")
    (STORY TEXT040)
    (CHOICES CHOICES040)
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
<CONSTANT CHOICES042 <LTABLE "try to find their camp and spy on it" "lead as many elves as you can muster in pitched battle against the Westermen">>

<ROOM STORY042
    (IN ROOMS)
    (DESC "042")
    (STORY TEXT042)
    (CHOICES CHOICES042)
    (DESTINATIONS <LTABLE STORY270 STORY030>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT043 "After several days of trekking west through the forest, and climbing towards uplands, you reach the edge of the Anvil Mountains. Climbing high above the treeline you can see the Forest of Arden laid out beneath you almost like a map. You should have turned south if you wanted to reach the Bonehill, or south-west if you wanted to search for the bower of the Lady of the Forest. As it is you have wasted too much time, and you are far out of your way.||You re-enter the forest, journeying along the paths between its great trees. After the few days, however, you start to find the fresh bodies of hundres of elves among the trees. It is as though they have all been slain instantly in the act of doing everyday things -- some while eating their supper. Whatever has caused this terrible has bereft the forest of life: it is doomed and so are you.">

<ROOM STORY043
    (IN ROOMS)
    (DESC "043")
    (STORY TEXT043)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT044 "You travel on until you reach the next obstacle in your path: a tributary of the Sirion that is spanned by a rope bridge, the only means of crossing the water. The bridge has clearly been tended to recently, as bushes have been hacked back from the stancions between which it hangs. Tentatively, you step onto the bidge, which holds your weight but sags more and more as you approach its centre.||When you are half-way across, a waterspout erupts from the river beneath you, out of which flails a mass of vegetation ringed with fibrous tentacles. The water was thrown up by an Embracer, which plucks you from the bridge.">
<CONSTANT CHOICES044 <LTABLE "grab the tentacles" "slice through the tentacles" "do something else">>

<ROOM STORY044
    (IN ROOMS)
    (DESC "044")
    (STORY TEXT044)
    (CHOICES CHOICES044)
    (DESTINATIONS <LTABLE STORY061 STORY081 STORY103>)
    (REQUIREMENTS <LTABLE SKILL-UNARMED-COMBAT SKILL-SWORDPLAY R-NONE>)
    (TYPES <LTABLE R-SKILL R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT045 "If you are near the dragon and the Bonehill you will need to turn to the right and travel several days to the west">
<CONSTANT CHOICES045 <LTABLE "do this" "investigate the area from where the whooshing noise came.">>

<ROOM STORY045
    (IN ROOMS)
    (DESC "045")
    (STORY TEXT045)
    (CHOICES CHOICES045)
    (DESTINATIONS <LTABLE STORY043 STORY068>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT046 "Elanor, today dressed in a silver gown of gossamer silk, turns to look at you searchingly as you walk underneath the hawthorn arch. She smiles at you.||\"Well, my hero, do you feel brave today? Is your resolve strong enough to do what is needed of you?\"||\"I have never felt more heroic, my noble lady,\" you reply, although you know in your heart of hearts that you felt considerably braver while you were wearing Elanor's emerald ring.||\"Good,\" she replies. \"Do you dare to glimpse your future, my hero?\"||You have always avoided fortune-tellers. You have noticed that if a fortune-teller gives good news, people go away content and expect good luck to come their way without the need to lift a finger. If bad lack is prophesied, a sense of helplessness afflicts the person and they might sink into a despairing activity which leads to poverty and ruin. Thus the prophecy is self-fulfilling. It is well known that those soothsayers who invariably give good auguries are never short of customers, leading you to conclude that they must be pretending to see happy events even when they should be predicting bad news, since they will simply say what people want to hear.||Your doubts in Elanor's case are soon dispelled. Looking into the basin of smooth clear water it seems as though an unseen artist is hurriedly painting a picture of ghoulish horror.">

<ROOM STORY046
    (IN ROOMS)
    (DESC "046")
    (STORY TEXT046)
    (CONTINUE STORY003)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT047 "As you set foot on the hillock you are surprised by how hard the ground feels, although it yilds slightly as if a layer of hard rock were resting on mud. The ground is smooth and has a sheen to it: it only looked like grass. The egret stops its cackling and flies off.">
<CONSTANT CHOICES047 <LTABLE "step back off the mound" "climb onwards">>

<ROOM STORY047
    (IN ROOMS)
    (DESC "047")
    (STORY TEXT047)
    (CHOICES CHOICES047)
    (DESTINATIONS <LTABLE STORY056 STORY066>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT048 "Your sword cuts cleanly through the fibers, lopping the tentacles into pieces. The Embracer emits a piercing shriek and subsides once more into the river. You swim to the far bank before the man-eating monster can recover.">

<ROOM STORY048
    (IN ROOMS)
    (DESC "048")
    (STORY TEXT048)
    (CONTINUE STORY013)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT049 "Leaving the blasted valley behind you, you strike north through the forest in search of the camp of the dreaded Westermen. The ground becomes hillocky and uneven. The trees -- hollies and elders -- are smaller here; you walk on past ever more spindly and sickly trees until you are faced by an impenetrable wall of thorns that rises up like the great cupola dome on top of the cathedral in Godorno.||You skirt the wall, which seems in actuality to be one great bush of thorns. Here and there the denseness of the growing bushes has gathered the remains of dead animals and pushed them out to its perimeter. One little group of bones looks suspiciously like those of a man or elf mouldering on the ground.">

<ROOM STORY049
    (IN ROOMS)
    (DESC "049")
    (STORY TEXT049)
    (CONTINUE STORY099)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT050 "The King of the Elves momentarily looks disappointed. He then casts his eyes about him to find a champion. A tall old elf stands forward, the first elf you have seen who carries a sword, which is strapped to his back.||He draws the blade from over his head with a flourish: it is slim with sharp, wavy edges. He looks quizzically at his king, and asks, \"Do we fight to the death, lord? If so, have no fear for me.\"||\"You will duel until one of you submits or is killed. If you survive we have two of the Lady of the Forest's potions to revive you if you are wounded.\"||To you he adds, \"Don't make Zorolotl kill you. You should submit when you feel his skill with the sword overmastering yours.\"||Zorolotl walks to one side of the grassy circle and waits confidently, his sword held aloft.">
<CONSTANT CHOICES050 <LTABLE "take up your position opposite him if you are prepared to fight" "try to get out of the duel by protesting you should be measured against your fores, the Westermen, not against the elves you have come to help">>

<ROOM STORY050
    (IN ROOMS)
    (DESC "050")
    (STORY TEXT050)
    (CHOICES CHOICES050)
    (DESTINATIONS <LTABLE STORY437 STORY092>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT051 "\"I am sorry but you have failed the test. You must leave the forest. Begone.\"||Elanor strides determinedly away from you, saying as she departs, \"I will set all the birds and the beasts against you. You have four days to leave the forest, never to return.\"">
<CONSTANT CHOICES051 <LTABLE "follow her" "let her go and follow your own destiny">>

<ROOM STORY051
    (IN ROOMS)
    (DESC "051")
    (STORY TEXT051)
    (CHOICES CHOICES051)
    (DESTINATIONS <LTABLE STORY085 STORY073>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT052 "Knowing that he has just repulsed your attempt to take over his mind and knowing you to be defenceless, the left-hand image moves. It is the real King of the Elves, and he cass a spell of his own with a dramatic gesture. A luminous green halo pops forth from his fingertips. As it darts toward you the halo grows, and it encircles your waist before you can move. Your legs feel as if they have turned to jelly: you cannot stop yourself collapsing to the ground.||\"Submit, mortal, I have defeated you,\" cries the Elf king.">
<CONSTANT CHOICES052 <LTABLE "submit" "try to fight on">>

<ROOM STORY052
    (IN ROOMS)
    (DESC "052")
    (STORY TEXT052)
    (CHOICES CHOICES052)
    (DESTINATIONS <LTABLE STORY255 STORY272>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT053 "Knowing what the Westermen plan for the Tree of Life, you determinedly hurry back to relay your information to the elves. Travelling along routes that seem to come unbidden to your mind, you reach a clearing that seems strangely familiar.||Your arrival is anticipated. An elf is waiting to return you to Elvenhame so you might hold a council of war. With a guide, you quickly make it to the fabulous home of the forest dwellers.">

<ROOM STORY053
    (IN ROOMS)
    (DESC "053")
    (STORY TEXT053)
    (CONTINUE STORY256)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT054 "What is the dragon's name?">
<CONSTANT CHOICES054 <LTABLE "answer Gwelphstar" "Garoshtar" "Skardrig" "Bethshebel">>

<ROOM STORY054
    (IN ROOMS)
    (DESC "054")
    (STORY TEXT054)
    (CHOICES CHOICES054)
    (DESTINATIONS <LTABLE STORY006 STORY083 STORY093 STORY102>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT055 "A tall man and his short and stocky companion move apart to allow you room in front of the roaring log fire. Both give you a sidelong glance. They look rough and weather-beaten men: the smaller of the two has a face like a bull-mastiff, the taller has the sly cunning look of a fox.">
<CONSTANT CHOICES055 <LTABLE "tell them who you are and why you have come to Burg" "remain silent">>

<ROOM STORY055
    (IN ROOMS)
    (DESC "055")
    (STORY TEXT055)
    (CHOICES CHOICES055)
    (DESTINATIONS <LTABLE STORY072 STORY094>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT056 "You step back off the mound, which begins to shake as if there was an earthquake. The ground you have stepped back onto is quite firm, but even so you can feel the vibrations rocking you slightly.||The whole of the green hillock suddenly rolls upwards and away from you, leaving you standing on the edge of a ledge with a twenty-foot drop. As the hillock moves it creases and splits apart.||The dragon, for that is what the hillock really is, moves slowly as it wakes from its slumber. Turning its great scaly neck like a corkscrew, the ancient creature looks back over its shoulder at you. Its smouldering red eyes, as terrifying as the portals to hell, gaze at you from a craggy face the size of a cart">
<CONSTANT CHOICES056 <LTABLE "leap at its head to attack it before it is fully awake" "smile at it in the hope that it will not eat you, while preparing a spell if you know how">>

<ROOM STORY056
    (IN ROOMS)
    (DESC "056")
    (STORY TEXT056)
    (CHOICES CHOICES056)
    (DESTINATIONS <LTABLE STORY074 STORY036>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT057 "By the time you are directed to where the King of the Elves is preparing the defences, he is in position with his elven army in the trees around the Tree of Life itself.||The forest falls still. There are thousands of elves in the trees around the clearing but they make no sound. Even the animals and birds have fallen unnaturally silent. You look around and savour the beauty of this enchanted place, the fountain of all life. This may well be the last chance you ever have to revel in the natural glory of the Forest of Arden.||The sun breaks through the rolling clouds and bathes the clearing in brilliant light. The trumpets of the tree lilies swing round to greet the sun. You expect to hear the elves cheer at this good omen, but they remain grimly silent.||The oppresive din of the tramping of feet of thousands upon thousands of enemies grows inexorably closer. There is a crack like a firecracker as a tree is split and knocked to the ground by the passing of one of the great metallic monsters.">

<ROOM STORY057
    (IN ROOMS)
    (DESC "057")
    (STORY TEXT057)
    (CONTINUE STORY434)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT058 "\"A battle of wits?\" The Elf King rises to this like a cat confronted with a helpless mouse. \"Very well, let us set an impossible task. He who fails to achieve the task has lost the contest.\"||You are on the point of asserting that an impossible task by definition can never be achieved, but then you remember that elves abide by a contrary sort of logic. In any case, this is a test of your skill as a trickster. You nod your head. \"Agreed.\"||The Elf King looks about him, then picks up a stone from the ground. Plucking a thread from the hem of his robe, he holds it between thumb and forefinger and says, \"Be rigid.\" Instantly the thread staightens like a length of steel wire. \"Curl.\" adds the Elf King, and now the thread twists into a corkscrew shape. Finally, he says, \"Penetrate,\" and drives the thread into the stone. It winds right through as you might push a nail through a lump of butter. \"Return again to thread,\" says the Elf King, and he holds the stone up dangling on the limp thread.||You take it from him. \"And what am I to do?\"||\"Withdraw the silk from the stone,\" he says, \"Then thread it back through.\"||\"Easy enough.\" You pull out the thread, then go over to a tree where you moisten the end with a drop of sticky sap. Next you find an ant crawling amid the leaf litter and glue the thread to its abdomen with the sap. As the ant wriggles, you lower it over the hole in the stone. It takes several attempts, but finally the ant crawls into the tiny hole. The Elf King glowers inscrutably as you hold up the stone and wait. Knowing that the ant is unable to turn around, it is only a matter of time before it emerges from the other end of the hole. You detach the ant and hand the stone back to the Elf King -- once more with the skilk neatly threaded through it.||He casts it aside. \"Another task -\" He begins.||\"Now it is my turn to set a task,\" you protest. \"You have just set one.\"||\"That was by way of being an example of what was needed. Now we begin the contest proper.\"">
<CONSTANT CHOICES058 <LTABLE "agree to attempt another task that he sets you" "accept a more conventional duel if you think you might fail a second try">>

<ROOM STORY058
    (IN ROOMS)
    (DESC "058")
    (STORY TEXT058)
    (CHOICES CHOICES058)
    (DESTINATIONS <LTABLE STORY187 STORY018>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT059 "The dragon pins you to the ground beneath a huge claw. You look up from the massive green scaled claw to the beast's smouldering red eyes some thirty feet above. Clearly it wasn't as sleepy as you thought and your actions have made it think you were trying to kill it. The dragon opens its jaws wide and its stomach convulses. A second later a gout of poisonous gas and acid hits you like a suffocating and burning wave. There is no surviving the breath of an ancient green dragon.">

<ROOM STORY059
    (IN ROOMS)
    (DESC "059")
    (STORY TEXT059)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT060 "Thea hairs on the nape of your neck begin to bristle as you step quietly between the Greenbark trees. You sens you are being watched.">
<CONSTANT CHOICES060 <LTABLE "hide" "stop and look about you" "call out that you are Elanor's friend come in search of the immortal elves">>

<ROOM STORY060
    (IN ROOMS)
    (DESC "060")
    (STORY TEXT060)
    (CHOICES CHOICES060)
    (DESTINATIONS <LTABLE STORY080 STORY090 STORY109>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT061 "You grab two flailing tentacles, haul yourself towards the creature's cone-shaped head and smash your fist repeatedly between its murky grey eyes. Its coils loosen and fall away, and you break the surface gasping for air. Swimming to the far bank, you scramble out before the Embracer can recover.">

<ROOM STORY061
    (IN ROOMS)
    (DESC "061")
    (STORY TEXT061)
    (CONTINUE STORY013)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT062 "The innkeeper's daughter is overjoyed to see her father returned. The innkeeper is as good as his word and he kills a fattened pig to give you a banquet fit for a king.||All too soon, however, you have to leave their pleasant hospitality behind and return to your quest. Yet you are already too late. As you journey back towards the Sirion river the Westermen have found the Tree of Life and cut it down. The forest is doomed and so, in the end, is all mankind. You have failed: the long winter is beginning.">

<ROOM STORY062
    (IN ROOMS)
    (DESC "062")
    (STORY TEXT062)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT063 "Deciding your best chance of success in the duel is to use unarmed combat, you inform the King of the Elves of your choice. He scowls at you, then looks about him for a champion.||One of the frew young elves walks forward. He is the only elf you have evver seen who  you could describe as reasonably well built. His muscles are long and well defined. You have noticed how swift and deft the other elves are, and noted their surprising wiry strength. The young elf could prove to be a difficult adversary.||He walks forward, rocking up onto the balls of his feet, like a sping-heeled Jack, looks towards the king and asks, \"Do we fight to the death, Lord? Have no fear for me.\"||\"You will duel iuntil one of you submits or is killed,\" answers the king. \"If you survive we have two of the Lady of the Forest's potions to revive those who are wounded.\"||Gathkeri walks to one side of the grassy circle and waits confidently with his arms folded in front of him. He appears to be concentrating hard and mumbling.">
<CONSTANT CHOICES063 <LTABLE "take up your postion opposite Gathkeri" "try to get out of the duel by protesting to the king that you should be measured against your foes, the Westermen, not against the elves you have come to help">>

<ROOM STORY063
    (IN ROOMS)
    (DESC "063")
    (STORY TEXT063)
    (CHOICES CHOICES063)
    (DESTINATIONS <LTABLE STORY201 STORY092>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT064 "Speaking the word you clench your fist, imagining you are twisting and crushing the entrails of the Infernal Statue. The machine does not buckle or hold its stomach, as must a man affected by this puissant spell. Instead it lurches past the Tree of Life, then circles and lurches forward again, towards the deep blue pool.||The cries of the Westermen die to silence. In the resulting quiet you can hear muffled groans coming from somewhere inside the Infernal State. It totters on the brink of the pool and then begins to turn slowly back towards the Tree of Life. It seems to be recovering and will not be harmed by the spell again.">
<CONSTANT CHOICES064 <LTABLE "cast Bafflement" "Tower of Will">>

<ROOM STORY064
    (IN ROOMS)
    (DESC "064")
    (STORY TEXT064)
    (CHOICES CHOICES064)
    (DESTINATIONS <LTABLE STORY372 STORY207>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT065 "Your sudden rush takes him by surprise as he was preparing a spell. Just before you reach him he calls out the word \"Sanctuary\" in a ringing voice and claps his hands together. There is a second clap and he is gone. He has disappeared completely. YOu go to the door of the inn but there is no sign of him in the rain-lashed cobbled street.||Only the old woman in grey remains in the common room. She nods at you approvingly.">
<CONSTANT CHOICES065 <LTABLE "sit at her table and talk to her" "take a room in the inn for the night">>

<ROOM STORY065
    (IN ROOMS)
    (DESC "065")
    (STORY TEXT065)
    (CHOICES CHOICES065)
    (DESTINATIONS <LTABLE STORY181 STORY333>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT066 "You have taken a few more steps when the ground starts to shake. It feels like an earthquake and you fall down. Then the very ground beneath you hurtles skyward. There is a sudden hissing and a cloud of noisome vapours suddenly spurs from the other end of the hillock, giving the game away. You are lying on a dragon.||The dragon rolls over, away from the ledge it has been slumbering against, and as it does so you clamber up its back -- an experience that is like scrambling up the side of a gigantic rolling barrel -- and manage to grab hold of the bottle-green row of scales that runs in a crest down the creature's back.||Moving slowly as it wakes from its lengthy slumber, the dragon turns its necks like a corkscrew and points its cart-sized face at you. Its smouldering red eyes are like the gateways to hell.">
<CONSTANT CHOICES066 <LTABLE "leap at its head to attack the dragon before it becomes fully awake" "smile at the dragon in the hope that it doesn't eat you">>

<ROOM STORY066
    (IN ROOMS)
    (DESC "066")
    (STORY TEXT066)
    (CHOICES CHOICES066)
    (DESTINATIONS <LTABLE STORY074 STORY036>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT067 "\"The Westermen hate spiders. They say the spiders are ugly, poisonous and unnatural. To them spiders are the evil creatures of the Demoness. It does no harm to the forest to kill a spider. Are they right, these Westermen?">
<CONSTANT CHOICES067 <LTABLE "say there is no harm in killing spiders" "say it is bad to kill spiders" "use">>

<ROOM STORY067
    (IN ROOMS)
    (DESC "067")
    (STORY TEXT067)
    (CHOICES CHOICES067)
    (DESTINATIONS <LTABLE STORY051 STORY106 STORY136>)
    (REQUIREMENTS <LTABLE NONE NONE SKILL-WILDERNESS-LORE>)
    (TYPES <LTABLE R-NONE R-NONE R-SKILL>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT068 "Pushing through the ferns you come to a desolate area of worn rock. The breeze carries the acrid smell of sulphurous gases. The few plants growing here are wizened and brown, struggling on the edge of survival. The strange gurgling sound starts again, further away. The smoke rises out of the ground ahead of you followed by a watery burp.">
<CONSTANT CHOICES068 <LTABLE "run away" "otherwise">>

<ROOM STORY068
    (IN ROOMS)
    (DESC "068")
    (STORY TEXT068)
    (CHOICES CHOICES068)
    (DESTINATIONS <LTABLE STORY032 STORY088>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT069 "The Elf King raises his open hand in front of your face, palm upwards. It looks empty, but when he blows across it a flurry of fine ochre pollen flies into your eyes. Stumbling back, you wipe the pollen out of your eyes. It stings, causing tears to run down your face, and by the time your vision clears the elves have melted away into the forest depths. You are alone in the clearing.">

<ROOM STORY069
    (IN ROOMS)
    (DESC "069")
    (STORY TEXT069)
    (CONTINUE STORY078)
    (FLAGS LIGHTBIT)>

<ROOM STORY070
    (IN ROOMS)
    (DESC "070")
    (EVENTS STORY070-EVENTS)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY070-EVENTS ()
    <COND (<AND <IN? ,CODEWORD-WATERBEARER ,CODEWORDS> <IN? ,CODEWORD-BULLHORN ,CODEWORDS>> <RETURN ,STORY256>)>
    <COND (<IN? ,CODEWORD-WATERBEARER ,CODEWORDS> <RETURN ,STORY042>)>
    <RETURN ,STORY060>>

<CONSTANT TEXT071 "Your will invades the mind of the King of the Elves while he is still reeling from the effects of your Bafflement spell. As his senses return to him, you realize that his mind has been toughened beyond comprehension by the centuries of leading all elvendom, and the responsibility and judgment such a position requires. Quickly you grasp the moment to force him to speak the words of submission. You have won the duel.">

<ROOM STORY071
    (IN ROOMS)
    (DESC "071")
    (STORY TEXT071)
    (CONTINUE STORY263)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT072 "You tell them of your quest to find the Tree of Knowledge in the Forest of Arden. The tallest of the two men introduces himself as Renard the Guide.||\"If you seek the Tree of Knowledge, you will need a guide. The forest hold many snares, and its ways are treacherous. If you enter there alone you'll surely perish. That or you'll be hopelessly lost, never to see tha lands of men again.\"||\"Ha!\" snorts the short man. \"Renard doesn't know the whereabouts of the tree you seek, I'll warrant.\"||The hunter turns away, quietly saying as his parting shot, \"About as much as you, Renard, and that's nothing at all.\" He walks over to the kitchen door to talk to the young woman who pours him a jug of beer.||Renard sits down at the table, pulls up a second chair, and gestures you to join him.">
<CONSTANT CHOICES072 <LTABLE "ask him about the Tree of Knowledge" "learn about the other travellers in the inn">>

<ROOM STORY072
    (IN ROOMS)
    (DESC "072")
    (STORY TEXT072)
    (CHOICES CHOICES072)
    (DESTINATIONS <LTABLE STORY130 STORY145>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT073 "You stand up sharply when a thorn suddenly grows out of the branch on which you are sitting and pricks your bottom.||The appearance of the Lady in Grey changes. she is old again, as she appeared in the inn. She looks weary and downcast but resolute. \"If you do not quit the forest quickly the birds and the beasts will see to it that you never return to the lands of men.\"||You wander in the forest for many days. One day, you come across the bodies of hundreds of elves lying among the trees. It looks as though someone had just switched off their life force all at once -- some even died in the middle of eating their supper. The forest is doomed and so are you.">

<ROOM STORY073
    (IN ROOMS)
    (DESC "073")
    (STORY TEXT073)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT074 "You leap into the air but the dragon twitches its head away and you miss the target. With nothing to land on, you plumment twenty feet to the ground, landing almost underneath one of the creature's massive claws.">

<ROOM STORY074
    (IN ROOMS)
    (DESC "074")
    (STORY TEXT074)
    (CONTINUE STORY059)
    (EVENTS STORY074-EVENTS)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY074-EVENTS ()
    <COND (<IN? ,SKILL-AGILITY ,SKILLS>
        <HLIGHT ,H-BOLD>
        <TELL "It is a difficult leap, made harder by the dragon slowly rearing up onto its legs.">
        <HLIGHT 0>
        <CRLF>
        <PRESS-A-KEY>
        <CRLF>
        <RETURN ,STORY086>
    )>
    <RETURN ,STORY074>>

<CONSTANT TEXT075 "\"The Westermen hate spiders. They say the sppiders are ugly, poisonous and unnatural. To them spiders are the evil cratures of the Demoness. It does no harm to the forest to kill a spider. Are they right, these Westermen?">
<CONSTANT CHOICES075 <LTABLE "say there is no harm in killing spiders" "say it is bad to kill spiders">>

<ROOM STORY075
    (IN ROOMS)
    (DESC "075")
    (STORY TEXT075)
    (CHOICES CHOICES075)
    (DESTINATIONS <LTABLE STORY051 STORY089>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY076
    (IN ROOMS)
    (DESC "076")
    (EVENTS STORY076-EVENTS)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY076-EVENTS ()
    <HLIGHT ,H-BOLD>
    <COND (<NOT ,STORY033-DECISION-FLAG>
        <TELL "You take up position in the circle on the west side, where the ground is flattest and where the wind is at your back.">
    )(ELSE
        <TELL "You take up position in the circle on the east side, where the ground is uneven and where the wind is in your face.">
    )>
    <HLIGHT 0>
    <CRLF>
    <PRESS-A-KEY>
    <CRLF>
    <RETURN ,STORY110>>

<CONSTANT TEXT077 "Nothing in your life so far has prepared you for the first sight of the great Sirion river. The furthest bank -- or perhaps it is just a large island in midstream -- seems to be three miles away. Its roiling waters carry a multitude of dead tree branches towards the sea, like a vein carrying detritus out of a body.||Across the river the treeline is unbroken. You are deep in the rainforest now. The gigantic trees spread their branches more than a hundred feet from the ground here. At the river's edge mangroves reach far out into the water; bloated river buffalo shelter beneath their arching roots. It is hard going here. At every other step you sink into oozing mud.">

<ROOM STORY077
    (IN ROOMS)
    (DESC "077")
    (STORY TEXT077)
    (CONTINUE STORY044)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT078 "You trudge on, singling out and mentally marking individual trees as far away as you can see with the object of keeping them in sight so you don't walk in circles. Each time you reach your target tree you look back and try to identify the one you left behind so that you can choose another tree to make for in the same general direction. It is tiring work, and it exhausts you in body and mind.||As you walk on you eventually see gaunty grey crags jump out of the forest. It is a relief to find clear landmarks at last. The forest is broken here, as only grass can grow on where the soil is thin above the grey rock.||You walk out of the gloom into bright sunlight that hurts your eyes. There are countless paths leading back into the forest in all directions. As you stand contemplating which way to choose, a voice above and behind you says, \"Lost, are you?\"||You turn round and look up. All you can see is a silver-feathered owl perched on top of an outcrop.||\"Lost, are you?\" the voice says again. It sounded as if the voice came from the owl but its beak didn't move.">
<CONSTANT CHOICES078 <LTABLE "admit you are lost" "ignore the voice and walk on, picking one of the many ways at random">>

<ROOM STORY078
    (IN ROOMS)
    (DESC "078")
    (STORY TEXT078)
    (CHOICES CHOICES078)
    (DESTINATIONS <LTABLE STORY258 STORY277>)
    (TYPES TWO-NONES)
    (PRECHOICE STORY078-PRECHOICE)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY078-PRECHOICE ()
    <COND (<AND <IN? ,EMERALD-RING ,PLAYER> <IN? ,CODEWORD-CRABCLAW ,CODEWORDS>>
        <SETG HERE ,STORY440>
        <SETG CONTINUE-TO-CHOICES F>
        <PRESS-A-KEY>
    )(<AND <IN? ,EMERALD-RING ,PLAYER> <IN? ,CODEWORD-TWINHEAD ,CODEWORDS>>
        <SETG HERE ,STORY459>
        <SETG CONTINUE-TO-CHOICES F>
        <PRESS-A-KEY>
    )>>

<CONSTANT TEXT079 "The dragon seems to read your mind. The monster flicks its tails and licks its lips.||\"Walk into the cavern and behold my hoard which has been garnered from palaces across the whole world. Many of my teasures are old, so very old, that they have a tale to tell.\"||The dragon bats you with a mighty claw, bowling you over so you fall to the ground. Once you have gotten back on your feet, the ancient creature ushers you forward into the dark cavern. Entering, you stop for a moment to adjust to the dim light. Blinking in astonishment, your jaw goes slack at the sight before you. You stare in awe at the veritable mountain of golden coins, goblets, candelabra and jewellery that comprise the dragon's treasure trove.||\"All the gold and jewels you can carry I give to you,\" says the dragon.||At the creature's words, some of the coins fly up into the air and push themselves against you. Soon you are covered in a golden crust which has gathered like barnacles do on the hull of a ship. Although your arms and legs are left free, you are terribly weighed down by the fortune that is now stuck to you. You try to prise the coins away but they are stuck fast by the magic of the dragon.">

<ROOM STORY079
    (IN ROOMS)
    (DESC "079")
    (STORY TEXT079)
    (CONTINUE STORY019)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT080 "You hide underneath a clump of bushes for what seems an age. Here in the deepest part of the forest you can only guess that it is still daytime. When you are certain that you can hear and see nothing, you emerge from your hiding place and decide to journey on.||You have walked but half a mile further when the feeling of being watched returns.">
<CONSTANT CHOICES080 <LTABLE "hide again" "stop and look around you" "walk on seemingly unaware" "try calling out that you are Elanor's friend come in search of the immortal elves">>

<ROOM STORY080
    (IN ROOMS)
    (DESC "080")
    (STORY TEXT080)
    (CHOICES CHOICES080)
    (DESTINATIONS <LTABLE STORY129 STORY090 STORY150 STORY109>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT081 "As the Embracer prepares to wrap you up in its tentacles, the smell of rot and marsh gas almost makes you gag. The tips of the fibrous tentacles wave in the air as if trying to sniff you out.">
<CONSTANT CHOICES081 <LTABLE "try to climb the great mass of vegetation and drive your sword between its eyes" "slash at the other tentacles as it is preparing to coil around you">>

<ROOM STORY081
    (IN ROOMS)
    (DESC "081")
    (STORY TEXT081)
    (CHOICES CHOICES081)
    (DESTINATIONS <LTABLE STORY287 STORY048>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT082 "You speak the word and a magical silver shield appears to protect you from magic. But there is no one here using magic against you. You are wasting precious time. Now is your last chance to save the Tree of Life.">
<CONSTANT CHOICES082 <LTABLE "cast Choking Fog" "Bafflement" "Visceral Disruption" "Tower of Will">>

<ROOM STORY082
    (IN ROOMS)
    (DESC "082")
    (STORY TEXT082)
    (CHOICES CHOICES082)
    (DESTINATIONS <LTABLE STORY346 STORY113 STORY064 STORY186>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT083 "\"Great Garoshtar, aid me now. Listen to and respect your friend's wishes -- the forest needs your help.\"||Garoshtar's great head rises slowly above you and his red eyes bore into yours.||\"I need your help now, Garoshtar. The Westermen are marching to uproot the Tree of Life.\"||The dragon is ready to bear you and to frighten the Westermen into the bargain. You ask him to attack the head of the Westermen columns as they advance, to give time for the King of the Elves to muster all his available forces. You climb onto Garoshtar's back and sit just in front of the great taut wings that beat the air like mainsails close-rigged in a storm.">
<CONSTANT CHOICES083 <LTABLE "remain astride Garoshtar's back while he attacks the Westermen" "get him to deliver you to Elvenhame before making his attack">>

<ROOM STORY083
    (IN ROOMS)
    (DESC "083")
    (STORY TEXT083)
    (CHOICES CHOICES083)
    (DESTINATIONS <LTABLE STORY228 STORY247>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT084 "As the Westermen close in on you with swords and maces, you defend yourself as best as you can while the Infernal Statue hews great lumps of green stained wood from the trunk of the Tree of Life. You fight like a hero, but for every foe you kill two more take his place. At the last your feet are knocked out from under you and your body is pierced by countless sword thrusts. You have failed the forest: it will be destroyed by the Westermen.">

<ROOM STORY084
    (IN ROOMS)
    (DESC "084")
    (STORY TEXT084)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT085 "She will not listen as you ask her to stop and she moves so lightly you have a hard time keeping up.||\"What have I done to upset you?\" you ask. \"I can't help it if I don't know the ways of the forest as you do. I've had a hard life on the streets of Godorno. I din't know what I would find here in the forest. Don't leave me here . . .\"||Your pleas are useless: you cannot change her mind.||She flits between a curtain of creepers and down a secret tunnel, leaving you with an inexplicably strong feeling of loss. You try to find the concealed opening, but after hours of fruitless searching you reluctantly admit you have no choice but to follow your own destiny.||You wander in the forest for many days, until you come across the bodies of hundreds of elves lying among the trees. They are like figures of clay, cold and limp without the spark of life. You realize that the most terrible of fates have come to pass: the Westermen have succeeded in destroying the heart of the forest. You slump to your knees in despair as you hear their engines of destruction cutting through the trees towards you. Soon you will share the doom of the elves.">

<ROOM STORY085
    (IN ROOMS)
    (DESC "085")
    (STORY TEXT085)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT086 "Your agile leap carries you into the monster's face, where you clutch at the beast's long thick whiskers to stop yourself falling off. You are right next to the dragon's mouth and your eyes are looking straight into its cavernous nostrils. But how will you take advantage of your precarious position?">
<CONSTANT CHOICES086 <LTABLE "scramble up on top of the ancient creature's head if you consider this your best move" "daringly pat the dragon gently on the end of its great scaly nose">>

<ROOM STORY086
    (IN ROOMS)
    (DESC "086")
    (STORY TEXT086)
    (CHOICES CHOICES086)
    (DESTINATIONS <LTABLE STORY116 STORY125>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT087 "A silver noose magically appears in the air before you and drops over your head. You try to drag the noose up and over your head, but the silvery cord tightens slowly until it flattens your windpipe. You grow purple owing to the lack of oxygen and the great effort you are putting into staying alive.||It is a futile struggle. Grugling horribly, unable even to speak, you subside into the floor and black out, never to regain consciousness.">

<ROOM STORY087
    (IN ROOMS)
    (DESC "087")
    (STORY TEXT087)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT088 "For a long while nothing happens. Nervously you begin to edge closer to the source of the strange sounds. There is a ledge ahead and you can't see what lies beyond.||There is a sudden dire hissing, as if a hundred vipers were baring their venomous fangs or perhaps it is an ancient dragon drawing breath. Then another whoosh followed by an eruption of hot water that fountains into the air gives you the solution to the mystery. There is no dragon here and you are indeed, nowhere near the Bonehill. Walking to the edge you see a cluster of large bubbling pools. All you have found is an area of hot springs. Every now and then a geyser erupts; gurgling that follows is the escape of foul-smelling gases. There is nothing of interest here so you go on your way.">
<CONSTANT CHOICES088 <LTABLE "turn and head west from here" "continue north in your original direction if you prefer">>

<ROOM STORY088
    (IN ROOMS)
    (DESC "088")
    (STORY TEXT088)
    (CHOICES CHOICES088)
    (DESTINATIONS <LTABLE STORY043 STORY127>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT089 "\"Why is it bad to kill spiders?\" she asks.">
<CONSTANT CHOICES089 <LTABLE "say it is because all evil things as well as good things must be tolerated in the forest" "say you believe it is because the birds would die without spiders to eat, and without birds to eat berries there would be no young trees ">>

<ROOM STORY089
    (IN ROOMS)
    (DESC "089")
    (STORY TEXT089)
    (CHOICES CHOICES089)
    (DESTINATIONS <LTABLE STORY104 STORY128>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT090 "You stop still in your tracks and start to stare about, thinking to catch an elf slyly peeking at you from behind a tree.||There is the rushing whine of an arrow and a stabbing pain between your shoulder-blades. The force of the shot spins you round enabling you to see your assailant.||It is a tall, proud elf, who stands between two Greenbark trees, his legs apart. He lets his bow fall to his side as your legs buckle under you. Your nameless attacker is a fine shot: his arrow has pierced your lung. Slowly you begin to drown in your own blood.">

<ROOM STORY090
    (IN ROOMS)
    (DESC "090")
    (STORY TEXT090)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT091 "You marshal your thoughts and unleash the magic that begins a struggle of wills. Seconds after your eyes have glazed with the effort you realize your mistake. The centuries of being the one on whom all elvenkind has depended for leadership have hardened the king's will. He quickly exerts his power over your feeble mind. Your body trembles with the effort of trying to resist, but none the less you find yourself walking forward step by step until you are in front of the king. He compels you to kneel before him. Powerless to resist, you speak the words of submission. You have lost the duel.">

<ROOM STORY091
    (IN ROOMS)
    (DESC "091")
    (STORY TEXT091)
    (CONTINUE STORY163)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT092 "\"You would have us risk our lives in battle with a hundred thousand Westermen, yet you will not dare face one elf in a duel? You are no better than the other humans.\" The king's voice is loaded with contempt. \"We will have no dealings with you. Slay the coward.\"||You begin to expostulate, but they are already drawing back on the bowstrings.||\"Alright, I'll fight the duel,\" you cry. \"It won't prove anything, aahhh!\" The first arrow pierces your windpipe -- it is followed by many more. You die spurned by all elvendom.\"">

<ROOM STORY092
    (IN ROOMS)
    (DESC "092")
    (STORY TEXT092)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT093 "You call out the dragon's name and its great head rears slowly above you and its eyes bore into yours. Its nostrils dilate as it sucks in a deep breath. Too late you realize you lied to yourself about knowing the dragon's real name as it breathes acid and gas down on you. The intense burning and blistering that follows wracks your body with pain. Yet the torment is mercifully brief, as you quickly lapse into unconsciousness and then the permanent sleep of death.">

<ROOM STORY093
    (IN ROOMS)
    (DESC "093")
    (STORY TEXT093)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT094 "Ignoring you, the two men continue their conversation about hunting in the forest. The shorter of the two becomes insulting when the taller claims to know the forest better than he.||\"There are things in the forest which you wouldn't dare look upon, yet which I have seen with my own eyes.\"||\"What things?\"||\"Terrible things, green ghosts that walk through trees, phantasms and, in the darkest depths beyond Sirion, a huge monster as big as a hill.\"||\"You've been too long alone in the forest. All your pent-up thoughts turn to babble.\"||\"I saw it, it blinked its great eye at me. An eye like a salver big enough to carry a boar's head.\"">
<CONSTANT CHOICES094 <LTABLE "tell them of your quest to the forest now" "as your eyes become accustomed to the light and you can see the other travellers in the inn, look them over before before choosing a table">>

<ROOM STORY094
    (IN ROOMS)
    (DESC "094")
    (STORY TEXT094)
    (CHOICES CHOICES094)
    (DESTINATIONS <LTABLE STORY162 STORY176>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT095 "You jump nimbly and quickly over a stack of books and slink out between the chief's advisers. The guards at the porch don't notice you bass between them and you are soon safe back in the forest. The awful sights and sounds of the Westermen camp are soon far behind.">
<CONSTANT CHOICES095 <LTABLE "head west" "east" "south-west" "south">>

<ROOM STORY095
    (IN ROOMS)
    (DESC "095")
    (STORY TEXT095)
    (CHOICES CHOICES095)
    (DESTINATIONS <LTABLE STORY043 STORY427 STORY070 STORY078>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT096 "Nothing in your life so far has prepared you for the first sight of the great Sirion river. The furthest bank -- or perhaps it is just a large island in midstream -- seems three miles away. Its roiling waters carry a multitude of dead tree branches towards the sea, like a vein carrying detritus out of a body.||Across the river the treeline is unbroken. You are deep in the rainforest now. The gigantic trees spread their branches more than a hundred feet from the ground here. At the river's edge mangroves reach far out into the water; bloated river buffalo shelter beneath their arching roots. It is hard going here. At every other step you sink into oozing mud. Twice you nearly lose your life in the oozing mud: once when a vine you were clinging to snaps, and again when a huge river buffalo erupts out of the water between the mangrove and rushes you. It storms through the water margin and crashes into the trees in hot pursuit. Soon the trees are too thick for it to follow and you trudge on, abandoning the river bank. Quite lost by now, you hope you can find a landmark to guide you.">

<ROOM STORY096
    (IN ROOMS)
    (DESC "096")
    (STORY TEXT096)
    (CONTINUE STORY131)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT097 "The chief shakes his head. \"My new realm will never be safe until I have destroyed every last tree in the forest. Valerian tells me so and his counsel has always been good in the past.\"||\"But the whole world needs the forest,\" you argue. \"Without the forest there would be no air to breathe. We will all die.\"||\"Valerian doesn't want to die any more than either you or I, I'll warrant. What nonsense is this you talk?\" He narrows his eyes, suddenly suspicious. \"Where was it we met? Was it the Reaver's Inn in Bessaraban? Remind me.\" He screws up his eyes in the effort of remembering a meeting that you know never took place.">
<CONSTANT CHOICES097 <LTABLE "pretend that you met in the Reaver's Inn in the far off city of Bessaraban" "make up an excuse and leave">>

<ROOM STORY097
    (IN ROOMS)
    (DESC "097")
    (STORY TEXT097)
    (CHOICES CHOICES097)
    (DESTINATIONS <LTABLE STORY204 STORY305>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT098 "The Lady of the Forest watches your departure sadly, but she does nothing to prevent you leaving. How can she be grieving at your loss when she hardly knows you? She must be mad. Nevertheless you quit her beautiful garden with regret and continue your quest for the Tree of Knowledge.||It will soon be Midsummer's day. Where will you search for the tree next?">
<CONSTANT CHOICES098 <LTABLE "head west" "east" "south-west">>

<ROOM STORY098
    (IN ROOMS)
    (DESC "098")
    (STORY STORY098)
    (CHOICES CHOICES098)
    (DESTINATIONS <LTABLE STORY043 STORY427 STORY079>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT099 "You pass several of the great Umbellifer bushes, so called because of their bell shape. You walk on between them, where only grass that has been cropped by deer grows, until you come to an archway that has been cut through the thorns to provide a way into the shadowy recesses of the immense bush.">
<CONSTANT CHOICES099 <LTABLE "go inside the bush" "hurry past with not so much as a backward glance">>

<ROOM STORY099
    (IN ROOMS)
    (DESC "099")
    (STORY TEXT099)
    (CHOICES CHOICES099)
    (DESTINATIONS <LTABLE STORY119 STORY127>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT100 "As you walk towards the guards you are horrified to see them spearing the animals that are fleeing the burning brush. The men throw the unfortunate beasts onto the fire beneath the great cauldron. The others laugh merrily as if they could think of no better sport than to wantonly slaughter helpless beasts.||You call a greeting above the hissing of the steam bellows that is rising and falling, driven by the metal machine. The guards stand up and fan out as if to surround you, without a word of command.||\"Search the southerner for weapons,\" shouts their captain.">
<CONSTANT CHOICES100 <LTABLE "surrender and let them search you" "try to fight your way out">>

<ROOM STORY100
    (IN ROOMS)
    (DESC "100")
    (STORY TEXT100)
    (CHOICES CHOICES100)
    (DESTINATIONS <LTABLE STORY151 STORY202>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT101 "Your spell of Bafflement crosses unseen the space that separates you and the King of the Elves, silently invading his mind. His eyes look at you, blankly uncomprehending, and the two false images that his magic created just flicker and die away. The king is powerless; he is far too confused to attempt a spell or even move from the spot. Unfortunately he is also too baffled to realize the time has come for him to submit to you and acknowledge you the winner of the duel.||Under the rules of a duel you can only use magic to subdue him so you let the Bafflement fade and prepare another spell.">
<CONSTANT CHOICES101 <LTABLE "cast Visceral Disruption" "Tower of will">>

<ROOM STORY101
    (IN ROOMS)
    (DESC "101")
    (STORY STORY101)
    (CHOICES CHOICES101)
    (DESTINATIONS <LTABLE STORY111 STORY071>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT102 "You call out the dragon's name. Its great head rears slowly above you and his glittering eyes bore into yours. His nostrils dilate as he sucks in a deep breath. Too late, you realize you were wrong about knowing the dragon's name. There is a terrible whooshing sound as the dragon's breath of acid and gas roars towards you. The torrent of gas and air rolls you across the ground and you are lucky to bang your head on a rock and spare yourself a more painful death. The forest is doomed.">

<ROOM STORY102
    (IN ROOMS)
    (DESC "102")
    (STORY TEXT102)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT103 "It was a mistake to enter the forest without a guide. There is no time to do anything as the Embracer sucks you down into the murky depths. You struggle desperately hard but, unable to breathe, your strength soon fails you and you drown in the clutches of this hideous creature.">

<ROOM STORY103
    (IN ROOMS)
    (DESC "103")
    (STORY TEXT103)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT104 "\"The men who have come to the forest say that when the trees have been felled the undergrowth should be burned to clear it for humans to live in. They say burning returns all the goodness in the plants to the soil so that crops can flourish. Do you agree with them?\" asks Elanor.">
<CONSTANT CHOICES104 <LTABLE "admit that you have no reason to disbelieve them" "say instead that the forest should be kept as it is for it makes the air that man breathes">>

<ROOM STORY104
    (IN ROOMS)
    (DESC "104")
    (STORY TEXT104)
    (CHOICES CHOICES104)
    (DESTINATIONS <LTABLE STORY051 STORY147>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT105 "\"So,\" hisses your mirror image, \"you would rather shatter your promise . . .\"||\"You witless sprite,\" you retort sharply, \"If I break the mirror right away, the enchantress will wake up. Be patient; I'll get around to it.\"||\"No!\" wails the voice from the glass. \"You're lying. You intend to use me just as she has -- but I'll foil that scheme. Wake, mistress, wake! A mortal prowls within your boudoir!\"">

<ROOM STORY105
    (IN ROOMS)
    (DESC "105")
    (STORY TEXT105)
    (CONTINUE STORY499)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT106 "\"Why is it bad to kill spiders?\" she asks.">
<CONSTANT CHOICES106 <LTABLE "say it is because all evil things as well as good things must be tolerated in the forest" "reason that without spiders to eat the birds would die, and without birds to eat berries there would be no young trees">>

<ROOM STORY106
    (IN ROOMS)
    (DESC "106")
    (STORY TEXT106)
    (CHOICES CHOICES106)
    (DESTINATIONS <LTABLE STORY051 STORY128>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT107 "\"I have watched you coming here in the mirror I keep in my secret bower. I think you have the makings of a hero,\" she says.||\"Did it amuse you to watch me struggle to find my way in the forest?\"||\"Not at all. I was hoping you would survive at least this far.\"||\"That doesn't sound very encouraging.\"||\"Only you can shape your own destiny. I think perhaps you have greatness within you.\"||\"If you have plans for me why didn't you bring me straight here from the inn in Burg?\"||\"The ways of the forest cannot all be taught. They must be experienced. And besides, I needed to know your mettle.\"||She smiles a smile that could mean anything from cruel amusement to genuine welcome; you are too confused by what she has said to judge the difference.||It feels slightly shaming to think that this woman has watched your most intimate moments in the forest. Still, you have done nothing to be ashamed of.">
<CONSTANT CHOICES107 <LTABLE "choose to go along with her" "leave if you are convinced she is mad">>

<ROOM STORY107
    (IN ROOMS)
    (DESC "107")
    (STORY TEXT107)
    (CHOICES CHOICES107)
    (DESTINATIONS <LTABLE STORY009 STORY098>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT108 "You stride to the fireside and turn so that the light of the flaming logs plays across your face. All eyes are on you, but you can't see well in the gloom. The two men who had been rubbing their hands at the fire sit down at the other end of the old hall.||\"We don't take kindly to strangers here. What brings you to Burg, southerner?\"||It seems to be the sinister man clocked in black who is talking.">
<CONSTANT CHOICES108 <LTABLE "tell him the truth, that you journey to the great Forest of Arden to seek the Tree of Knowledge" "say that you are a scout sent out from your city to explore far-off lands and bring news back to your masters" "use">>

<ROOM STORY108
    (IN ROOMS)
    (DESC "108")
    (STORY TEXT108)
    (CHOICES CHOICES108)
    (DESTINATIONS <LTABLE STORY124 STORY154 STORY188>)
    (REQUIREMENTS <LTABLE NONE NONE SKILL-STREETWISE>)
    (TYPES <LTABLE R-NONE R-NONE R-SKILL>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT109 "You call out loudly. \"I am a friend of Elanor, the Lady of the Forest. I come in search of the immortal elves.\"||You feel rather unheroic, calling out like this when you don't know whether anyone can hear you. But there is also the nasty feeling that you might be struck by an arrow at any moment.||You call out a second time and this time, to your relief, you are answered.">

<ROOM STORY109
    (IN ROOMS)
    (DESC "109")
    (STORY TEXT109)
    (CONTINUE STORY120)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT110 "You review the spells you can cast against the King of the Elves in the duel.||VANISH allows you to disappear and move unseen.  CHOKING FOG brings a cloud of poisonous gas. VSCERAL DISRUPTION causes crippling stomach cramps. SHIELD OF DEFENSE protects agains manifest magical attacks. BAFFLEMENT makes your foe unable to understand what is happening. VISIONS creates two false illusions of yourself. TOWER OF WILL subdues your enemy and makes him do your will.||The elven bard announces the beginning of the duel. You are shocked at the swiftness of elven king's magic. Before ou have even fully contemplated which spell to use, he cries a single word of power and vanishes. A moment later he reappears along with two exact copies of himself. You can't tell which is which because all three appear motionless. You must quickly decide which spell to use first.">
<CONSTANT CHOICES110 <LTABLE "cast Vanish" "Choking Fog" "Visceral Disruption or Bafflement" "Shield of Defense" "Visions" "Tower of Will">>

<ROOM STORY110
    (IN ROOMS)
    (DESC "110")
    (STORY TEXT110)
    (CHOICES CHOICES110)
    (DESTINATIONS <LTABLE STORY122 STORY143 STORY347 STORY326 STORY249 STORY174>)
    (TYPES <LTABLE R-NONE R-NONE R-NONE R-NONE R-NONE R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT111 "You mouth the strange words that set off Visceral Disruption. A spasm wracks the King of the Elves and he tries to stop himself clutching his stomach as the spell twists his guts.||You have never known anyone who could remain standing under the effects of this agonizing spell, but it is taking all of the Elf King's will. He cannot cast another spell.||\"Cancel the spell, mortal. I concede victory to your sorcery,\" the King of the Elves says from between clenched teeth.||Knowing how unpleasant the spell can be and out of compassion for the king, you quickly comply. You have won the duel.">

<ROOM STORY111
    (IN ROOMS)
    (DESC "111")
    (STORY TEXT111)
    (CONTINUE STORY263)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT112 "\"Do you think that the knowledge of the Tree of Life should be passed on to man so mankind can benefit from the tree's wisdom? Or are men too greedy and selfish to be trusted with this great wisdom?\" she asks.">
<CONSTANT CHOICES112 <LTABLE "reply that wise men rule well and that you hope to take the wisdom of the Tree of Life back" "say that the knowledge must be guarded as a secret treasure and not given to men at large because man cannot be trusted">>

<ROOM STORY112
    (IN ROOMS)
    (DESC "112")
    (STORY TEXT112)
    (CHOICES CHOICES112)
    (DESTINATIONS <LTABLE STORY104 STORY140>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT113 "For a moment your Bafflement spell seems to have had little effect: the statue's sword arm rises and falls like a mindless piston. Soon, however, the sword starts to miss its mark, flailing pointlessly through the air. There are cries of alarm from the Westermen, who then begin to fall silent as the Infernal Statue lurches a few steps away from the tree and teeters near the edge of the deep blue pool.||It lapses into inaction -- it would seem truly baffled. How will you followup with your success?">
<CONSTANT CHOICES113 <LTABLE "cast Visceral Disruption" "Choking Fog" "Tower of Will">>

<ROOM STORY113
    (IN ROOMS)
    (DESC "113")
    (STORY TEXT113)
    (CHOICES CHOICES113)
    (DESTINATIONS <LTABLE STORY362 STORY031 STORY207>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT114 "Your confident announcement fails to enthral the Elf King as you had hoped. Instead he only shakes his head slowly, the look in his eyes reflecting some inner emotion unknown to mortal men. Just as you open your mouth to try another guess, he comes striding rapidly forward to throw his cloak up in front of your eyes. There is no time to react before your vision is blotted out in a rustle of soft green fabric. A scent wafts to you, reminiscent of meadows and leafy lanes in summer.||Reaching up to pull aside the folds of the cloak, your fingers close only on a handful of fresh green leaves. You look around. The elves have vanished. You have no choice but to turn and trudge through the trees, calling out for them to return. But your pleas are unanswered except by the song of the birds and the murmuring of a distant brook.">

<ROOM STORY114
    (IN ROOMS)
    (DESC "114")
    (STORY TEXT114)
    (CONTINUE STORY078)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT115 "While you wait, quite still behind the chief's chair, you hear a visitor being announced. \"It is Valerian the Moon Druid, sire, he has important news. Shall we let him come in?\"||\"Aye, let him.\" The speech of the Westermen is guttural and uncouth-sounding but you can understand their dialect.||It is the man you first saw in the inn at Burg. He is still dressed in a black travelling cloak but the hood is thrown back to reveal his hatchet-like face and pointed black goatee beard. He bows before the chief, then wrinkles his nose and stares at thin air in your general direction.||\"I have driven off the tree bears, you will have no more trouble from them,\" he tells the chief. He sniffs again and moves his head from side to side while fixing his gaze just above your head, giving him a most comical air.||The chief spreads out the map of the forest and his advisers gather round, almost blocking your exit.">
<CONSTANT CHOICES115 <LTABLE "try to get away now" "wait to see what they may plan">>

<ROOM STORY115
    (IN ROOMS)
    (DESC "115")
    (STORY TEXT115)
    (CHOICES CHOICES115)
    (DESTINATIONS <LTABLE STORY029 STORY004>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT116 "You nimbly climb up on top of the dragon's head perching behind its glittering eyes. The monster reaches a claw up over its shoulder to flick you off onto the ground.">
<CONSTANT CHOICES116 <LTABLE "try to kill the dragon" "talk to it" "hope that you can dodge the claw">>

<ROOM STORY116
    (IN ROOMS)
    (DESC "116")
    (STORY TEXT116)
    (CHOICES CHOICES116)
    (DESTINATIONS <LTABLE STORY135 STORY178 STORY133>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT117 "It is a cold and blustery night. You look for another inn but there is none. The houses are shuttered and the doors are barred. You try knocking but all your attempts at seeking entry are ignored. The inhabitants really don't like strangers here.||A woman shouts from a top window, \"You'd best get outside the gates before they turn the dogs loose in the streets.\"||As she speaks you hear the baying of a pack of dogs from near the gate. You walk quickly through. The dog handlers seem to be sizing you up as quarry as they shut the gate behind you.||You pass a cold, damp night outside the town, awakening stiff and soaked through in the morning. You are only too glad to leave Burg behind you.">

<ROOM STORY117
    (IN ROOMS)
    (DESC "117")
    (STORY TEXT117)
    (CONTINUE STORY210)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT118 "There is a tingling pins-and-needles feeling as the sprite's magic takes effect.||\"Now do as you promised,\" urges the sprite in the mirror. \"Free me.\"">
<CONSTANT CHOICES118 <LTABLE "break the mirror" "not">>

<ROOM STORY118
    (IN ROOMS)
    (DESC "118")
    (STORY TEXT118)
    (CHOICES CHOICES118)
    (DESTINATIONS <LTABLE STORY418 STORY105>)
    (TYPES TWO-NONES)
    (PRECHOICE STORY118-GAINLIFE)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY118-GAINLIFE ()
    <CRLF>
    <HLIGHT ,H-BOLD>
    <COND (<EQUAL? ,LIFE-POINTS ,MAX-LIFE-POINTS>
        <SETG MAX-LIFE-POINTS <+ ,MAX-LIFE-POINTS 1>>
        <SETG LIFE-POINTS ,MAX-LIFE-POINTS>
        <HLIGHT ,H-BOLD>
        <TELL "You gain a permanent +1 life point.">
    )(ELSE
        <SETG LIFE-POINTS ,MAX-LIFE-POINTS>
        <TELL "You life points is restored.">
    )>
    <HLIGHT 0>
    <UPDATE-STATUS-LINE>
    <CRLF>
    <RETURN>>

<CONSTANT TEXT119 "The archway leads into a tunnel that has been cut through the thick branches and thorns of the bell-shaped bush. You walk on towards the great open space that surrounds the trunk of the bush.||Looking back, however, you cannot make out the archway at all, even though it should be directly behind you. You press on anyway until you hear a chirruping litte voice say, \"Welcome, sirray, 'tis a pretty place to spend the rest of your days, is it not?\"||A strange little man the size of a small capuchin monkey sits cross-legged on a giant toadstool. Even in the dim light you can see the fungus is liver-spotted and looks poisonous.||\"Come, share my provender,\" invites the little man as he breaks off a piece of the toadstool on which he is sitting. He offers it to you. \"Share my provender, there is nothing more helpful to a hero than the flesh of the Blood of Iron toadstool.\" The little imp proffers it to you with an elaborate bow.">
<CONSTANT CHOICES119 <LTABLE "take and eat the flesh" "try to kill the little man" "ask him to help you in your quest">>

<ROOM STORY119
    (IN ROOMS)
    (DESC "119")
    (STORY TEXT119)
    (CHOICES CHOICES119)
    (DESTINATIONS <LTABLE STORY138 STORY148 STORY158>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT120 "You are surrounded by a circle of elves, all of whom seem to have appeared as if by magic. They look solemn but not hostile. Their faces have the perfect beauty of unsullied youth but their green almond-shaped eyes are like windows onto the wisdom of the centuries. Their skin is flawless pale green with a silvery bloom like grape bloom. Their long straight hair is the colour of rich red wine. They seem not in the least surprised to see you.||You wait for them to say something but they seem in no hurry, so you tell men you are a friend of the forest and an enemy of the burners.">

<ROOM STORY120
    (IN ROOMS)
    (DESC "120")
    (STORY TEXT120)
    (CONTINUE STORY180)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT121 "Seeing your eyes measuring the left of the three images, the one you are looking at smiles imperturbably, but something tells you, you have guessed correctly.">
<CONSTANT CHOICES121 <LTABLE "cast Bafflement" "Visceral Disruption" "Tower of Will">>

<ROOM STORY121
    (IN ROOMS)
    (DESC "121")
    (STORY TEXT121)
    (CHOICES CHOICES121)
    (DESTINATIONS <LTABLE STORY101 STORY111 STORY091>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT122 "You cry a single word of power and vanish, then move slowly and silently in a circle to your right while you prepare another spell.||As you creep silently along, you notice to your dismay the faces of all the elves turned towards you. Several are grinning. The King of the Elves is looking straight at you as he mouths another incantation.||Your legs feel as if they have turned to jelly and you cannot stop yourself collapsing to the ground.||\"Submit, mortal, I have defeated you,\" cries the King of the Elves.">
<CONSTANT CHOICES122 <LTABLE "do as he requests" "try to fight on">>

<ROOM STORY122
    (IN ROOMS)
    (DESC "122")
    (STORY TEXT122)
    (CHOICES CHOICES122)
    (DESTINATIONS <LTABLE STORY255 STORY272>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT123 "The King of the Elves draws a green silk veil from his waist, holds it up and lets it fall from in front of his eyes.||\"See your peril, mortal, and despair.\"||His words ring out as though your skull was a vast hollow chamber and the elf was exhorting you from within it, his words rolling through your senses like ocean waves. As the veil falls it is as if scales had dropped from your eyes. You see the forest for what it is, a hostile place, inimical to man. Everything around you is united against your intrusion. The plants will snare you and tear you limb from liimb, with the slow strength of growth. The ants will eat you alive. Stinging insects will plague you and bears will maul you. You do indeed despair at the awful nature of your plight. Losing reason you flee in fear. As the veil falls lightly to the ground, so the terror passes and you stop.||\"You have stepped outside the circle, mortal, and forfeited the duel. I am the victor,\" says the king.||His magic made you break the rules and lose.">

<ROOM STORY123
    (IN ROOMS)
    (DESC "123")
    (STORY TEXT123)
    (CONTINUE STORY163)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT124 "\"It is my intention to search for the Tree of Knowledge in the Forest of Arden,\" you announce in a firm clear voice.||As your eyes become accustomed to the gloom you can begin to make out details of those in the room. The black-cowled man merely stares inscrutably. A woman, old and weather-beaten, in a grey robe, looks up at you with interest. The two who were at the fire stand up and walk over to you. The shorter one has a face that reminds you of a bull-mastiff. \"Why would you seek the Tree of Knowledge?\" he asks. \"What use it is to you, a southerner?\"||\"Fool, don't speak to him of the tree,\" interrupts the man in black. \"All must be left as it is, nothing changed. The knowledge of the tree is lost to men and it is better that way.\"||The woman speaks with a clear voice that sounds too young for her age. \"You would have it that way. You are not at one with the forest. Because the tree sees your evil heart, you seek to keep its knowledge and pervert it.\"||\"You dare to say I am no friend of the forest?\" The black cowled man surges to his feet and the cowl slips back to reveal a bald head, a hatchet-thin face with a long black goatee beard and eyes of flint.||\"You lost your way in the forest many years ago.\"||\"I didn't need you to find me, old woman. You only dare challenge me now because you think these simpple folk of Burg can offer you protection.\"||\"You know full well I am at my strongest in the forest, Valerian,\" says the woman. \"The beasts follow me. They sense your evil.\"||\"There is a new power astir in the forest,\" he retorts. \"It will sweep you and all your bestial followers aside like chaff in the wind.\"||\"There is no cause to fill the hearts of good people of Burg with dismay. I know of what you speak . . .\"||He sneers. \"Much good may the knowledge do you, old one. Haven't you heard the song of the wind? The time of man has come to the forest. All must change -- or pass away.\"||Valerian speaks the last words in such dire tones that three townsfolk at the nearby table hastily leave the inn. Valerian himself twitches his cloak around him and follows them out, pausing to give you a last look as though committing your face to memory.">
<CONSTANT CHOICES124 <LTABLE "take a room at the inn for the night" "talk to some of the inn's inhabitants: choose between the hunter and guide who are by the fire" "the woman in grey">>

<ROOM STORY124
    (IN ROOMS)
    (DESC "124")
    (STORY TEXT124)
    (CHOICES CHOICES124)
    (DESTINATIONS <LTABLE STORY333 STORY297 STORY181>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT125 "Your parting makes the dragon wrinkle up its nose and there is a roar as it starts to sneeze. Its breath is a mixture of acide and poisonous gas. It hits you like a wave of blistering, burning pain. There is no surviving the brath of an ancient dragon.">

<ROOM STORY125
    (IN ROOMS)
    (DESC "125")
    (STORY TEXT125)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT126 "You shake your head. \"Better that I retain it for now. If we are to be allies, what better token that I fight for the elves than that their king has entrusted me with his royal symbol?\"||He knows you have guessed him aright. If you had returned the ring, the elves would no doubt have found some way to back out of their bargain. Now they are bound to fight beside you, and your carefully chosen words allow the king to accede to this without losing his dignity. His eyes show a flicker of grudging admiration as he says, \"Well spoken, mortal. Now let us feast and discuss our plans.\"">

<ROOM STORY126
    (IN ROOMS)
    (DESC "126")
    (STORY TEXT126)
    (CONTINUE STORY232)
    (ITEM EMERALD-RING)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT127 "A chameleon on a tree changes colour to pale yellow as you walk past it. A beautiful silKen-winged butterfly, black and scarlet, settles on your shoulder and spreads its wings in the sun. You are beginning to feel harmony with the forest at last. You journey on, hopeful and determined.">

<ROOM STORY127
    (IN ROOMS)
    (DESC "127")
    (STORY TEXT127)
    (CONTINUE STORY277)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT128 "\"Abide with me for a while.\" Elanor requests. \"I can teach you something about the forest and its ways. And I can put you to the test again, to see if you are worthy of being hailed the saviour of the forest.\"||You spend three days in the tree-house and the meadow-garden talking with Elanor about the forest she loves. You had never realized how much all living things are linked, each depending on the others for survival.||The forest, you learn is teeming with an abundant wealth of life. All things are tolerated in the forest, which is neither a good nor an evil region, as long as they do not threaten the balance of nature. After you have partaken of a delicious repast of mushrooms and loganberries on the third day, Elanor starts to question you again, to see if you have learned anything.">

<ROOM STORY128
    (IN ROOMS)
    (DESC "128")
    (STORY TEXT128)
    (CONTINUE STORY112)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT129 "This time you hide beneath the roots of a fallen pine tree. You try to stay calm to still the pounding of your heart that makes the blood rush loudly in your ears. This time you think you may have heard cruel sounding laughter, now off to one side, now behind you, and now off to another side. You see nothing so at last you decide to journey on.||You have walked but half a mile further when you stumble against a branch. The deep green of the forest by day is giving way to the blackest dark of the forest by night. You will never find the elves on Midsummer's Day now. You will have to find a place to rest and hope the elves will still receive you cordially at a later date.">

<ROOM STORY129
    (IN ROOMS)
    (DESC "129")
    (STORY TEXT129)
    (CONTINUE STORY139)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT130 "\"The Tree of Knowledge grows alone out of a blue pool in the very centre of the forest. It is an ancient Geenbark tree with gold and silver leaves which are said never to fall.\"||\"Have you seen it?\" you ask Renard.||\"Once from a long way off. But I didn't dare talk to it.\"||\"It can talk? Is there anyone her ein Burg who has spoken with the tree?\" you ask, glancing at the other travellers in the inn.||\"No, no. The folk here are simple enough. Ask them about the tree and they'll likely make something up just to satisfy your asking. Now look, why don't you put up for the night at my house and we can set out at first light?\"||Renard seem skeen to take you away from the inn. Looking around you notice the old woman in grey seem sto be taking an interest in you.">
<CONSTANT CHOICES130 <LTABLE "go with Renard to his house" "stay and talk to the other travellers in the inn a while longer">>

<ROOM STORY130
    (IN ROOMS)
    (DESC "130")
    (STORY TEXT130)
    (CHOICES CHOICES130)
    (DESTINATIONS <LTABLE STORY224 STORY176>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT131 "The path twists and turns, winding down through dense undergrowth overhung by barrel-like Gwelph trees that are festooned with lianas. You try to fix the shape of each tree in your mind so you will know if you have passed one before. The thin crooked branches that sprout from the top of the barrel-like boles remind you of terrified old men with their hair standing on end. To your dismay the path ends in a little clearing chocked with dead leaves with two paths leading off in different directions. Each is lined with thoRn bushes that have grown to the height of a man and are covered in inch-long purple barbs which ooze an orange fluid. The thorns would break off in your flesh if you brushed against them.">
<CONSTANT CHOICES131 <LTABLE "take the left-hand path" "take the right-hand path" "despair of ever finding a way out of the forest" "mark one of the great Gwelph trees by scraping away a patch of bark">>

<ROOM STORY131
    (IN ROOMS)
    (DESC "131")
    (STORY TEXT131)
    (CHOICES CHOICES131)
    (DESTINATIONS <LTABLE STORY196 STORY211 STORY156 STORY177>)
    (TYPES FOUR-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT132 "You have directed your spell against one of the king's images, not against the king himself. The image you have assailed disappears with a startling pop, but the elf has used the time he has gained to prepare another spell.||The King of the Elves draws a green silk veil from his waist and lets it fall from in front of his eyes.||\"See your peril, mortal, and despair.\"||His words ring out as though your skull was a vast hollow chamber and the elf was exhorting you from within it, his words echoing through your senses. As the veil fallS it is as if scales had dropped from your eyes. You see the forest for what it is, a hostile place, inimical to man. Everything around you is united against your intrusion. The plants will snare you and tear you limb from limb with the slow strength of their growth. The ants will eat you alive. Stinging insects will plague you and bears will maul you. You do indeed despair at the awful nature of your plight.||Losing reason you flee in fear. As the veil falls lightly to the ground, so the terror passes and you stop.||\"You have stepped outside the circle, mortal, and forfeited the duel. I am the victor,\" says the king.||His magic made you break the rules and lose.">

<ROOM STORY132
    (IN ROOMS)
    (DESC "132")
    (STORY TEXT132)
    (CONTINUE STORY163)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT133 "The great claw sweeps you clean off the monster's head. The only way to dodge would have been to jump to your death in any case. You fall stunned on the ground and the dragon pins you to the earth beneath a massive claw. You look from the green scaled claw to the smouldering red eyes thirty feet above. It thinks you were trying to kill it. The dragon opens its jaws wide and its stomach convulses. A second later a gout of poisonous gas and acid hits you like a wave. There is no surviving the breath of an ancient green dragon.">

<ROOM STORY133
    (IN ROOMS)
    (DESC "133")
    (STORY TEXT133)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT134 "Watching from the edge of the trees you see a man who bears an uncanny resemblance to the girl in the inn at Burg. He must be her father.">
<CONSTANT CHOICES134 <LTABLE "free him from the clutches of the Westermen" "be content and abandon him to their tender mercies">>

<ROOM STORY134
    (IN ROOMS)
    (DESC "134")
    (STORY TEXT134)
    (CHOICES CHOICES134)
    (DESTINATIONS <LTABLE STORY264 STORY279>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT135 "You are too slow. The great claw sweeps you clean off the monster's head. You fall stunned to the ground; the dragon pins you beneath the other massive claw. You look from the huge green scaled claw to the smouldering red eyes thirty feet above. The dragon opens its jaws wide and its stomach convulses. A second later a gout of poisonous gas and acid hit you like a wave. There is no surviving the breath of an ancient green dragon.">

<ROOM STORY135
    (IN ROOMS)
    (DESC "135")
    (STORY TEXT135)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT136 "Your knowledge of the wilderness and the complicated web of links between all the living things in the forest makes this an easy question to answer.||\"Without spiders to eat, the birds would die and without birds to eat berries and spread seeds there would be no young trees,\" you say confidently. \"Without young trees to replace the old fallen hulks there would be no forests.\"">

<ROOM STORY136
    (IN ROOMS)
    (DESC "136")
    (STORY TEXT136)
    (CONTINUE STORY128)
    (FLAGS LIGHTBIT)>

<CONSTANT CHOICES137 <LTABLE "challenge the Elf King to a battle of wits" "propose a contest to prove the better bowman" "hesitate and let the elves themselves choose the terms of the duel">>

<ROOM STORY137
    (IN ROOMS)
    (DESC "137")
    (CHOICES CHOICES137)
    (DESTINATIONS <LTABLE STORY058 STORY159 STORY018>)
    (REQUIREMENTS <LTABLE SKILL-CUNNING SKILL-ARCHERY NONE>)
    (TYPES <LTABLE R-SKILL R-SKILL R-NONE>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT138 "The toadstool is a dull red colour, spotted with purple. Underneath the soft gills are mauve. You ask nevously whether it is poisonous.||\"No, no, never, not poisonous, my dear, Oh no! The Kwerrel eats it every day.\"||It tastes surprisingly good; it almost melts in your mouth.||Quite soon, however, you begin to feel sleepy. You walk a few steps further then sit down with your back to the central trunk of the giant bush. Feeling warm, snug and content you fall into a deep sleep.">

<ROOM STORY138
    (IN ROOMS)
    (DESC "138")
    (STORY TEXT138)
    (CONTINUE STORY189)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT139 "The next day you awake feeling uneasy and begin your journey once more. The feeling of being watched soon returns. There seems to be no point in hiding; there might not be anything there. You call out that you have come to search for the immortal elves.||A soft high voice, but a cold voice none the less, speaks with a total lack of emotion. \"It is not the day to seek a meeting with the elves.\"||You spin round to find the source of the words. There is the rushing whine of an arrow and a stabbing pain between your shoulder-blades.||The force of the shot spins you round and you see your killer: a tall, proud elf, standing braced with feet apart between two great Greenbark trees. He lets his bow fall to his side in a gesture of merciless contempt.||The arrow has pierced your lung and you begin to drown in your own blood. The elf looks on without pity as you die.">

<ROOM STORY139
    (IN ROOMS)
    (DESC "139")
    (STORY TEXT139)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT140 "\"You pass the test. I know you to be true of heart. You care about living things. You are the saviour of the forest. I will do all in my power to aid you, but you will need the elves on your side. They are the real masters of the forest.\"||Elanor fills two horn cups of elderflower nectar and offers you one. Taking the drink, you raise the cup in thanks before putting it to your lips. The nectar is marvellously refreshing, sweet but not cloying to the taste.||\"The Westermen have cut great swathes through the forest. They are settling the land, but without the trees the soil will be carried away by the wind and this region will become a terrible desert. These men don't know what they are doing, and they care nothing for life. You must stop them.\"||\"How am I to stop them?\" you ask. \"How strong are they?\"||\"Tens of thousands. They came from the western plains like columns of ants and devoured everything in their path.\"">

<ROOM STORY140
    (IN ROOMS)
    (DESC "140")
    (STORY TEXT140)
    (CONTINUE STORY152)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT141 "The red liquid tastes vile, but unlike medicine it doesn't seem to to anything to you. You start to run as the swarm of bees settles around your head, but you have left it too late. Death from a hundred bee stings is not a pleasant way to leave the world. Your neck swells until your windpipe closes right up, and slowly but surely you choke to death. You bitterly rue your folly in upsetting Elanor, the Lady of the Forest, and you have paid the price.">

<ROOM STORY141
    (IN ROOMS)
    (DESC "141")
    (STORY TEXT141)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT142 "This time your rush makes Gathkeri stumble back over a hummock and your lunge catches him. You start to wrestle, trying to throw him to the ground.">
<CONSTANT CHOICES142 <LTABLE "try to throttle your opponent for your next manouvre" "try to throw him into the ground so that you land on top of him">>

<ROOM STORY142
    (IN ROOMS)
    (DESC "142")
    (STORY TEXT142)
    (CHOICES CHOICES142)
    (DESTINATIONS <LTABLE STORY435 STORY425>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT143 "Throwing your arms wide to embrace the wind and blowing mightily as if playing a trumpet you cast the might spell Choking Fog. There is a hiss and puff of green smoke that appears in front of appears in front of the three images of your foe, one of which you know to be real.">

<ROOM STORY143
    (IN ROOMS)
    (DESC "143")
    (STORY TEXT143)
    (PRECHOICE STORY143-PRECHOICE)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY143-PRECHOICE ()
    <COND (,STORY033-DECISION-FLAG
        <SETG HERE ,STORY294>
    )(ELSE
        <SETG HERE ,STORY285>
    )>
    <SETG CONTINUE-TO-CHOICES F>
    <PRESS-A-KEY>
    <RETURN>>

<CONSTANT TEXT144 "You back off and reach a rock behind which you can take cover.||The Infernal Statute recovers its equilibrium and hacks into the trunk of the Tree of Life once more. The sword bites deep and one of the tree's great branches cracks and falls to the ground, killing and maiming more than twenty of its assailants. At the next sword blow another branch cracks and falls, and those not dead or trapped fall back as the machine completes its job of destruction.||You screw up your courage and rush once more against the machine but you are too late. One last great blow splits the trunk in the middle and the tree is dead. The destruction of the Tree of Life shatters your hopes. Utterly dejected you do not resist as the Westermen take you prisoner. The only certainty about the future is that you will be a slave of the forces that you should have defeated.">

<ROOM STORY144
    (IN ROOMS)
    (DESC "144")
    (STORY TEXT144)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT145 "\"There's Marek the Hunter there.\" He points to the stocky man with a face like a bull-mastiff, drinking beer by the kitchen door. \"He's a good enough man if it's simple hunting you're after.\" Renard looks at you as if you must be after something more.||\"Then there's old Oakmother there, lives in the forest. She says she comes to Burg just to remind herself once in a while that she is a human being. She's a strange old cove.\" He points to a weather-beaten old woman in a grey robe. \"She won't eat meat. Says her friends the animals will desert her if she does. Says they'll smell it on her skin.\" Renard shakes his head pityingly.||\"And who is the man in black?\" you whisper.||\"I am Valerian and I have the ears of a bat, the eyes of an owl and the sting of a viper.\" The main in black gets to his feet and approaches.||Renard slinks away to join Marek the Hunter.">

<ROOM STORY145
    (IN ROOMS)
    (DESC "145")
    (STORY TEXT145)
    (CONTINUE STORY252)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT146 "The chief looks at you as though scales have fallen from his eyes. \"Miserable trickster . . . Hmm, you look strong and fit, a fine log-puller you'll make.\"||Valerian takes away your wand, and the guards strip you of your possessions. Without even asking who you are or where you have come from they chain you to a yoke beside another slave.||You begin a life of back-breaking work, pulling tree trunks from the fellers to the sawyers for week after week, year after year. Your pitiful existence is dominated by thoughts of how you might make a desperate escape before the toil kills you.">

<ROOM STORY146
    (IN ROOMS)
    (DESC "146")
    (STORY TEXT146)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT147 "\"Hunters come to the forest from Burg, Dale and the few villages near the forest's edge. They come to kill and then to eat and to find furs to wear. Should I stop hem coming to the forest? It lies within my power.\"">
<CONSTANT CHOICES147 <LTABLE "reply that the hunters should be stopped" "reply that hunters are so few that it cannot harm the forest">>

<ROOM STORY147
    (IN ROOMS)
    (DESC "147")
    (STORY TEXT147)
    (CHOICES CHOICES147)
    (DESTINATIONS <LTABLE STORY051 STORY140>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT148 "As soon as the idea of killing the impish little man forms in your head, he bounds down from the toadstool.||\"It's mischief you're planning, is it? May your bones rot to feed the Umbellifer bush. I leave you its prisoner.\"||With that he rushes to the central trunk of the giant bush and scrambles up just as if he was a monkey, writhing sinously past the wicked barbed thorns. You could never follow such a difficult route. The little imp is soon lost to sight and you start to look for a way out of the bush.">

<ROOM STORY148
    (IN ROOMS)
    (DESC "148")
    (STORY TEXT148)
    (CONTINUE STORY432)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT149 "You have directed your spell against one of the king's images, not against the king himself. The image you have assailed disappears with a startling pop but the elf has used this time to prepare another spell.||The King of the Elves draws a green silk veil from his waist and lets it fall from in front of his eyes.||\"See your peril, mortal, and despair.\"||His words ring out as though your skull was a vast hollow chamber and the elf was exhorting you from within it, his words echoing through your senses. As the veil falls it is as if scales had dropped from your eyes. You see the forest for what it is, a hostile place, inimical to man. Everything around you is united against your intrusion. The plants will snare you and tear you limb from limb with the slow strength of their growth. The ants will eat you alive. Stinging insects will plague you and bears will maul you. You do indeed despair at the awful nature of your plight.||Losing reason you flee in fear. As the veil falls lightly to the ground, so the terror passes and you stop.||\"You have stepped outside the circle, mortal, and forfeited the duel. I am the victor,\" declares the king.||His magic has made you break the rules. You have lost.">

<ROOM STORY149
    (IN ROOMS)
    (DESC "149")
    (STORY TEXT149)
    (CONTINUE STORY163)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT150 "You feign nonchalance as you walk on between the beautiful Greenbark trees, which every now and then let a golden leaf fall on your brow. Though you have been hit by several leaves you never see one falling. It is as if the gargantuan trees, with their trunks as wide as towers, have been shaken slightly by your footsteps.||A little way ahead there is a clearning from which you can hear the crackle of fire and see the orange flickering of flame. The sun must have set fire to the dried grass. Advancing closer, you see a chipmunk chittering in panic inside the closing ring of flames. A solid wall of fire surrounds the desperate little animal, a fire so strong that it would undoubtedly burn you horribly.">
<CONSTANT CHOICES150 <LTABLE "brave the flames to save the chipmunk" "keep out of the clearing on the grounds that you will make an easy target thre">>

<ROOM STORY150
    (IN ROOMS)
    (DESC "150")
    (STORY TEXT150)
    (CHOICES CHOICES150)
    (DESTINATIONS <LTABLE STORY160 STORY170>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT151 "You surrender yourself up to the Westermen guards and are taken before a man who is clearly their chief.||The Chief of the Westermen is a balding corpulent man whose eyes seem to gleam with greed. He appraises your worth in a quick glance. \"Hmm, you look -- strong and fit -- doubtless you'll make a find log-puller.\"||Without even asking who you are or where you have come from, the Westermen chain you to a yoke beside a man who reminds you of the girl in the inn at Burg. It must be her father.">
<CONSTANT TEXT151-DEATH "You begin a liffe of back-breaking work, pulling tree trunks from the fellers to the sawyers for week after week, year after year. Your pitiful existence is dominated by thoughts of how you might make a desperate escape before the toil kills you. There is no escape. You live only to see the utter destruction of the Forest of Arden.">

<ROOM STORY151
    (IN ROOMS)
    (DESC "151")
    (STORY TEXT151)
    (PRECHOICE STORY151-PRECHOICE)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY151-PRECHOICE ()
    <COND (<IN? ,SKILL-SPELLS ,SKILLS>
        <PUTP ,STORY151 ,P?DEATH F>
        <SETG CONTINUE-TO-CHOICES F>
        <SETG HERE ,STORY229>
        <PRESS-A-KEY>
    )(ELSE
        <CRLF>
        <TELL TEXT151-DEATH>
        <CRLF>
    )>>

<CONSTANT TEXT152 "\"How am I to stop them? I am a stranger here in the forest.\"||\"Make the elves fight them. Kill the Westermen's leader. Wake the mighty dragon and send him forth to destroy them. If the forest perishes the whole world will die.\"||\"Which of these three should I do?\" you ask. \"Or it is not as simple as that, and I must do two or even all three of these things?\"||\"I do not know.\"||\"Can't you talk to the elves?\"||\"The elves will talk to men only on Midsummer's Day. On that day, you must find them and convince them to help you save the forest. I can never talk with elvenkind except on Midsummer's Day.\"||There are so many questions you would like to ask Elanor, but the elderflower nectar seems to be going to your head and you feel too drowsy to continue.||\"Sleep now, and awake a here.\"||As Elanor says the word sleep, your eyes shut and you sink in deep slumber.">

<ROOM STORY152
    (IN ROOMS)
    (DESC "152")
    (STORY TEXT152)
    (CONTINUE STORY229)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT153 "Renard thanks you for the six pieces of gold. \"It's not that I'm a coward, you understand. It's just that nobody in their right mind would brave the Bonehill.||You awake at dawn in time to glimpse Renard's disappearing back. It seems he doesn't want to stay a moment longer than he has to. You slept soundly and feel invigorated and confident as you begin to climb the slop away from the Sirion river.">

<ROOM STORY153
    (IN ROOMS)
    (DESC "153")
    (STORY TEXT153)
    (CONTINUE STORY237)
    (COST 6)
    (PRECHOICE STORY153-GAINLIFE)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY153-GAINLIFE ()
    <COND (<NOT <EQUAL? ,LIFE-POINTS ,MAX-LIFE-POINTS>>
        <CRLF>
        <HLIGHT ,H-BOLD>
        <TELL "You regain 2 life points.">
        <HLIGHT 0>
        <SETG LIFE-POINTS <+ ,LIFE-POINTS 2>>
        <COND (<G? ,LIFE-POINTS ,MAX-LIFE-POINTS> <SETG LIFE-POINTS ,MAX-LIFE-POINTS>)>
        <UPDATE-STATUS-LINE>
        <CRLF>
    )>>

<CONSTANT TEXT154 "\"Then tell your masters that Burg is a broken-down little hamlet soon to be swamped by the forest. Go and tell them there is nothing for them here.\"||The man in black steps forward. You can see a hatchet-shaped face inside the cowl of his robe and a pointed black goatee beard. He is flanked by the two who were by the fire.||\"We don't take to foreigners. You better leave Burg before we set the dogs on you.\"||It seems they think you are a spy sent out to find rich towns to pillage and despoil. You decide to leae while you can still walk.">

<ROOM STORY154
    (IN ROOMS)
    (DESC "154")
    (STORY TEXT154)
    (CONSTINUE STORY117)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT155 "You grab the phial and gulp down the cloudy blue fluid. The owl, perched on a tree, watches as unblinking as ever.||\"You have just drunk the mulch of the fire lizard's gizzard. You have not long to live.\"||The owl is right. Your throat goes into spasm as the poison starts to work and soon you cannot breathe. You fall to the ground writhing in agony, but it is not long before unconsciousness brings merciful release from the pain of the poison.">

<ROOM STORY155
    (IN ROOMS)
    (DESC "155")
    (STORY TEXT155)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT156 "Crushed by despair you realize you will never find your way out of the forest. There is nothing you can eat here -- everything tastes og poison, even the dead leaves. You try eating some of the earwigs in the leaf litter but their blood burns your mouth like acid.||Beyond caring, you push your way into the undergrowth, heedless of the purple thorns that rip your flesh. The bushes are not as thick as you believed. You crash through into a dark avenue between tall slender trees growing so close together you cannot force your way between their trunks. Resigned to your fate you walk on down the avenue for what seems an age.||You start to pass bodies lying where they have fallen, one at a time, and then a forlorn-looking group, huddled together. Exhausted and starving like the others before, you give up hope and lie down to die.">

<ROOM STORY156
    (IN ROOMS)
    (DESC "156")
    (STORY TEXT156)
    (EVENTS STORY156-EVENTS)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROUTINE STORY156-EVENTS ()
    <COND (<IN? ,SKILL-WILDERNESS-LORE ,SKILLS> <RETURN ,STORY251>)>
    <RETURN ,STORY156>>

<CONSTANT TEXT157 "Squirming quickly round to the statue's back you work at the screws. Two come free and the head starts to tilt. With one great forearm smash you knock it off and the Infernal Statue lurches back from the Tree of Life. Inside the machine is a small man who cannot defend himself. You rain blows down on his head and he slumps forward, knocking the strange levers inside the machine and sending it striding towards the deep blue pool.||It totters on the brink of the pool and you leap clear just as it keels over into the water. There is a rush of steam like a geyser, followed by an explosion underwater as the machine tears itself apart. The Westermen cry out in alarm and begin to retreat, harried by the arrows of the elves.">

<ROOM STORY157
    (IN ROOMS)
    (DESC "157")
    (STORY TEXT157)
    (CONTINUE STORY500)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT158 "\"You want my help, what is in it fore me then? How will you pay your side of the bargain?\"">
<CONSTANT CHOICES158 <LTABLE "offer the little imp some gold" "beg him to help you for the sake of the forest and all who dwell there" "offer him the Lady of the Forest's emerald ring if you have it" "offer him a magic potion if you are carrying one">>

<ROOM STORY158
    (IN ROOMS)
    (DESC "158")
    (STORY TEXT158)
    (CHOICES CHOICES158)
    (DESTINATIONS <LTABLE STORY214 STORY225 STORY236 STORY243>)
    (REQUIREMENTS <LTABLE 10 NONE EMERALD-RING-ELANOR MAGIC-POTION>)
    (TYPES <LTABLE R-GOLD R-NONE R-ITEM R-ITEM>)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT159 "A slender elf with moon-coloured hair steps forward to answer his monarch's summons. He carries a bow of silver-chased ivory, and the fletching of the arrows in his quiver is purest white. \"Your opponent will be Huldranas,\" the Elf King tells you. He points to a tall tree. \"That branch will be the target.\"||You look where he is pointing, then glance back at him. \"Which branch?\"||\"The one where the orchid grows.\"||You look back. You had not noticed before the flower blazing like a pale jewel against the black bark of the tree. Huldranas gestures for you to take the first shot. You nock on an arrow and send it sailing up towards the branch. It strikes wide of the orchid, but it was only  intended as a ranging shot. At least now you have a good sense of the allowance you need to make for height and wind speed.||Huldranas' arrow flashes from his bow. It impales one of the petals of the orchid. He turns to you with a casual look that betrays neither arrogance not tension. Again without a word, he gestures for you to shoot.||As you sight along your arrow, you consider what to do.">
<CONSTANT CHOICES159 <LTABLE "go for a cautious shot, since Huldranas' first arrow might have been lucky" "attempt a shot slightly better than his, perhaps striking the orchid in its centre" "try an extremely difficult but impressive shot, such as shooting through the thin twig at the end of the branch">>

<ROOM STORY159
    (IN ROOMS)
    (DESC "159")
    (STORY TEXT159)
    (CHOICES CHOICES159)
    (DESTINATIONS <LTABLE STORY320 STORY469 STORY276>)
    (TYPES THREE-NONES)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT160 "As soon as you make the jump to clear the ring of flame, the fire vanishes without even a trace of smoke. The chipmunk too has vanished. Instead you are surrounded by a circle of elves who have appeared as if by magic.||The elves look solemn but not hostile. Their faces have the perfect beauty of unsullied youth, but their green almond eyes are like windows that open to the wisdom of the centuries. Their skin is flawless pale green with a silvery dusting like grape bloom. Their long straight hair is the colour of rich red wine.||They seem not in the least surprised to see you. You wait for them to say something but they seem in no hurry, so you tell them you are a friend of the forest and an enemy of the burners.">

<ROOM STORY160
    (IN ROOMS)
    (DESC "160")
    (STORY TEXT160)
    (CONTINUE STORY180)
    (FLAGS LIGHTBIT)>

<ROOM STORY161
    (IN ROOMS)
    (DESC "161")
    (FLAGS LIGHTBIT)>

<ROOM STORY162
    (IN ROOMS)
    (DESC "162")
    (FLAGS LIGHTBIT)>

<ROOM STORY163
    (IN ROOMS)
    (DESC "163")
    (FLAGS LIGHTBIT)>

<ROOM STORY164
    (IN ROOMS)
    (DESC "164")
    (FLAGS LIGHTBIT)>

<ROOM STORY165
    (IN ROOMS)
    (DESC "165")
    (FLAGS LIGHTBIT)>

<ROOM STORY166
    (IN ROOMS)
    (DESC "166")
    (FLAGS LIGHTBIT)>

<ROOM STORY167
    (IN ROOMS)
    (DESC "167")
    (FLAGS LIGHTBIT)>

<ROOM STORY168
    (IN ROOMS)
    (DESC "168")
    (FLAGS LIGHTBIT)>

<ROOM STORY169
    (IN ROOMS)
    (DESC "169")
    (FLAGS LIGHTBIT)>

<ROOM STORY170
    (IN ROOMS)
    (DESC "170")
    (FLAGS LIGHTBIT)>

<ROOM STORY171
    (IN ROOMS)
    (DESC "171")
    (FLAGS LIGHTBIT)>

<ROOM STORY172
    (IN ROOMS)
    (DESC "172")
    (FLAGS LIGHTBIT)>

<ROOM STORY173
    (IN ROOMS)
    (DESC "173")
    (FLAGS LIGHTBIT)>

<ROOM STORY174
    (IN ROOMS)
    (DESC "174")
    (FLAGS LIGHTBIT)>

<ROOM STORY175
    (IN ROOMS)
    (DESC "175")
    (FLAGS LIGHTBIT)>

<ROOM STORY176
    (IN ROOMS)
    (DESC "176")
    (FLAGS LIGHTBIT)>

<ROOM STORY177
    (IN ROOMS)
    (DESC "177")
    (FLAGS LIGHTBIT)>

<ROOM STORY178
    (IN ROOMS)
    (DESC "178")
    (FLAGS LIGHTBIT)>

<ROOM STORY179
    (IN ROOMS)
    (DESC "179")
    (FLAGS LIGHTBIT)>

<ROOM STORY180
    (IN ROOMS)
    (DESC "180")
    (FLAGS LIGHTBIT)>

<ROOM STORY181
    (IN ROOMS)
    (DESC "181")
    (FLAGS LIGHTBIT)>

<ROOM STORY182
    (IN ROOMS)
    (DESC "182")
    (FLAGS LIGHTBIT)>

<ROOM STORY183
    (IN ROOMS)
    (DESC "183")
    (FLAGS LIGHTBIT)>

<ROOM STORY184
    (IN ROOMS)
    (DESC "184")
    (FLAGS LIGHTBIT)>

<ROOM STORY185
    (IN ROOMS)
    (DESC "185")
    (FLAGS LIGHTBIT)>

<ROOM STORY186
    (IN ROOMS)
    (DESC "186")
    (FLAGS LIGHTBIT)>

<ROOM STORY187
    (IN ROOMS)
    (DESC "187")
    (FLAGS LIGHTBIT)>

<ROOM STORY188
    (IN ROOMS)
    (DESC "188")
    (FLAGS LIGHTBIT)>

<ROOM STORY189
    (IN ROOMS)
    (DESC "189")
    (FLAGS LIGHTBIT)>

<ROOM STORY190
    (IN ROOMS)
    (DESC "190")
    (FLAGS LIGHTBIT)>

<ROOM STORY191
    (IN ROOMS)
    (DESC "191")
    (FLAGS LIGHTBIT)>

<ROOM STORY192
    (IN ROOMS)
    (DESC "192")
    (FLAGS LIGHTBIT)>

<ROOM STORY193
    (IN ROOMS)
    (DESC "193")
    (FLAGS LIGHTBIT)>

<ROOM STORY194
    (IN ROOMS)
    (DESC "194")
    (FLAGS LIGHTBIT)>

<ROOM STORY195
    (IN ROOMS)
    (DESC "195")
    (FLAGS LIGHTBIT)>

<ROOM STORY196
    (IN ROOMS)
    (DESC "196")
    (FLAGS LIGHTBIT)>

<ROOM STORY197
    (IN ROOMS)
    (DESC "197")
    (FLAGS LIGHTBIT)>

<ROOM STORY198
    (IN ROOMS)
    (DESC "198")
    (FLAGS LIGHTBIT)>

<ROOM STORY199
    (IN ROOMS)
    (DESC "199")
    (FLAGS LIGHTBIT)>

<ROOM STORY200
    (IN ROOMS)
    (DESC "200")
    (FLAGS LIGHTBIT)>

<ROOM STORY201
    (IN ROOMS)
    (DESC "201")
    (FLAGS LIGHTBIT)>

<ROOM STORY202
    (IN ROOMS)
    (DESC "202")
    (FLAGS LIGHTBIT)>

<ROOM STORY203
    (IN ROOMS)
    (DESC "203")
    (FLAGS LIGHTBIT)>

<ROOM STORY204
    (IN ROOMS)
    (DESC "204")
    (FLAGS LIGHTBIT)>

<ROOM STORY205
    (IN ROOMS)
    (DESC "205")
    (FLAGS LIGHTBIT)>

<ROOM STORY206
    (IN ROOMS)
    (DESC "206")
    (FLAGS LIGHTBIT)>

<ROOM STORY207
    (IN ROOMS)
    (DESC "207")
    (FLAGS LIGHTBIT)>

<ROOM STORY208
    (IN ROOMS)
    (DESC "208")
    (FLAGS LIGHTBIT)>

<ROOM STORY209
    (IN ROOMS)
    (DESC "209")
    (FLAGS LIGHTBIT)>

<ROOM STORY210
    (IN ROOMS)
    (DESC "210")
    (FLAGS LIGHTBIT)>

<ROOM STORY211
    (IN ROOMS)
    (DESC "211")
    (FLAGS LIGHTBIT)>

<ROOM STORY212
    (IN ROOMS)
    (DESC "212")
    (FLAGS LIGHTBIT)>

<ROOM STORY213
    (IN ROOMS)
    (DESC "213")
    (FLAGS LIGHTBIT)>

<ROOM STORY214
    (IN ROOMS)
    (DESC "214")
    (FLAGS LIGHTBIT)>

<ROOM STORY215
    (IN ROOMS)
    (DESC "215")
    (FLAGS LIGHTBIT)>

<ROOM STORY216
    (IN ROOMS)
    (DESC "216")
    (FLAGS LIGHTBIT)>

<ROOM STORY217
    (IN ROOMS)
    (DESC "217")
    (FLAGS LIGHTBIT)>

<ROOM STORY218
    (IN ROOMS)
    (DESC "218")
    (FLAGS LIGHTBIT)>

<ROOM STORY219
    (IN ROOMS)
    (DESC "219")
    (FLAGS LIGHTBIT)>

<ROOM STORY220
    (IN ROOMS)
    (DESC "220")
    (FLAGS LIGHTBIT)>

<ROOM STORY221
    (IN ROOMS)
    (DESC "221")
    (FLAGS LIGHTBIT)>

<ROOM STORY222
    (IN ROOMS)
    (DESC "222")
    (FLAGS LIGHTBIT)>

<ROOM STORY223
    (IN ROOMS)
    (DESC "223")
    (FLAGS LIGHTBIT)>

<ROOM STORY224
    (IN ROOMS)
    (DESC "224")
    (FLAGS LIGHTBIT)>

<ROOM STORY225
    (IN ROOMS)
    (DESC "225")
    (FLAGS LIGHTBIT)>

<ROOM STORY226
    (IN ROOMS)
    (DESC "226")
    (FLAGS LIGHTBIT)>

<ROOM STORY227
    (IN ROOMS)
    (DESC "227")
    (FLAGS LIGHTBIT)>

<ROOM STORY228
    (IN ROOMS)
    (DESC "228")
    (FLAGS LIGHTBIT)>

<ROOM STORY229
    (IN ROOMS)
    (DESC "229")
    (FLAGS LIGHTBIT)>

<ROOM STORY230
    (IN ROOMS)
    (DESC "230")
    (FLAGS LIGHTBIT)>

<ROOM STORY231
    (IN ROOMS)
    (DESC "231")
    (FLAGS LIGHTBIT)>

<ROOM STORY232
    (IN ROOMS)
    (DESC "232")
    (FLAGS LIGHTBIT)>

<ROOM STORY233
    (IN ROOMS)
    (DESC "233")
    (FLAGS LIGHTBIT)>

<ROOM STORY234
    (IN ROOMS)
    (DESC "234")
    (FLAGS LIGHTBIT)>

<ROOM STORY235
    (IN ROOMS)
    (DESC "235")
    (FLAGS LIGHTBIT)>

<ROOM STORY236
    (IN ROOMS)
    (DESC "236")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT237 "You trudge on, singling out a particular tree to head for as far away as you can see and keeping it in sight as you go to try to make sure you don't walk in circles. When you reach the tree you look back and try to identify the one you left behind so that you can choose another tree to make for in the same general direction. It is tiring and you are exhausted.||Moving through winding mossy ways, wrapped in the green gloom of the forest depth, you catch the scent of unusual blooms. A path fringed with violet blossoms leads off between the great black boles of the trees, and following it with your gaze you glimpse a stone tower. It is some distance out of your path, and ominously draped in shadows.">
<CONSTANT CHOICES237 <LTABLE "investigate the tower" "pass by without looking back">>

<ROOM STORY237
    (IN ROOMS)
    (DESC "237")
    (STORY TEXT237)
    (CHOICES CHOICES237)
    (DESTINATIONS <LTABLE STORY394 STORY454>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY238
    (IN ROOMS)
    (DESC "238")
    (FLAGS LIGHTBIT)>

<ROOM STORY239
    (IN ROOMS)
    (DESC "239")
    (FLAGS LIGHTBIT)>

<ROOM STORY240
    (IN ROOMS)
    (DESC "240")
    (FLAGS LIGHTBIT)>

<ROOM STORY241
    (IN ROOMS)
    (DESC "241")
    (FLAGS LIGHTBIT)>

<ROOM STORY242
    (IN ROOMS)
    (DESC "242")
    (FLAGS LIGHTBIT)>

<ROOM STORY243
    (IN ROOMS)
    (DESC "243")
    (FLAGS LIGHTBIT)>

<ROOM STORY244
    (IN ROOMS)
    (DESC "244")
    (FLAGS LIGHTBIT)>

<ROOM STORY245
    (IN ROOMS)
    (DESC "245")
    (FLAGS LIGHTBIT)>

<ROOM STORY246
    (IN ROOMS)
    (DESC "246")
    (FLAGS LIGHTBIT)>

<ROOM STORY247
    (IN ROOMS)
    (DESC "247")
    (FLAGS LIGHTBIT)>

<ROOM STORY248
    (IN ROOMS)
    (DESC "248")
    (FLAGS LIGHTBIT)>

<ROOM STORY249
    (IN ROOMS)
    (DESC "249")
    (FLAGS LIGHTBIT)>

<ROOM STORY250
    (IN ROOMS)
    (DESC "250")
    (FLAGS LIGHTBIT)>

<ROOM STORY251
    (IN ROOMS)
    (DESC "251")
    (FLAGS LIGHTBIT)>

<ROOM STORY252
    (IN ROOMS)
    (DESC "252")
    (FLAGS LIGHTBIT)>

<ROOM STORY253
    (IN ROOMS)
    (DESC "253")
    (FLAGS LIGHTBIT)>

<ROOM STORY254
    (IN ROOMS)
    (DESC "254")
    (FLAGS LIGHTBIT)>

<ROOM STORY255
    (IN ROOMS)
    (DESC "255")
    (FLAGS LIGHTBIT)>

<ROOM STORY256
    (IN ROOMS)
    (DESC "256")
    (FLAGS LIGHTBIT)>

<ROOM STORY257
    (IN ROOMS)
    (DESC "257")
    (FLAGS LIGHTBIT)>

<ROOM STORY258
    (IN ROOMS)
    (DESC "258")
    (FLAGS LIGHTBIT)>

<ROOM STORY259
    (IN ROOMS)
    (DESC "259")
    (FLAGS LIGHTBIT)>

<ROOM STORY260
    (IN ROOMS)
    (DESC "260")
    (FLAGS LIGHTBIT)>

<ROOM STORY261
    (IN ROOMS)
    (DESC "261")
    (FLAGS LIGHTBIT)>

<ROOM STORY262
    (IN ROOMS)
    (DESC "262")
    (FLAGS LIGHTBIT)>

<ROOM STORY263
    (IN ROOMS)
    (DESC "263")
    (FLAGS LIGHTBIT)>

<ROOM STORY264
    (IN ROOMS)
    (DESC "264")
    (FLAGS LIGHTBIT)>

<ROOM STORY265
    (IN ROOMS)
    (DESC "265")
    (FLAGS LIGHTBIT)>

<ROOM STORY266
    (IN ROOMS)
    (DESC "266")
    (FLAGS LIGHTBIT)>

<ROOM STORY267
    (IN ROOMS)
    (DESC "267")
    (FLAGS LIGHTBIT)>

<ROOM STORY268
    (IN ROOMS)
    (DESC "268")
    (FLAGS LIGHTBIT)>

<ROOM STORY269
    (IN ROOMS)
    (DESC "269")
    (FLAGS LIGHTBIT)>

<ROOM STORY270
    (IN ROOMS)
    (DESC "270")
    (FLAGS LIGHTBIT)>

<ROOM STORY271
    (IN ROOMS)
    (DESC "271")
    (FLAGS LIGHTBIT)>

<ROOM STORY272
    (IN ROOMS)
    (DESC "272")
    (FLAGS LIGHTBIT)>

<ROOM STORY273
    (IN ROOMS)
    (DESC "273")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT274 "The earth mound that was to be your bed collapses beneath you. It is the some of a giant man-eating Colossus beetle. You try to puzzle out what has happened in the pitch dark. Then as the chitinous walls of the throat of a Colossus beetle press you down to its gullet you realize you have been swallowed alive while you listened for a monster stalking you. Nothing will avail you now as the acid of the beetle's stomach does its work. If only you had a guide who might have warned that the mound of earth on which you chose to sleep was the cap of a Colossus beetle's burrow.">

<ROOM STORY274
    (IN ROOMS)
    (DESC "274")
    (STORY TEXT274)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY275
    (IN ROOMS)
    (DESC "275")
    (FLAGS LIGHTBIT)>

<ROOM STORY276
    (IN ROOMS)
    (DESC "276")
    (FLAGS LIGHTBIT)>

<ROOM STORY277
    (IN ROOMS)
    (DESC "277")
    (FLAGS LIGHTBIT)>

<ROOM STORY278
    (IN ROOMS)
    (DESC "278")
    (FLAGS LIGHTBIT)>

<ROOM STORY279
    (IN ROOMS)
    (DESC "279")
    (FLAGS LIGHTBIT)>

<ROOM STORY280
    (IN ROOMS)
    (DESC "280")
    (FLAGS LIGHTBIT)>

<ROOM STORY281
    (IN ROOMS)
    (DESC "281")
    (FLAGS LIGHTBIT)>

<ROOM STORY282
    (IN ROOMS)
    (DESC "282")
    (FLAGS LIGHTBIT)>

<ROOM STORY283
    (IN ROOMS)
    (DESC "283")
    (FLAGS LIGHTBIT)>

<ROOM STORY284
    (IN ROOMS)
    (DESC "284")
    (FLAGS LIGHTBIT)>

<ROOM STORY285
    (IN ROOMS)
    (DESC "285")
    (FLAGS LIGHTBIT)>

<ROOM STORY286
    (IN ROOMS)
    (DESC "286")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT287 "You grab one of the tentacles with your free hand and try to climb towards the head of the Embracer. It beats you back with its tentacles and one coils around your sword arm. The tentacle constricts around your wrist like a noose of steel and the sword falls from your grasp. Unfortunately the creature has more than enough tentacles to deal with you and soon both your arms are crushed to your sides by what felt like iron bars. The Embracer drags you to drown, before feeding. You will never see the Tree of Life now. The Forest of Arden is doomed.">

<ROOM STORY287
    (IN ROOMS)
    (DESC "287")
    (STORY TEXT287)
    (DEATH T)
    (FLAGS LIGHTBIT)>

<ROOM STORY288
    (IN ROOMS)
    (DESC "288")
    (FLAGS LIGHTBIT)>

<ROOM STORY289
    (IN ROOMS)
    (DESC "289")
    (FLAGS LIGHTBIT)>

<ROOM STORY290
    (IN ROOMS)
    (DESC "290")
    (FLAGS LIGHTBIT)>

<ROOM STORY291
    (IN ROOMS)
    (DESC "291")
    (FLAGS LIGHTBIT)>

<ROOM STORY292
    (IN ROOMS)
    (DESC "292")
    (FLAGS LIGHTBIT)>

<ROOM STORY293
    (IN ROOMS)
    (DESC "293")
    (FLAGS LIGHTBIT)>

<ROOM STORY294
    (IN ROOMS)
    (DESC "294")
    (FLAGS LIGHTBIT)>

<ROOM STORY295
    (IN ROOMS)
    (DESC "295")
    (FLAGS LIGHTBIT)>

<ROOM STORY296
    (IN ROOMS)
    (DESC "296")
    (FLAGS LIGHTBIT)>

<ROOM STORY297
    (IN ROOMS)
    (DESC "297")
    (FLAGS LIGHTBIT)>

<ROOM STORY298
    (IN ROOMS)
    (DESC "298")
    (FLAGS LIGHTBIT)>

<ROOM STORY299
    (IN ROOMS)
    (DESC "299")
    (FLAGS LIGHTBIT)>

<ROOM STORY300
    (IN ROOMS)
    (DESC "300")
    (FLAGS LIGHTBIT)>

<ROOM STORY301
    (IN ROOMS)
    (DESC "301")
    (FLAGS LIGHTBIT)>

<ROOM STORY302
    (IN ROOMS)
    (DESC "302")
    (FLAGS LIGHTBIT)>

<ROOM STORY303
    (IN ROOMS)
    (DESC "303")
    (FLAGS LIGHTBIT)>

<ROOM STORY304
    (IN ROOMS)
    (DESC "304")
    (FLAGS LIGHTBIT)>

<ROOM STORY305
    (IN ROOMS)
    (DESC "305")
    (FLAGS LIGHTBIT)>

<ROOM STORY306
    (IN ROOMS)
    (DESC "306")
    (FLAGS LIGHTBIT)>

<ROOM STORY307
    (IN ROOMS)
    (DESC "307")
    (FLAGS LIGHTBIT)>

<ROOM STORY308
    (IN ROOMS)
    (DESC "308")
    (FLAGS LIGHTBIT)>

<ROOM STORY309
    (IN ROOMS)
    (DESC "309")
    (FLAGS LIGHTBIT)>

<ROOM STORY310
    (IN ROOMS)
    (DESC "310")
    (FLAGS LIGHTBIT)>

<ROOM STORY320
    (IN ROOMS)
    (DESC "320")
    (FLAGS LIGHTBIT)>

<ROOM STORY321
    (IN ROOMS)
    (DESC "321")
    (FLAGS LIGHTBIT)>

<ROOM STORY322
    (IN ROOMS)
    (DESC "322")
    (FLAGS LIGHTBIT)>

<ROOM STORY323
    (IN ROOMS)
    (DESC "323")
    (FLAGS LIGHTBIT)>

<ROOM STORY324
    (IN ROOMS)
    (DESC "324")
    (FLAGS LIGHTBIT)>

<ROOM STORY325
    (IN ROOMS)
    (DESC "325")
    (FLAGS LIGHTBIT)>

<ROOM STORY326
    (IN ROOMS)
    (DESC "326")
    (FLAGS LIGHTBIT)>

<ROOM STORY327
    (IN ROOMS)
    (DESC "327")
    (FLAGS LIGHTBIT)>

<ROOM STORY328
    (IN ROOMS)
    (DESC "328")
    (FLAGS LIGHTBIT)>

<ROOM STORY329
    (IN ROOMS)
    (DESC "329")
    (FLAGS LIGHTBIT)>

<ROOM STORY330
    (IN ROOMS)
    (DESC "330")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT333 "The young girl, who says that her father is away on a journey to buy provisions, charges you a piece gold for your food and for a night's lodging.||You sleep well and awake early but refreshed. Washing in cold water is invigorating and you enjoy the feel of the rough inn towel. There will be no such comforts in the forest.||Downstairs the inn is deserted. The woman in grey, the only other guest, has left already. The young girl is mopping the floor and she looks troubled. Asking what ails her brings the reply, \"My father did not return last night. I tried not to worry but I knew in my heart he wouldn't come. He went into the forest to buy provisions before the Westermen block the spice road. I know he has gone the way of the others. And that strange woman in grey never so much as touched her bed last night, though she didn't leave her room till after dawn. I begged Father to take Renard to guide him but he wouldn't spend the money. Now I'll never see him again\". With this, she breaks into tears.||As you comfort her, you ask the innkeeper's daughter to describe her father and say you will try to find either him or news of him. As you turn to leave she says, \"Fare you well, traveller, you are my only hope.\"">

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
<CONSTANT CHOICES361 <LTABLE "try to hide by burying yourself in the earth mound" "climb a nearby tree">>

<ROOM STORY361
    (IN ROOMS)
    (DESC "361")
    (STORY TEXT361)
    (CHOICES CHOICES361)
    (DESTINATIONS <LTABLE STORY274 STORY392>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY362
    (IN ROOMS)
    (DESC "362")
    (FLAGS LIGHTBIT)>

<ROOM STORY372
    (IN ROOMS)
    (DESC "372")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT392 "Just as you leave the mound of earth it collapses and the head of a Colossus beetle pokes out. Its head alone is twice as big as you and it shines blackly in the faint iridescence of nearby glow-worms. Its curving black horms are tipped with cruel crushing pincers. It lunges for you but you jump behind a tree and start to climb, hoping the beetle will not have the cunning to push the tree down and claim you as a tasty morsel.||It seems to lose track of you once you leave the ground and at last retreats cumbersomely into its burrow, which it caps once more with masticated mud.">

<ROOM STORY392
    (IN ROOMS)
    (DESC "392")
    (STORY TEXT392)
    (CONTINUE STORY237)
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT394 "It takes much longer to reach the tower than you imagined, since path after path leads you up against such obstacles as thorn bushes or fallen trees whose rotting bark crawls with insects. At last you pass into the open, where a clearing of uneven grassy ground stands between the louring ranks of trees.||The tower is outlined in a halo of moonlight which makes the angular masonry blocks gleam like silver. Ivy cover the walls in a dark tangled net. Under a lichen-stained armorial crest looms a great black door sealed with an iron lock. Gazing up, you see a glimmer of green light from the topmost chamber of the tower. It is one sign that the place might not be abandoned and left to ruin.">
<CONSTANT CHOICES394 <LTABLE "climb the tower" "pick the lock" "return to the main forest paths and continue on your way">>

<ROOM STORY394
    (IN ROOMS)
    (DESC "394")
    (STORY TEXT394)
    (CHOICES CHOICES394)
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

<ROOM STORY420
    (IN ROOMS)
    (DESC "420")
    (FLAGS LIGHTBIT)>

<ROOM STORY421
    (IN ROOMS)
    (DESC "421")
    (FLAGS LIGHTBIT)>

<ROOM STORY422
    (IN ROOMS)
    (DESC "422")
    (FLAGS LIGHTBIT)>

<ROOM STORY423
    (IN ROOMS)
    (DESC "423")
    (FLAGS LIGHTBIT)>

<ROOM STORY424
    (IN ROOMS)
    (DESC "424")
    (FLAGS LIGHTBIT)>

<ROOM STORY425
    (IN ROOMS)
    (DESC "425")
    (FLAGS LIGHTBIT)>

<ROOM STORY426
    (IN ROOMS)
    (DESC "426")
    (FLAGS LIGHTBIT)>

<ROOM STORY427
    (IN ROOMS)
    (DESC "427")
    (FLAGS LIGHTBIT)>

<ROOM STORY428
    (IN ROOMS)
    (DESC "428")
    (FLAGS LIGHTBIT)>

<ROOM STORY429
    (IN ROOMS)
    (DESC "429")
    (FLAGS LIGHTBIT)>

<ROOM STORY430
    (IN ROOMS)
    (DESC "430")
    (FLAGS LIGHTBIT)>

<ROOM STORY431
    (IN ROOMS)
    (DESC "431")
    (FLAGS LIGHTBIT)>

<ROOM STORY432
    (IN ROOMS)
    (DESC "432")
    (FLAGS LIGHTBIT)>

<ROOM STORY433
    (IN ROOMS)
    (DESC "433")
    (FLAGS LIGHTBIT)>

<ROOM STORY434
    (IN ROOMS)
    (DESC "434")
    (FLAGS LIGHTBIT)>

<ROOM STORY435
    (IN ROOMS)
    (DESC "435")
    (FLAGS LIGHTBIT)>

<ROOM STORY436
    (IN ROOMS)
    (DESC "436")
    (FLAGS LIGHTBIT)>

<ROOM STORY437
    (IN ROOMS)
    (DESC "437")
    (FLAGS LIGHTBIT)>

<ROOM STORY438
    (IN ROOMS)
    (DESC "438")
    (FLAGS LIGHTBIT)>

<ROOM STORY439
    (IN ROOMS)
    (DESC "439")
    (FLAGS LIGHTBIT)>

<ROOM STORY440
    (IN ROOMS)
    (DESC "440")
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
<CONSTANT CHOICES454 <LTABLE "admit you are lost" "ignore it and walk on, choosing one of the many ways at random">>

<ROOM STORY454
    (IN ROOMS)
    (DESC "454")
    (STORY TEXT454)
    (CHOICES CHOICES454)
    (DESTINATIONS <LTABLE STORY258 STORY277>)
    (TYPES TWO-NONES)
    (FLAGS LIGHTBIT)>

<ROOM STORY459
    (IN ROOMS)
    (DESC "459")
    (FLAGS LIGHTBIT)>

<ROOM STORY460
    (IN ROOMS)
    (DESC "460")
    (FLAGS LIGHTBIT)>

<ROOM STORY461
    (IN ROOMS)
    (DESC "461")
    (FLAGS LIGHTBIT)>

<ROOM STORY462
    (IN ROOMS)
    (DESC "462")
    (FLAGS LIGHTBIT)>

<ROOM STORY463
    (IN ROOMS)
    (DESC "463")
    (FLAGS LIGHTBIT)>

<ROOM STORY464
    (IN ROOMS)
    (DESC "464")
    (FLAGS LIGHTBIT)>

<ROOM STORY465
    (IN ROOMS)
    (DESC "465")
    (FLAGS LIGHTBIT)>

<ROOM STORY466
    (IN ROOMS)
    (DESC "466")
    (FLAGS LIGHTBIT)>

<ROOM STORY467
    (IN ROOMS)
    (DESC "467")
    (FLAGS LIGHTBIT)>

<ROOM STORY468
    (IN ROOMS)
    (DESC "468")
    (FLAGS LIGHTBIT)>

<ROOM STORY469
    (IN ROOMS)
    (DESC "469")
    (FLAGS LIGHTBIT)>

<ROOM STORY470
    (IN ROOMS)
    (DESC "470")
    (FLAGS LIGHTBIT)>

<ROOM STORY489
    (IN ROOMS)
    (DESC "489")
    (FLAGS LIGHTBIT)>

<ROOM STORY499
    (IN ROOMS)
    (DESC "499")
    (FLAGS LIGHTBIT)>

<CONSTANT TEXT500 "The Westermen are routed. They have faced a dragon, the elves and a hero among mankind and they have had enough. They are easy to pick off as they flee through the forest much more slowly than the elves can follow. In their panic, they break into smaller and smaller groups and the elves have no difficulty in killing them. They show no mercy: the Westermen die in their tens of thousands. They will leave the forest, never to return. The Tree of Life lives on and Elanor and the elves will tend it till it has made a full recovery.||Without you, the elves and the whole forest would have been doomed. Without the forest the whole world's atmosphere would have been thrown into imbalance. Elanor greets you as the forest's saviour she had always known you would be. Now everything that grows in the great Forest of Arden is your friend. You will not be famous when you return to the lands of men. No one will ever know what great deeds you have performed here, but it doesn't matter. You know you are a hero.">

<ROOM STORY500
    (IN ROOMS)
    (DESC "500")
    (STORY TEXT500)
    (VICTORY T)
    (FLAGS LIGHTBIT)>
