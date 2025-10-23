-- The npcId is the entry of the creature that will display the gossip menu.
local npcId = 100004

local function OnGossipHello(event, player, object)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Ability_Rogue_Disguise:24:24:-21:0|tChange your name", 0, 1)
    player:GossipMenuAddItem(0, "|TInterface/PaperDollInfoFrame/UI-GearManager-Undo:24:24:-21:0|tCustomize your character", 0, 2)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Ability_Paladin_BeaconofLight:24:24:-21:0|tChange your race", 0, 3)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Achievement_BG_winWSG:24:24:-21:0|tChange your faction", 0, 4)
    player:GossipMenuAddItem(0, "|TInterface/Icons/Spell_Shadow_SacrificialShield:24:24:-21:0|tNevermind", 0, 5)
    -- We send the menu to the player.
    player:GossipSendMenu(1, object)
end

local function OnGossipSelect(event, player, object, sender, intid, code)
    -- Rename
    if (intid == 1) then
        player:SetAtLoginFlag(1)
        player:SendBroadcastMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to change your name.")
    -- Customize
    elseif (intid == 2) then
        player:SetAtLoginFlag(8)
        player:SendBroadcastMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to customize your character.")
    -- Race
    elseif (intid == 3) then
        player:SetAtLoginFlag(128)
        player:SendBroadcastMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to change your race.")
    -- Faction
    elseif (intid == 4) then
        player:SetAtLoginFlag(64)
        player:SendBroadcastMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to change your faction.")
    end
    player:GossipComplete()
end

RegisterCreatureGossipEvent(npcId, 1, OnGossipHello)
RegisterCreatureGossipEvent(npcId, 2, OnGossipSelect)