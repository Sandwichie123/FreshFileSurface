function StartNewGame_wrap( mapName, args )
	if currentRun == nil then
		StartNewRun( nil, { RoomName = "N_Opening01", StartingBiome = "N" } )
	end
	print("TESTING")
end
