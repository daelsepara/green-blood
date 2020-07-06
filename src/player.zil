<CONSTANT SKILL-GLOSSARY <LTABLE SKILL-AGILITY SKILL-ARCHERY SKILL-CHARMS SKILL-CUNNING SKILL-FOLKLORE SKILL-ROGUERY SKILL-SPELLS SKILL-STREETWISE SKILL-SWORDPLAY SKILL-UNARMED-COMBAT SKILL-WILDERNESS-LORE>>
<CONSTANT CHARACTERS <LTABLE CHARACTER-DUELLIST CHARACTER-RANGER CHARACTER-MONK CHARACTER-SORCERERS-APPRENTICE CHARACTER-STARVELING CHARACTER-TRAVELLER CHARACTER-THIEF>>

<OBJECT SKILL-AGILITY
    (DESC "AGILITY")
    (LDESC "The ability to perform acrobatic feats, run, climb, balance and leap. A character with this skill is nimble and dexterous.")>

<OBJECT SKILL-ARCHERY
    (DESC "ARCHERY")
    (LDESC "A long-range attack skill. You must possess a longbow to use this skill")
    (REQUIRES LONGBOW)>

<OBJECT SKILL-CHARMS
    (DESC "CHARMS")
    (LDESC "The expert use of magical wards to protect you from danger. Also includes that most elusive of qualities. luck. YOu must possess a magic amulet to use this skill.")
    (REQUIRES MAGIC-AMULET)>

<OBJECT SKILL-CUNNING
    (DESC "CUNNING")
    (LDESC "The ability to think on your feet and devise clever schemes for getting out of trouble. Useful in countless situations.")>

<OBJECT SKILL-FOLKLORE
    (DESC "FOLKLORE")
    (LDESC "Knowledge of myth and legend, and how best to deal with supernatural menaces such as garlic against vampires, silver bullets against a werewolf, and so on.")>

<OBJECT SKILL-ROGUERY
    (DESC "ROGUERY")
    (LDESC "The traditional repertoire of a thief's tricks: picking pockets, opening locks, and skulking unseen in the shadows.")>

<OBJECT SKILL-SPELLS
    (DESC "SPELLS")
    (LDESC "A range of magical effects encompassing illusions, elemental effects, commands, and summonings. You must possess a magic wand to use this skill.")
    (REQUIRES MAGIC-WAND)>

<OBJECT SKILL-STREETWISE
    (DESC "STREETWISE")
    (LDESC "With this skill you are never at a loss in towns and cities. What others see as the squalor and menace of narrow cobbed streets is home to you.")>

<OBJECT SKILL-SWORDPLAY
    (DESC "SWORDPLAY")
    (LDESC "The best fighting skill. You must possess a sword to use this skill.")
    (REQUIRES SWORD)>

<OBJECT SKILL-UNARMED-COMBAT
    (DESC "UNARMED COMBAT")
    (LDESC "Fisticuffs, wrestling holds, jabs and kicks, and the tricks of infighting. Not as effective as SWORDPLAY, but you do not need weapons - your own body is the weapon!")>

<OBJECT SKILL-WILDERNESS-LORE
    (DESC "WILDERNESS LORE")
    (LDESC "A talent for survival in the wild - whether it be forest, desert, swamp or mountain peak.")>

<OBJECT CHARACTER-DUELLIST
    (DESC "Duellist")
    (SYNONYM DUELLIST)
    (SKILLS <LTABLE SKILL-AGILITY SKILL-FOLKLORE SKILL-ROGUERY SKILL-SWORDPLAY>)
    (LDESC "As a professional duellist you have upset too many people by winning the spoils of your contests, and you must move on.")
    (LIFE-POINTS 10)
    (POSSESSIONS <LTABLE SWORD>)
    (MONEY 10)
    (FLAGS PERSONBIT)>

<OBJECT CHARACTER-RANGER
    (DESC "Ranger")
    (SYNONYM RANGER)
    (SKILLS <LTABLE SKILL-ARCHERY SKILL-STREETWISE SKILL-SWORDPLAY SKILL-WILDERNESS-LORE>)
    (LDESC "Being loyal to the traditional values of your forefathers, you must protect those forced to journey off the road.")
    (LIFE-POINTS 11)
    (POSSESSIONS <LTABLE LONGBOW SWORD>)
    (MONEY 10)
    (FLAGS PERSONBIT)>

<OBJECT CHARACTER-MONK
    (DESC "Monk")
    (SYNONYM MONK)
    (SKILLS <LTABLE SKILL-AGILITY SKILL-SPELLS SKILL-UNARMED-COMBAT SKILL-WILDERNESS-LORE>)
    (LDESC "The monks who taught you skills have been driven out and you are persecuted for your faith. Life is harsh but you endure all hardships")
    (LIFE-POINTS 11)
    (POSSESSIONS <LTABLE MAGIC-WAND>)
    (MONEY 8)
    (FLAGS PERSONBIT)>

<OBJECT CHARACTER-SORCERERS-APPRENTICE
    (DESC "Sorcerer's Apprentice")
    (SYNONYM APPRENTICE)
    (ADJECTIVE SORCERER'S)
    (SKILLS <LTABLE SKILL-CHARMS SKILL-FOLKLORE SKILL-SPELLS SKILL-WILDERNESS-LORE>)
    (LDESC "Sold to a warlock when you were a child, your knowledge eventually outstripped your master's.")
    (LIFE-POINTS 9)
    (POSSESSIONS <LTABLE MAGIC-AMULET MAGIC-WAND>)
    (MONEY 12)
    (FLAGS PERSONBIT)>

<OBJECT CHARACTER-STARVELING
    (DESC "Starveling")
    (SYNONYM STARVELING)
    (SKILLS <LTABLE SKILL-CUNNING SKILL-ROGUERY SKILL-STREETWISE SKILL-UNARMED-COMBAT>)
    (LDESC "Orphaned in childhood, you made your way half-starved to the city. YOu learned what it takes to survive in the uncaring world, but now you want to seek something worthwhile in your life.")
    (LIFE-POINTS 10)
    (POSSESSIONS NONE)
    (MONEY 15)
    (FLAGS PERSONBIT)>

<OBJECT CHARACTER-TRAVELLER
    (DESC "Traveller")
    (SYNONYM TRAVELLER)
    (SKILLS <LTABLE SKILL-FOLKLORE SKILL-ROGUERY SKILL-SWORDPLAY SKILL-WILDERNESS-LORE>)
    (LDESC "You never knew your father, and your mother mislaid you among the carts of a slaver's caravan. Cities make you ill; you can only breath freely on the open road.")
    (LIFE-POINTS 10)
    (POSSESSIONS <LTABLE SWORD>)
    (MONEY 10)
    (FLAGS PERSONBIT)>

<OBJECT CHARACTER-THIEF
    (DESC "Thief")
    (SYNONYM THIEF)
    (SKILLS <LTABLE SKILL-AGILITY SKILL-ARCHERY SKILL-CUNNING SKILL-ROGUERY>)
    (LDESC "You are secretive and restless, always just one ahead of the hangman's noose. Your latest exploit has made the city too dangerous for you and you must lie low.")
    (LIFE-POINTS 10)
    (POSSESSIONS <LTABLE LONGBOW JEWELS>)
    (MONEY 16)
    (FLAGS PERSONBIT)>

<OBJECT CHARACTER-CUSTOM
    (DESC "Custom Character")
    (SYNONYM CHARACTER)
    (ADJECTIVE CUSTOM)
    (LDESC "Custom character with user selected skills.")
    (LIFE-POINTS 10)
    (MONEY 10)
    (FLAGS PERSONBIT NARTICLEBIT)>
