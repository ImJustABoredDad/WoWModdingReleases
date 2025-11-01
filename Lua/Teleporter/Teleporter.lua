-- This is the ID of the NPC that will display the gossip menu.
local npcId = 100003
-- This is the rank of the player that can use the GM Island option.
local gmRank = 1

local function ShowAllianceCitiesMenu(player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalStormWind:24:24:-21:0|tStormwind City", 0, 900)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalIronForge:24:24:-21:0|tIronforge", 0, 901)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalDarnassus:24:24:-21:0|tDarnassus", 0, 902)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalExodar:24:24:-21:0|tThe Exodar", 0, 903)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Achievement_Zone_ElwynnForest:24:24:-21:0|tBack to Main Menu", 0, 9999)
    player:GossipSendMenu(1, object)
end

local function ShowHordeCitiesMenu(player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalOrgrimmar:24:24:-21:0|tOrgrimmar", 0, 904)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalThunderBluff:24:24:-21:0|tThunder Bluff", 0, 905)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalUnderCity:24:24:-21:0|tUndercity", 0, 906)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalSilvermoon:24:24:-21:0|tSilvermoon City", 0, 907)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Achievement_Zone_ElwynnForest:24:24:-21:0|tBack to Main Menu", 0, 9999)
    player:GossipSendMenu(1, object)
end

local function ShowNeutralCitiesMenu(player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalShattrath:24:24:-21:0|tShattrath City", 0, 908)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalDalaran:24:24:-21:0|tDalaran", 0, 909)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Achievement_Zone_ElwynnForest:24:24:-21:0|tBack to Main Menu", 0, 9999)
    player:GossipSendMenu(1, object)
end

local function ShowClassicDungeonsMenu(player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tRagefire Chasm", 0, 1020)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tWailing Caverns", 0, 1021)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Deadmines", 0, 1022)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tShadowfang Keep", 0, 1023)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Stockade", 0, 1024)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tBlackfathom Deeps", 0, 1025)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tGnomeregan", 0, 1026)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tRazorfen Kraul", 0, 1027)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tScarlet Monastery - Graveyard", 0, 1028)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tScarlet Monastery - Cathedral", 0, 1029)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tScarlet Monastery - Armory", 0, 1030)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tScarlet Monastery - Library", 0, 1031)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tUldaman", 0, 1032)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tRazorfen Downs", 0, 1033)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tZul'Farrak", 0, 1034)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Temple of Atal'Hakkar", 0, 1035)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tMaraudon", 0, 1036)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tBlackrock Depths", 0, 1037)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tBlackrock Spire", 0, 1038)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tDire Maul", 0, 1039)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tStratholme", 0, 1040)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tScholomance", 0, 1041)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Achievement_Zone_ElwynnForest:24:24:-21:0|tBack to Main Menu", 0, 9999)
    player:GossipSendMenu(1, object)
end

local function ShowBurningCrusadeDungeonsMenu(player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tHellfire Ramparts", 0, 2037)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Blood Furnace", 0, 2038)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Slave Pens", 0, 2039)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Underbog", 0, 2040)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tMana-Tombs", 0, 2041)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tAuchenai Crypts", 0, 2042)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tSethekk Halls", 0, 2043)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tShadow Labyrinth", 0, 2044)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Steamvault", 0, 2045)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Shattered Halls", 0, 2046)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tOld Hillsbrad Foothills", 0, 2047)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Black Morass", 0, 2048)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Botanica", 0, 2049)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Mechanar", 0, 2050)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Arcatraz", 0, 2051)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tMagisters' Terrace", 0, 2052)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Achievement_Zone_ElwynnForest:24:24:-21:0|tBack to Main Menu", 0, 9999)
    player:GossipSendMenu(1, object)
end

local function ShowNorthrendDungeonsMenu(player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Nexus", 0, 3001)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Oculus", 0, 3002)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tDrak'Tharon Keep", 0, 3003)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tGundrak", 0, 3004)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tHalls of Stone", 0, 3005)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tHalls of Lightning", 0, 3006)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Violet Hold", 0, 3007)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tAhn'kahet: The Old Kingdom", 0, 3008)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tAzjol-Nerub", 0, 3009)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Culling of Stratholme", 0, 3010)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tTrial of the Champion", 0, 3011)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tThe Forge of Souls", 0, 3012)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tPit of Saron", 0, 3013)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Box_02:24:24:-21:0|tHalls of Reflection", 0, 3014)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Achievement_Zone_ElwynnForest:24:24:-21:0|tBack to Main Menu", 0, 9999)
    player:GossipSendMenu(1, object)
end

local function OnGossipHello(event, player, object)
    player:GossipClearMenu()
    
    -- Only show the GM Island option to GMs
    if (player:GetGMRank() >= gmRank) then
        player:GossipMenuAddItem(0, "|TInterface/Icons/Mail_GMIcon:24:24:-21:0|tGM Island", 0, 910)
    end

    -- Only show the Alliance cities to Alliance players
    if (player:GetTeam() == 0) then
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalStormWind:24:24:-21:0|tAlliance Cities", 0, 400)
    -- Only show the Horde cities to Horde players
    else
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalOrgrimmar:24:24:-21:0|tHorde Cities", 0, 500)
    end
    
    -- Other Options
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalShattrath:24:24:-21:0|tNeutral Cities", 0, 600)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Misc_Book_11:24:24:-21:0|tClassic Dungeons", 0, 100)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Misc_Book_11:24:24:-21:0|tBurning Crusade Dungeons", 0, 200)
    player:GossipMenuAddItem(0, "|TInterface/Icons/INV_Misc_Book_11:24:24:-21:0|tNorthrend Dungeons", 0, 300)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Shadow_SacrificialShield:24:24:-21:0|tNevermind", 0, 12)
    player:GossipSendMenu(1, object)
end

local function OnGossipSelect(event, player, object, sender, intid, code, menu_id)
    if (intid == 100) then
        ShowClassicDungeonsMenu(player, object)
        return
    elseif (intid == 200) then
        ShowBurningCrusadeDungeonsMenu(player, object)
        return
    elseif (intid == 300) then
        ShowNorthrendDungeonsMenu(player, object)
        return
    elseif (intid == 400) then
        ShowAllianceCitiesMenu(player, object)
        return
    elseif (intid == 500) then
        ShowHordeCitiesMenu(player, object)
        return
    elseif (intid == 600) then
        ShowNeutralCitiesMenu(player, object)
        return
    elseif (intid == 900) then
        player:Teleport(0, -8829.762695, 626.799072, 93.996674, 0.589049) -- Stormwind City
    elseif (intid == 901) then
        player:Teleport(0, -4982.583008, -880.823120, 501.659943, 5.399630) -- Ironforge
    elseif (intid == 902) then
        player:Teleport(1, 9948.202148, 2435.941650, 1324.394043, 1.641493) -- Darnassus
    elseif (intid == 903) then
        player:Teleport(530, -3864.919922, -11643.700195, -137.643997, 5.427113) -- The Exodar
    elseif (intid == 904) then
        player:Teleport(1, 1571.181152, -4417.139648, 7.174162, 0.765772) -- Orgrimmar
    elseif (intid == 905) then
        player:Teleport(1, -1257.482788, 73.730232, 127.670357, 4.696697) -- Thunder Bluff
    elseif (intid == 906) then
        player:Teleport(0, 1610.378296, 202.247757, -43.101444, 2.065577) -- Undercity
    elseif (intid == 907) then
        player:Teleport(530, 9473.030273, -7279.669922, 14.233032, 6.283185) -- Silvermoon City
    elseif (intid == 908) then
        player:Teleport(530, -1869.241943, 5440.962402, -10.465370, 5.160039) -- Shattrath City
    elseif (intid == 909) then
        player:Teleport(571, 5814.064941, 448.742462, 658.751648, 1.747552) -- Dalaran
    elseif (intid == 910) then
        player:Teleport(1, 16208.440430, 16220.713867, 1.274252, 1.129357) -- GM Island
    elseif (intid == 1020) then
        player:Teleport(389, 3.810000, -14.820000, -17.840000, 4.390000) -- Ragefire Chasm
    elseif (intid == 1021) then
        player:Teleport(43, -158.440994, 131.600998, -74.255203, 5.846850) -- Wailing Caverns
    elseif (intid == 1022) then
        player:Teleport(36, -14.573200, -385.475006, 62.456100, 1.570800) -- The Deadmines
    elseif (intid == 1023) then
        player:Teleport(33, -224.026367, 2110.075928, 76.890404, 5.947991) -- Shadowfang Keep
    elseif (intid == 1024) then
        player:Teleport(34, 54.230000, 0.280000, -18.342350, 6.260000) -- The Stockade
    elseif (intid == 1025) then
        player:Teleport(48, -150.233994, 106.594002, -39.778999, 4.348485) -- Blackfathom Deeps
    elseif (intid == 1026) then
        player:Teleport(90, -329.484009, -3.229910, -152.845993, 2.864948) -- Gnomeregan
    elseif (intid == 1027) then
        player:Teleport(47, 1942.270020, 1544.229980, 81.804955, 1.435294) -- Razorfen Kraul
    elseif (intid == 1028) then
        player:Teleport(189, 1688.115112, 1053.489868, 18.677414, 0.003260) -- Scarlet Monastery - Graveyard
    elseif (intid == 1029) then
        player:Teleport(189, 853.332520, 1322.209229, 18.673319, 6.282475) -- Scarlet Monastery - Cathedral
    elseif (intid == 1030) then
        player:Teleport(189, 1609.368164, -323.084869, 18.673719, 0.003222) -- Scarlet Monastery - Armory
    elseif (intid == 1031) then
        player:Teleport(189, 255.546722, -208.953171, 18.677336, 0.031396) -- Scarlet Monastery - Library
    elseif (intid == 1032) then
        player:Teleport(70, -228.858994, 46.101799, -46.018600, 1.547235) -- Uldaman
    elseif (intid == 1033) then
        player:Teleport(129, 2593.679932, 1111.229980, 50.951801, 4.630553) -- Razorfen Downs
    elseif (intid == 1034) then
        player:Teleport(209, 1212.670044, 842.039978, 8.933460, 0.000000) -- Zul'Farrak
    elseif (intid == 1035) then
        player:Teleport(109, -319.239990, 99.900002, -131.850006, 3.174805) -- The Temple of Atal'Hakkar
    elseif (intid == 1036) then
        player:Teleport(349, 1016.830017, -458.519989, -43.473701, 0.000000) -- Maraudon
    elseif (intid == 1037) then
        player:Teleport(230, 456.928986, 34.092300, -69.561684, 4.946746) -- Blackrock Depths
    elseif (intid == 1038) then
        player:Teleport(229, 78.353401, -226.841003, 49.766201, 4.797523) -- Blackrock Spire
    elseif (intid == 1039) then
        player:Teleport(429, 254.919998, -19.462999, -2.559600, 4.853763) -- Dire Maul
    elseif (intid == 1040) then
        player:Teleport(329, 3395.090088, -3380.250000, 142.701996, 0.004081) -- Stratholme
    elseif (intid == 1041) then
        player:Teleport(289, 199.958282, 124.340645, 134.910461, 4.743038) -- Scholomance
    elseif (intid == 2037) then
        player:Teleport(543, -1355.280029, 1641.569946, 68.274002, 1.047200) -- Hellfire Ramparts
    elseif (intid == 2038) then
        player:Teleport(542, -2.737820, 19.842400, -44.797298, 4.363320) -- The Blood Furnace
    elseif (intid == 2039) then
        player:Teleport(547, 122.375999, -123.643997, -0.342138, 1.276769) -- The Slave Pens
    elseif (intid == 2040) then
        player:Teleport(546, 18.743500, -24.597000, -2.753680, 5.679158) -- The Underbog
    elseif (intid == 2041) then
        player:Teleport(557, -4.811150, 1.002360, -0.954329, 3.141590) -- Mana-Tombs
    elseif (intid == 2042) then
        player:Teleport(558, -16.789900, -0.071496, -0.120559, 0.000000) -- Auchenai Crypts
    elseif (intid == 2043) then
        player:Teleport(556, 2.632090, -0.209401, 0.005755, 0.000000) -- Sethekk Halls
    elseif (intid == 2044) then
        player:Teleport(555, -7.060270, -0.107037, -1.127950, 3.141590) -- Shadow Labyrinth
    elseif (intid == 2045) then
        player:Teleport(545, -5.337637, -8.013077, -4.620893, 4.690011) -- The Steamvault
    elseif (intid == 2046) then
        player:Teleport(540, -40.738800, -19.288099, -13.841700, 1.134460) -- The Shattered Halls
    elseif (intid == 2047) then
        player:Teleport(560, 2741.679932, 1312.640015, 14.041300, 2.954950) -- Old Hillsbrad Foothills
    elseif (intid == 2048) then
        player:Teleport(269, -1491.609985, 7056.509766, 32.101101, 1.955735) -- The Black Morass
    elseif (intid == 2049) then
        player:Teleport(553, 40.553101, -28.794701, -1.117280, 2.356190) -- The Botanica
    elseif (intid == 2050) then
        player:Teleport(554, -26.493401, 0.315267, -1.812400, 0.000000) -- The Mechanar
    elseif (intid == 2051) then
        player:Teleport(552, 8.737610, 0.008027, -0.205496, 0.000000) -- The Arcatraz
    elseif (intid == 2052) then
        player:Teleport(585, 7.524090, 0.545139, -2.799140, 6.223335) -- Magisters' Terrace
    elseif (intid == 3001) then
        player:Teleport(576, 145.96344, -10.597799, -16.636736, 1.594352) -- The Nexus
    elseif (intid == 3002) then
        player:Teleport(578, 1056.478394, 986.521362, 361.003876, 5.673702) -- The Oculus
    elseif (intid == 3003) then
        player:Teleport(600, -517.0, -488.0, 11.0, 4.802710) -- Drak'Tharon Keep
    elseif (intid == 3004) then
        player:Teleport(604, 1891.838867, 832.163757, 177.668396, 2.195201) -- Gundrak
    elseif (intid == 3005) then
        player:Teleport(599, 1153.167480, 805.264282, 196.937912, 4.712397) -- Halls of Stone
    elseif (intid == 3006) then
        player:Teleport(602, 1334.469727, 252.524185, 53.398159, 4.724166) -- Halls of Lightning
    elseif (intid == 3007) then
        player:Teleport(608, 1810.985474, 803.294006, 44.364662, 0.049090) -- The Violet Hold
    elseif (intid == 3008) then
        player:Teleport(619, 339.582550, -1106.083740, 64.283279, 0.620465) -- Ahn'kahet: The Old Kingdom
    elseif (intid == 3009) then
        player:Teleport(601, 415.896851, 792.375793, 830.369812, 5.647021) -- Azjol-Nerub
    elseif (intid == 3010) then
        player:Teleport(595, 1431.916748, 553.892761, 35.940922, 5.136504) -- The Culling of Stratholme
    elseif (intid == 3011) then
        player:Teleport(650, 792.450928, 618.237244, 412.393066, 3.149444) -- Trial of the Champion
    elseif (intid == 3012) then
        player:Teleport(632, 4921.252930, 2176.631592, 638.733459, 2.018474) -- The Forge of Souls
    elseif (intid == 3013) then
        player:Teleport(658, 435.000000, 212.000000, 528.709839, 0.000000) -- Pit of Saron
    elseif (intid == 3014) then
        player:Teleport(668, 5239.332031, 1932.424561, 707.695068, 0.824662) -- Halls of Reflection
    elseif (intid == 9999) then
        OnGossipHello(event, player, object)
        return
    end
    player:GossipComplete()
end

RegisterCreatureGossipEvent(npcId, 1, OnGossipHello)
RegisterCreatureGossipEvent(npcId, 2, OnGossipSelect)
