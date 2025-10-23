-- If you want to change the prefix just change it in this variable.
local prefix = "|TInterface/Icons/Achievement_BG_Xkills_AVgraveyard:16:16:0:-1|t|cffff0000[Grim Reaper] "

local function OnEvironmentalDeath(event, player, cause)
    if (cause == 0) then
        cause = "|TInterface/Icons/INV_Misc_Food_114_OrcaBlubber:16:16:0:-1|t exhaustion"
    elseif (cause == 1) then
        cause = "|TInterface/Icons/Ability_Suffocate:16:16:0:-1|t drowning"
    elseif (cause == 2) then
        cause = "|TInterface/Icons/Achievement_BG_AB_crosson _barrels:16:16:0:-1|t falling"
    elseif (cause == 3) then
        cause = "|TInterface/Icons/Spell_Fire_MoltenBlood:16:16:0:-1|t lava"
    elseif (cause == 4) then
        cause = "|TInterface/Icons/Ability_Creature_Poison_02:16:16:0:-1|t slime"
    elseif (cause == 5) then
        cause = "|TInterface/Icons/INV_SummerFest_FireSpirit:16:16:0:-1|t fire"
    elseif (cause == 6) then
        cause = "|TInterface/Icons/Spell_Shadow_Shadesofdarkness:16:16:0:-1|t falling into the void"
    end

    SendWorldMessage(prefix.."|cffffffff["..player:GetName().."] |cff60a9e4has died from |cffffffff"..cause.."|cff60a9e4.")
end

local function OnDeathByPlayer(event, killer, killed)
    if (killer:GetGUIDLow() == killed:GetGUIDLow()) then
        return
    end
    SendWorldMessage(prefix.."|cffffffff["..player:GetName().."] |cff60a9e4has been murdered by |cffffffff[]"..killer:GetName().."]|cff60a9e4.")
end

local function OnDeathByCreature(event, killer, killed)
    SendWorldMessage(prefix.."|cffffffff["..player:GetName().."] |cff60a9e4has been killed by |cffffffff["..killer:GetName().."]|cff60a9e4.")
end

RegisterPlayerEvent(6, OnDeathByPlayer)
RegisterPlayerEvent(8, OnDeathByCreature)
RegisterPlayerEvent(40, OnEvironmentalDeath)