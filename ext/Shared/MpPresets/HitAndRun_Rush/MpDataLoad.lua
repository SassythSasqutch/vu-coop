require '__shared/SpBundleTable' -- This contains the list of bundles to load for each level.

-- Mount superbundles
Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the levelName or gameModeName is nil (the mod will not be able to determine what MP preset it should load). Leave this.
    if levelName == nil or gameModeName == nil then
        return
    end

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ. Change TeamDeathMatchC0 to whatever gamemode you're using.
    -- You will also need to specify the SP/COOP map you're building your preset for. See ThunderRun_CQL for an example of a map-specific preset.
    -- E.g., put (string.find(levelName, 'sp_paris') == nil) if you're making a preset for Comrades.
    -- This is so your preset only loads when the SP/COOP level and gamemode you want is loading.
    -- PLEASE don't use the TeamDeathMatchC0 gamemode. It is reserved for this (default) preset for exploration.
    if string.find(levelName, 'COOP_002') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    print('Gamemode is '..gameModeName..' for map '..levelName..'. Loading custom preset...')

    ResourceManager:MountSuperBundle('levels/mp_011/mp_011') -- Seine Crossing being used as the basis for the preset

end)

-- Inject bundles
Hooks:Install('ResourceManager:LoadBundles', 500, function(hook, bundles, compartment)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the levelName or gameModeName is nil
    if levelName == nil or gameModeName == nil then
        return
    end

    if string.find(levelName, 'COOP_002') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    if #bundles == 1 and bundles[1] == levelName then

        print('Injecting MP bundles...')
        bundles = {
            'ui/flow/bundle/loadingbundlemp',
            'levels/mp_011/mp_011',
            'levels/mp_011/rush',
        }

        -- This code adds all the bundles for the particular SP/COOP map. You have to add them in a specific order so that the game does not crash on blueprint creation. 
        -- Don't change this.
        for _, spBundle in pairs(SpBundleTable[levelName]) do
            table.insert(bundles, spBundle)
        end

        hook:Pass(bundles, compartment)

    end

    -- Complete thanks to Powback and kiwidog who made me take one last look at the bundles so that I could notice this
    -- Intercepts the UiPlaying bundle for the SP or COOP level, and replaces it with an MP one
    for _, bundle in pairs(bundles) do
        if bundle == levelName..'_UiPlaying' then
            bundles = {
                'ui/flow/bundle/ingamebundlemp', -- Leave this
                'levels/mp_011/mp_011_uiplaying' -- Replace with the MP level you're using. LEAVE THE _uiplaying AT THE END.
            }
            hook:Pass(bundles,compartment)
        end
    end

    -- TODO: UI Pre-EOR and EOR

end)

-- That's everything we need to load the multiplayer data we need. Now we need to tell the SP/COOP level how to load our chosen gamemode.
-- That's all done by the CreateGameModeSubWorldRef.lua script.
-- After that, there are a few more optional things to do. Those are detailed at the end of the CreateGameModeSubWorldRef.lua script.