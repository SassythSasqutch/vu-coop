-- If Fear No Evil (SP_Tank_B) is allowed to load, Thunder Run (SP_Tank) can't load (strange quirk with Frostbite or something). 
-- Maybe I can find a proper fix later, but for now Fear No Evil is disabled by default, because it's a mediocre map and Thunder Run is fucken sick.
-- To re-enable it (and thus disable SP_Tank), change the below to 'true'

allowFearNoEvil = false

require '__shared/SpLevelDataModify'
require '__shared/SpLevelDataRemove'
--require '__shared/SpLevelVisualEnvironmentSet'
require '__shared/SpMapModifications/_SpMapModificationManager'

-- Multiplayer Presets
require '__shared/MpPresets/MpCommonDataLoad'
require '__shared/MpPresets/AddVoiceOverLogic'

require '__shared/MpPresets/HitAndRun_Rush/MpDataLoad'
require '__shared/MpPresets/HitAndRun_Rush/CreateGameModeSubWorldRef'
require '__shared/MpPresets/HitAndRun_Rush/MapModifications/_MapModificationManager' -- I'm offloading all the code to start the map modification scripts to its own file. This way, I can guarantee they only run when a SP/COOP map is loaded in TDM CQ. You can see how this works in MapModificationsManager.lua itself.