function StartNewGame_override( mapName )
	DebugAssert({ Condition = GameState == nil, "Overwriting existing game state!" })

	GameState = {}
	GameStateInit()

	InitializeMetaUpgradeState()
	InitializeGiftData()

	if currentRun == nil then
		StartNewRun( nil, { RoomName = "N_Opening01", StartingBiome = "N" } )
	end
	print("TESTING")
end
