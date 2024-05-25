-- Only run the map modification scripts if the level is a SP or COOP map in TDM CQ. When the level is destroyed, reset this script.

local done = false

Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if string.find(levelName, 'COOP_002') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    print('Initialising map modification scripts...')

    require '__shared/MpPresets/HitAndRun_Rush/MapModifications/FriendZoneSet'
    require '__shared/MpPresets/HitAndRun_Rush/MapModifications/SpawnPosns'

end)

Events:Subscribe('Level:Destroy', function()

    done = false

end)