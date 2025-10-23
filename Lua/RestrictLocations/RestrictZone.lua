-- These are the zone ids that will be restricted add more zone IDs as needed currently set to elwynn forest.
local restrictedZoneIds = {12}
-- This is the lowest gm rank you do not want this script to effect.
local gmRank = 1

-- This is the gps coords of the location to teleport the player to upon entering a restricted zone.
local teleLoc = {
    map = 571, x = 5814.064941, y = 448.742462, z = 658.751648, o = 1.747552
}

local function OnUpdateZone(event, player, newZone, newArea)
    -- If player is a gm return and ignore the script.
    if (player:GetGMRank() >= gmRank) then
        return
    end

    -- Loop through all restricted zone IDs
    for _, restrictedZoneId in ipairs(restrictedZoneIds) do
        if (newZone == restrictedZoneId) then
            player:SendBroadcastMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff That location is restricted.")
            player:Teleport(teleLoc.map, teleLoc.x, teleLoc.y, teleLoc.z, teleLoc.o)
            break
        end
    end
end

RegisterPlayerEvent(27, OnUpdateZone)