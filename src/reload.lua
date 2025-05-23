function StartNewGameOverride( mapName, args )
	DebugAssert({ Condition = GameState == nil, "Overwriting existing game state!" })

	GameState = {}
	GameStateInit()
	
	InitializeMetaUpgradeState()
	InitializeGiftData()
	if currentRun == nil then
		StartNewRun( nil, { RoomName = "N_Opening01", StartingBiome = "N" } )
	end
end
function LoadCurrentRoomResourcesOverride( currentRoom ) 
	LoadVoiceBanks("MelinoeField", true)
	local voiceBanks = { currentRoom.Name, currentRoom.ForceLootName, currentRoom.ChosenRewardType, currentRoom.Encounter.Name, currentRoom.Encounter.LootAName, currentRoom.Encounter.LootBName }
	for _, name in pairs(voiceBanks) do
		LoadVoiceBanks( GetSpeakerName( name ) )
	end
	local packages = { currentRoom.ForceLootName, currentRoom.Encounter.LootAName, currentRoom.Encounter.LootBName, currentRoom.ChosenRewardType }
	for _, name in pairs(packages) do
		if not GameData.MissingPackages[lootName] then
			LoadPackages({ Name = name })
		end
	end
end
