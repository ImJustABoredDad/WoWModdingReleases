-- If you want to announce this every level set it to false.
local maxLevelOnly = true
-- If your max level isnt 80 change this.
local maxLevel = 80

local function OnLevelUp(event, player, oldLevel)
    if (maxLevelOnly and player:GetLevel() == maxLevel) then
        SendWorldMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4Congratulations to |TInterface/Icons/Achievement_Boss_Algalon_01:16:16:0:-1|t|cffffffff["..player:GetName().."]|cff60a9e4 for reaching level |cffffffff"..maxLevel.."|cff60a9e4!")
    else
        SendWorldMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4Congratulations to |TInterface/Icons/Achievement_Boss_Algalon_01:16:16:0:-1|t|cffffffff["..player:GetName().."]|cff60a9e4 for reaching level |cffffffff"..player:GetLevel().."|cff60a9e4!")
    end
end

RegisterPlayerEvent(13, OnLevelUp)