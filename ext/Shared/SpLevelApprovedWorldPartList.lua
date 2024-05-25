-- By default, all WorldPart instances are excluded: with singleplayer and coop maps, they are often bad news for logic etc.
-- This acts as a 'whitelist' for WorldPart instances. As such, the WorldPartReferenceObjectData GUIDs in this list are allowed to load, and all others aren't.

-- The method for compiling this list was simple - use Powback's EBX viewer to look through the 'Objects' list of the LevelData in question 
-- and see which WorldPartReferenceObjectData instances sounded important to the MP experience (e.g. props, buildings, etc.). 
-- Often, there were more WorldPartReferenceObjectData contained in SubWorlds (for coop, called something like AB01_Art_Parent; for SP, something like Bank_SUB, but usually named after the SubWorld).
-- I may have missed some out, or some may be unimportant or undesired for what you're doing, so feel free to remove them from this list.

-- TODO: Look into global sound, sound schematics, etc. causing client CTD

approvedWorldPartRefGuids = {
    -- CustomLevelLoader ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '93842B6D-0185-483D-9EF5-AD2B47BDABDE',
    -- Hit and Run COOP_002 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '88312BCE-30C2-0B8B-4E77-40FBF3524B15', -- Default (terrain)
    '928D0DAD-A194-4180-91D2-FD8FEE865FB3', -- Sound
    '9ABE0646-ED84-477E-BAD1-B80B56106C1F', -- Sound_Schematic
    '40DBA69B-4266-47BE-8227-B9BCB829ABF7', -- AB01_Sound
    '6A1C944F-3E21-4841-A649-B9A3F7B6828F', -- AB01_Sound_Schematic
    '344E873B-FBDE-4D0A-9C77-F5F1737BA71F', -- AB01_Art_FloorStructure
    'E3938BC9-59B3-4C3A-8288-B5DA76C5962C', -- AB01_Art_Objects
    '04767542-F7DE-48E7-9964-352ABA396CE1', -- AB01_Art_Fx
    '35ADC061-7BD9-4104-92D0-4EDB8BE25B3A', -- AB01_Art_Light
    '2247E703-0D9E-4E9A-81D7-959A368935A9', -- AB01_Art_Shell
    '49ACAB5F-AA62-441F-A983-5628C905EA74', -- AB01_Art_Backdrop
    '11C489D9-3FAD-4932-9E99-89A0F59F7F24', -- AB02_Sound
    'F6B4C2C2-66AC-46F5-979B-AD15DC1B53C7', -- AB02_Sound_Schematic
    '309AA544-42D6-4069-8CE2-156678941C4A', -- AB02_Art_FloorStructure
    '9A260E1C-45A1-468E-9515-A17AC2F222C1', -- AB02_Art_Objects
    '8514CFCA-3E2D-4CA1-8ED5-DDED0E604048', -- AB02_Art_Fx
    'D5F0F02C-331C-4022-A07A-BF30E1447345', -- AB02_Art_Light
    'B6584282-2652-43D6-A635-7B9F62ECE00D', -- AB02_Art_Shell
    '07A46CAE-E16C-42A0-A120-C0DAC99B0FCE', -- AB03_Sound
    'DADE826E-3F37-454F-AC7E-BA19DDA27F8C', -- AB03_Sound_Schematic
    'DE056525-A452-4CD5-8C3A-BC855DEBC7FD', -- AB03_Art_FloorStructure
    '295E3AA3-ED74-4463-B411-307DE1D3B908', -- AB03_Art_Objects
    '86BBD1A5-8A3C-4CD7-8615-34F71D16CBD2', -- AB03_Art_Light
    'FF537C55-B4BD-48E0-AD13-2276C9C72A6F', -- AB03_Art_Fx
    '0128A326-FCC4-40E5-ADC8-9C3FF2A4C151', -- AB03_Art_Shell
    '85484594-95D5-4BA0-80DD-3CE13BD1D7C5', -- AB03_Art_Cars_Spotlight
    '26CD4532-8EF4-46D6-803E-583D8DFA5825', -- AB04_Art_Objects

    -- Drop 'Em Like Liquid COOP_003 ------------------------------------------------------------------------------------------------------------------------------------------------------------------
    '3F90F5EF-774C-4B82-96B5-7DEBBD323B86', -- Default (terrain)
    '546FB037-F783-481D-9D21-D9C09B8F89DA', -- SoundAreas
    'A43492E7-527A-49AA-AC5C-103C2FBB2EB1', -- SoundAreas_Schematic
    '1873E3A0-5DE4-4239-AD68-CA24094090DE', -- Art_Backdrop
    'F756F79C-E9D9-4A76-8134-4C3BBE9D6A49', -- Art_AlwaysStreamedIn
    'C76D7D1D-94E1-4A41-9BEB-60DF7158A579', -- AB00_Sound
    '03F82D8F-9897-4E04-BDF7-12C5E94861CF', -- AB00_Sound_Schematic
    'E4FB7EC5-8406-4DE0-8C8D-C58832CEFDF4', -- AB00_Art_Buildings
    'D8301716-3438-4422-A3F6-547A9EE387F2', -- AB00_Art_Objects
    'B11D5F1E-52D7-4DAB-955B-B4453B722264', -- AB00_Art_Roads
    '16DB8F4C-D4F7-4195-A1A2-52EF3BA50C7A', -- AB00_Art_Vegetation
    'C46A629C-1694-45A2-8292-FFC3C96C53AA', -- AB00_Art_Light
    '1D11EFF7-225C-406A-9190-59646D248D2C', -- AB00_Art_Backdrop
    'B4699025-42C7-4BFF-AE6A-66A55600447A', -- AB00_Art_Sewer_Objects
    '8D290A3E-C277-45E8-9147-62F9BEFB4929', -- AB00_Art_Sewer_Buildings
    'C158E83E-7697-405B-82F3-18CC3095237C', -- AB00_Art_Sewer
    '70A38B60-3D15-4AA9-B6A5-68249610F135', -- AB00_Art_Sewer_Light
    'DBC2E892-5C4B-4C91-B0B5-422DACBFB916', -- AB00_Sewer_Sound
    '5B7439DB-F52A-400F-8749-620C950EDEA8', -- AB00_Sewer_Sound_Schematic
    '29FA1B87-EEB3-4E5B-8069-2B0932970A3D', -- AB01_Sound
    'D469FD10-847B-4B5B-A0BE-68BF5B8BFE45', -- AB01_Sound_Schematic
    '19F3469D-9DF9-4E92-B621-87AEA0E8E382', -- AB01_Art_Buildings
    'BC0C33ED-A236-4E1A-8DE8-D13FFAA12CBA', -- AB01_Art_Objects
    'B449CCD0-ABA5-404A-863F-8E95DBA9916F', -- AB01_Art_Light
    'AFEE1A02-4949-423B-B228-3B4B8EC7949D', -- AB01_Art_Roads
    '2D7793A0-D457-4531-B1E1-023593F14A11', -- AB01_Art_Vegetation
    '98D31052-A786-4432-9488-999CC2B7AACF', -- AB02_Sound
    '03FCDD1D-3F1E-44D5-A233-631B0F75D6B1', -- AB02_Sound_Schematic
    '026E2B12-88C1-4889-A34F-8AB01BA7ACF7', -- AB02_Art_Buildings
    'E3795D54-058C-4A86-A67D-47EE16D40AFF', -- AB02_Art_Objects
    'DA95E3DF-52F0-4CCB-A53E-A9942C4EFB43', -- AB02_Art_Vegetation
    'F0D90169-801F-4832-8494-40F5EDAF677F', -- AB02_Art_Light
    '9DACB866-E9A7-49B6-A3F4-B0C3BDCD606C', -- AB02_Art_Roads
    '370E16E8-448A-49D3-8CFF-DC84D30ED143', -- AB02_Art_FX
    '5CA21EA9-AD80-46B8-9D9A-C8BF6ECC1D31', -- AB03_Sound
    '2F239FD9-6CB3-4ADE-A8E6-CA8DE52FCF4A', -- AB03_Sound_Schematic

    -- Fire From The Sky COOP_006 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'ED5F6729-5372-6697-C5B5-308A151ACE69', -- Default (terrain)
    'D519FCA8-8CB7-4C7E-8587-D325C1646E1F', -- Sound
    '98EEB045-17D4-4AA0-BDD2-81AB5F05BC10', -- Sound_Schematic
    '919944D1-0088-4F60-8C22-DE059D0FA6F3', -- Objects
    '22158E73-7B10-4130-B5EF-A5A09978507F', -- Splines (rivers, roads, terrain features)
    'E9F15CB5-0B82-48A0-ADBC-35AF068407A0', -- Vegetation
    'E522FFAB-0D7C-4C15-A6D7-FC483002BE0B', -- Rocks
    '984F78B2-C978-494D-9F52-043F0D120C97', -- Houses
    '568B5424-A2BF-439A-9067-063A33E845E3', -- Bridges
    'DD5DA24E-AD06-4A7F-A29D-6B9C815724F0', -- General_FX
    '249A9EB7-28AC-41CC-853B-79166F73FBF7', -- AB01_Sound
    '7A7563D4-4C4F-415B-919D-867478AAA0E0', -- AB01_Sound_Schematic

    -- Operation Exodus COOP_007 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'DED8F258-5034-A6D3-2306-0963095E387D', -- Default (terrain)
    'ACF8E4E9-F1D0-4A14-B7C9-49C3A8991897', -- Sound
    '88823EFD-A850-4F30-9CB6-BC041B52A7B4', -- Sound_Schematic
    'B3B9330E-8CE3-4A72-988E-EADED506CE40', -- ART_Buildings
    'E96E91B5-69F4-4B18-9C54-E64CD9088EE5', -- ART_Objects
    'E7E52A17-3DCF-4995-B7B9-59AC27B618B9', -- ART_Background
    'AD1375B6-983C-4333-BFE9-41DAAF13AE23', -- ART_Roads
    '490572AC-0186-493D-AF21-64F9E0288C57', -- ART_Objects_VIC
    '2B01E481-2DBC-4DD6-B502-78542DAD4637', -- AB00_Sound
    'D4B98D77-814F-4CC3-B783-09B2A8B058C3', -- AB00_Sound_Schematic
    '1C176ECF-E032-4DC3-ADD6-E3BB900B1649', -- AB01_Sound
    'AD72A0D6-0A8C-4EC7-8458-CE13C596EEDB', -- AB01_Sound_Schematic
    '58D3248F-F2AD-414E-8A9D-87AECE1D165B', -- AB02_Sound
    '18BAECC1-EBCB-416E-8354-6333B221AE99', -- AB02_Sound_Schematic
    'E52D3D17-81C2-4CFF-BDEF-021AC9E3671E', -- AB04_Sound
    'A2FD10DD-E9C4-4F64-BD55-BAE165BD5D1E', -- AB04_Sound_Schematic
    '6411094F-449D-4D8D-823C-69B2D97C6D8E', -- AB05_Sound
    'F86B0FD4-0871-4D6D-A121-826BAA3B6A7E', -- AB05_Sound_Schematic

    -- Exfiltration COOP_009 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'D3254EE8-16BF-17C1-E749-B8160F5F506A', -- Default (terrain)
    'F1CD0E12-0F2F-421F-B4DB-70AC3E8ACDAA', -- General_SoundAreas
    '949943C8-4B5D-406F-A1AF-E9645C4C4047', -- General_SoundAreas_Schematic
    '1DD5E71D-6F39-46AE-B1AA-1F40ABEDE6F6', -- Sound
    '57884436-95C5-4AE6-AEFD-6CCCA4BA30CF', -- Sound_Schematic
    '42DEFE6B-FE76-4D2A-8A15-0A221FBA80E5', -- ART_Backdrop_01
    '5736CC85-22FD-47A2-8143-49773CE70220', -- ART_AlwaysStreamedIn
    '84092486-69B0-475A-BB7B-88FE93DC9746', -- AB00_Sound
    'CCC0E72C-10A8-4F3C-A5B8-73D22CE47542', -- AB00_Sound_Schematic
    '217C43B4-ED26-41D0-80DA-E49EF546336C', -- AB00_Art_Buildings
    '2EA88B49-D594-4D1C-A666-CF674E2835B7', -- AB00_Art_Objects
    '08484843-1987-43BA-90FF-59EB19260DDD', -- AB00_Art_Light
    'A05D6D13-6D46-4635-81B2-B3E927FA8F5D', -- AB00_Art_Street
    'BE1A2CED-2F24-4B3B-820E-9A6B49C37A86', -- AB01_Sound
    '0902B1CF-2852-49B2-94BB-2FEB0F15542D', -- AB01_Sound_Schematic
    'BD9AE754-387A-4FCA-B9D0-4DF4DD99918D', -- AB01_Art_Buildings
    '977E3F4C-C796-421B-8C79-9B4339DAAFA5', -- AB01_Art_Objects
    '58D7E83D-4D7C-4BF4-8AA8-8D5BEB0936DC', -- AB01_Art_Light
    'ADADEA9B-C0CB-453C-A4CE-62A8EAD2E787', -- AB02_Sound
    '5A2B4AE8-FCFD-48A6-BAFC-B99E7A3A2A14', -- AB02_Sound_Schematic
    'D2B9A818-D7AD-453E-B625-9D0E8D19E225', -- AB02_Art_Buildings
    '08C132F5-91C8-45DC-B2EF-C9B927A27EF0', -- AB02_Art_Objects
    '4ADD6CB3-D85D-47F9-B3B1-36914419323F', -- AB02_Art_Light
    '10F5A0E5-E8C7-4301-9D07-CC0561505D40', -- AB03_Sound
    'E59AD7C4-56F2-4E3E-ACE4-6E2E720957AC', -- AB03_Sound_Schematic
    'D6B05F69-56E5-4E54-97D1-7215B894FEFB', -- AB03_Art_Buildings
    '96557421-0314-47AC-8901-D5F69FF8D92E', -- AB03_Art_Objects
    'AB9D1382-E9D6-4514-A26E-049DD9DBD3B8', -- AB03_Art_Light

    -- The Eleventh Hour COOP_010 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    'EDABC9CD-A01F-3FF1-D4BC-AD76F46F33F7', -- Default (terrain)
    'AD4295D3-0098-4C48-8050-0EE8FB6A2046', -- Sound
    '7486B4E9-5646-4D77-A6EB-C93D2A8D6656', -- Sound_Schematic
    '45C85EC2-E9EF-4B21-8EC2-6EE9BEE504F8', -- AB00_Sound
    'ABC500D7-3293-4490-AAF4-AF34CC28980D', -- AB00_Sound_Schematic
    '4435D103-8359-4B22-9960-C9DE6D1A6F74', -- AB00_Subway_Entrance
    '021606F0-30EA-43CA-9784-E3F4C335F4EB', -- AB00_FX_Gas
    '25AB534E-4750-4114-B03B-73F561F70640', -- AB01_Sound
    'F322B861-DE5D-473E-ADA7-E1ABC6F979B2', -- AB01_Sound_Schematic
    'BFF5599C-A829-48E7-B762-1B5C451EEB58', -- AB01_AB03_Buffer_Parent_Art
    '340A6555-CB0E-4B0B-9727-A6ACB678DBCF', -- AB01_Subway_Mid
    '1C97CF44-63F6-479E-A09C-DB79130E953B', -- AB01_Subway_Exit_Floor
    'B56CEFE2-910E-45FA-97A2-ADC456DE83BF', -- AB03_Sound
    'E354ACF8-4DDB-4EF9-927D-AA8B9145C1D3', -- AB03_Sound_Schematic
    '8C52AA98-BD43-4938-B14E-0E4D13EA8B22', -- AB03_AB04_Buffer_Art
    '410E9B4F-44B5-4743-91E9-4569915EE8AF', -- AB03_Art
    '0E7DF455-D1FF-4490-9505-377AC052525A', -- AB04_Sound
    'D3E629F1-38B4-449C-8BD4-BE80CBAB4FCE', -- AB04_Sound_Schematic
    '2230A040-D150-4089-9F22-8FF86864F8EF', -- AB04_Art_exchange_hall
    '512C1505-55E8-40BB-9B59-FD30FDD24C35', -- AB05_Sound
    'BD3F9CED-4C35-450E-A1A5-832F87CAB8DB', -- AB05_Sound_Schematic
    '5BBE492B-AD82-4C0D-8948-A11786211039', -- AB05_Art_atrium
    'A0E6F05F-633E-4037-9AD0-BCD54F2E9BC9', -- AB06_Sound
    'B6F06504-6C1D-4BC7-AAD2-9DC640A41D97', -- AB06_Sound_Schematic
    '493FDBEE-0027-4881-99CD-B2E8C79842DE', -- AB06_Art
}