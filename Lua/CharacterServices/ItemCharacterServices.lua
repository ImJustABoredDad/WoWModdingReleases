local ids = {
    -- These are the ids of our actual in game items.
    renameScroll  = 100001,
    customizeScroll = 100002,
    raceScroll = 100003,
    factionScroll = 100004,
}

local function ConsumeAndReward(player, object, flag, message)
    local itemId = object:GetEntry()
    if (player:HasItem(itemId)) then
        player:RemoveItem(itemId, 1)
        player:SetAtLoginFlag(flag)
        player:SendBroadcastMessage(message)
    else
        player:SendBroadcastMessage("|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Something went wrong contact a staff member.")
    end
end

local function Rename(event, player, object, target)
    ConsumeAndReward(player, object, 1, "|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to change your name.")
end

local function Customize(event, player, object, target)
    ConsumeAndReward(player, object, 8, "|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to change your appearance.")
end

local function RaceChange(event, player, object, target)
    ConsumeAndReward(player, object, 128, "|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to change your race.")
end

local function FactionChange(event, player, object, target)
    ConsumeAndReward(player, object, 64, "|TInterface/Icons/Temp:16:16:0:-1|t|cff60a9e4[System]|cffffffff Relog to change your faction.")
end

RegisterItemEvent(ids.renameScroll, 2, Rename)
RegisterItemEvent(ids.customizeScroll, 2, Customize)
RegisterItemEvent(ids.raceScroll, 2, RaceChange)
RegisterItemEvent(ids.factionScroll, 2, FactionChange)