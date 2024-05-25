-- New to making custom layouts/presets? Read the comments in 'Shared/MpPresets/Default/MpDataLoad.lua' first.

-- So, after you've loaded all the MP data you need, it's time to tell your SP or COOP level to use that data. Here's how.

-- In a nutshell, for multiplayer maps, different gamemodes are different subworlds, each referenced in the main level partition (e.g. Levels/XP2_Skybar/XP2_Skybar).
-- This script clones the SubWorldReferenceObjectData from the XP2_Skybar main level partition, and adds it to the singleplayer/co-op map being loaded.
-- What's the SubWorldReferenceObjectData now? That's what points the level towards (references) the right gamemode (SubWorld). Hence SubWorld-Reference-ObjectData.

-- This sounds complicated, but is remarkably easy (I know, the simplicity of it got me the first time: I massively overcomplicated it).
-- Again, instructions for how to do this are annotated below. Message SassythSasqutch#9081 on Discord with any questions. Literally anything. Please speak to me.

Events:Subscribe('Partition:Loaded', function(partition)

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't read any partition that's nil or not referring to the main level partition of the currently loading map
    if partition == nil or levelName == nil or partition.name ~= string.lower(levelName) or partition.primaryInstance.typeInfo.name ~= 'LevelData' then
        return
    end

    -- Don't continue if the level is not any singleplayer or coop level in TDM CQ.
    -- Again, change this to have the exact same code as on line 45 of MpDataLoad.lua, so that this code only runs when we're loading the map and gamemodes we want.
    if string.find(levelName, 'COOP_002') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    -- Rush --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    local seineRushSubWorldReferenceObjectData = SubWorldReferenceObjectData(ResourceManager:FindInstanceByGuid(Guid('28C6D036-DC2A-11DF-BF53-8B1F263C3963'), Guid('EB7DE42F-1337-4CB2-9CCA-90A6036E667B')))

    -- Add to LevelData 'Objects' array
    local spLevelData = LevelData(partition.primaryInstance)
    spLevelData:MakeWritable()
    spLevelData.objects:add(seineRushSubWorldReferenceObjectData)

end)

-- That's it. Your preset is ready. Load the singleplayer or COOP map you made it for in the right gamemode, and it 'should' work.
-- I put 'should' in inverted commas bc I know these things never work first time. Message me if you need a hand.

-- Remember that you will need to put the address for all the Lua files you made in ext/Shared/__init__.lua. 
-- Just put it below where all the other MpPreset ones are. You can use those ones as examples, so you know how to do it.

-- Given you just made a new preset, you probably want to move spawns, objectives, and so on.
-- I do all of this for Thunder Run Conquest Large (ThunderRun_CQL), so you can refer to that for examples. 
-- I learned how to do that from the best, Bree_Arnold, so I can only point you towards their MP_Lake map if you want any more advice on how to do this. 
-- https://github.com/FlashHit/MP_Lake

-- In MP_Lake, Bree_Arnold also shows us how to set objective names (for gamemodes like Conquest or Domination).
-- Code for this sort of thing is client-side, so it goes under 'vu-spterrains/ext/Client/MpPresets'. There you can see what I've done for ThunderRun_CQL.
-- Remember to link to that under ext/Client/__init__.lua as well, or somewhere else, to make sure VU loads it.

-- All I did for the Default preset was move the spawns. 
-- You can see how I did this under ext/Shared/MpPresets/Default/MapModifications/SpawnPosns.lua

-- Since I moved the spawns, I also had to move the friend zones to encompass my new spawns, otherwise, you can't spawn.
-- You can see how I did this under ext/Shared/MpPresets/Default/MapModifications/FriendZoneSet.lua
-- I wouldn't have known to do this without the experience of keku645, so full thanks to them.