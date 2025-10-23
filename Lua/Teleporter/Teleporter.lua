-- This is the ID of the NPC that will display the gossip menu.
local npcId = 100003
-- This is the rank of the player that can use the GM Island option.
local gmRank = 1

local function OnGossipHello(event, player, object)
    player:GossipClearMenu()
    
    -- Only show the GM Island option to GMs
    if (player:GetGMRank() >= gmRank) then
        player:GossipMenuAddItem(0, "|TInterface/Icons/Mail_GMIcon:24:24:-21:0|tGM Island", 0, 11)
    end

    -- Only show the Alliance cities to Alliance players
    if (player:GetTeam() == 0) then
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalStormWind:24:24:-21:0|tStormwind City", 0, 1)
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalIronForge:24:24:-21:0|tIronforge", 0, 2)
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalDarnassus:24:24:-21:0|tDarnassus", 0, 3)
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalExodar:24:24:-21:0|tThe Exodar", 0, 4)
    -- Only show the Horde cities to Horde players
    else
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalOrgrimmar:24:24:-21:0|tOrgrimmar", 0, 5)
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalThunderBluff:24:24:-21:0|tThunder Bluff", 0, 6)
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalUnderCity:24:24:-21:0|tUndercity", 0, 7)
        player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalSilvermoon:24:24:-21:0|tSilvermoon City", 0, 8)
    end

    -- Other Options
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalShattrath:24:24:-21:0|tShattrath City", 0, 9)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Arcane_PortalDalaran:24:24:-21:0|tDalaran", 0, 10)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Shadow_SacrificialShield:24:24:-21:0|tNevermind", 0, 12)
    player:GossipSendMenu(1, object)
end

local function OnGossipSelect(event, player, object, sender, intid, code, menu_id)
    -- Stormwind City
    if (intid == 1) then
        player:Teleport(0, -8829.762695, 626.799072, 93.996674, 0.589049)
    -- Ironforge
    elseif (intid == 2) then
        player:Teleport(0, -4982.583008, -880.823120, 501.659943, 5.399630)
    -- Darnassus
    elseif (intid == 3) then
        player:Teleport(1, 9948.202148, 2435.941650, 1324.394043, 1.641493)
    -- The Exodar
    elseif (intid == 4) then
        player:Teleport(530, -3864.919922, -11643.700195, -137.643997, 5.427113)
    -- Orgrimmar
    elseif (intid == 5) then
        player:Teleport(1, 1571.181152, -4417.139648, 7.174162, 0.765772)
    -- Thunder Bluff
    elseif (intid == 6) then
        player:Teleport(1, -1257.482788, 73.730232, 127.670357, 4.696697)
    -- Undercity
    elseif (intid == 7) then
        player:Teleport(0, 1610.378296, 202.247757, -43.101444, 2.065577)
    -- Silvermoon City
    elseif (intid == 8) then
        player:Teleport(530, 9473.030273, -7279.669922, 14.233032, 6.283185)
    -- Shattrath City
    elseif (intid == 9) then
        player:Teleport(530, -1869.241943, 5440.962402, -10.465370, 5.160039)
    -- Dalaran
    elseif (intid == 10) then
        player:Teleport(571, 5814.064941, 448.742462, 658.751648, 1.747552)
    -- GM Island
    elseif (intid == 11) then
        player:Teleport(1, 16208.440430, 16220.713867, 1.274252, 1.129357)
    end
    player:GossipComplete()
end

-- Register the gossip events for the NPC.
RegisterCreatureGossipEvent(npcId, 1, OnGossipHello)
RegisterCreatureGossipEvent(npcId, 2, OnGossipSelect)