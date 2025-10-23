-- These are the map ids that will be restricted add more map IDs as needed currently set to eastern kingdoms.
local restrictedMapIds = {0}
-- This is the lowest gm rank you do not want this script to effect.
local gmRank = 1

-- This is the gps coords of the location to teleport the player to upon entering a restricted zone.
local teleLoc = {
    map = 571, x = 5814.064941, y = 448.742462, z = 658.751648, o = 1.747552
}

local function OnMapChange(event, player)
    -- If player is a gm return and ignore the script.
    if (player:GetGMRank() >= gmRank) then
        return
    end

    local currentMap = player:GetMapId()
    
    -- Loop through all restricted map IDs
    for _, restrictedMapId in ipairs(restrictedMapIds) do
        if (currentMap == restrictedMapId) then
            player:SendBroadcastMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff That location is restricted.")
            player:Teleport(teleLoc.map, teleLoc.x, teleLoc.y, teleLoc.z, teleLoc.o)
            break
        end
    end
end

RegisterPlayerEvent(28, OnMapChange)