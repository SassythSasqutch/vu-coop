-- This script moves all the Ziba Tower TDM CQ spawns from several different points on the Ziba Tower map, to a single point for each SP or COOP level.

-- First we will compile a list of all the spawns we want to set.
-- If you're wondering what this is, look up Lua tables.
local spawnPosns = {

    ['COOP_002'] = LinearTransform(
        Vec3(0.999543, 0.000000, -0.030243), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.030243, 0.000000, 0.999543), 
        Vec3(-48.945313, 9.849414, -64.342773)
    ),

    ['COOP_003'] = LinearTransform(
        Vec3(-0.999994, 0.000000, -0.003506), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.003506, 0.000000, -0.999994), 
        Vec3(-14.012695, 73.988083, -45.356445)
    ),

    ['COOP_006'] = LinearTransform(
        Vec3(0.575544, 0.000000, 0.817771), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.817771, 0.000000, 0.575544), 
        Vec3(-642.994141, 386.038910, -310.077148)
    ),

    ['COOP_007'] = LinearTransform(
        Vec3(0.999987, 0.000000, -0.005192), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(0.005192, 0.000000, 0.999987), 
        Vec3(49.988281, 64.235176, 37.814453)
    ),

    ['COOP_009'] = LinearTransform(
        Vec3(0.009207, 0.000000, 0.999958), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.999958, 0.000000, 0.009207),
        Vec3(-86.617188, 71.740036, 828.671875)
    ),

    ['COOP_010'] = LinearTransform(
        Vec3(-0.409867, 0.000000, 0.912145), 
        Vec3(0.000000, 1.000000, 0.000000), 
        Vec3(-0.912145, 0.000000, -0.409867),
        Vec3(-83.893555, 66.397263, -422.454102)
    ),

}

ResourceManager:RegisterInstanceLoadHandler(Guid('8A7E9DF1-0D21-48A0-A23F-2CBD709691CC'), Guid('F5C07B61-6E3F-4A2C-BD58-7A49C18924C9'), function(instance) -- Seine Crossing Rush_Logic WorldPartData

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    if string.find(levelName, 'COOP_002') == nil or gameModeName ~= 'RushLarge0' then
        return
    end

    -- Cast our WorldPartData instance to the correct type.
    local thisInstance = WorldPartData(instance)

    -- Look at each object in the 'Objects' list of our WorldPartData.
    for _, object in pairs(thisInstance.objects) do

        -- If the object is of the 'AlternateSpawnEntityData' type, then we modify it.
        if object.typeInfo.name == 'AlternateSpawnEntityData' then

            -- Cast our AlternateSpawnEntityData instance to the correct type and make it writable.
            local thisObject = AlternateSpawnEntityData(object)
            thisObject:MakeWritable()

            -- Now we need to change the coordinates of this spawn to the one we want. 
            -- This is different for each map, so we need to make sure we're in the right map before we change it.
            -- I will do this for every SP/COOP map, because I'm changing the spawns for all of them.
            -- You'll only need to do it for the SP level you're concerned about.

            for level, spawnPos in pairs(spawnPosns) do

                -- Check if the current level name matches one of the levels in the list.
                if string.find(levelName, level) then

                    thisObject.transform = spawnPos

                end

            end

        end

    end

end)

-- You're done. Don't forget to add this to ext/Shared/__init__.lua

--[[

Vec3(0.999987, 0.000000, -0.005192), 
Vec3(0.000000, 1.000000, 0.000000), 
Vec3(0.005192, 0.000000, 0.999987), 
Vec3(49.988281, 64.235176, 37.814453)

]]