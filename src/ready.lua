modutil.mod.Path.Override("StartNewGame", function( mapName )
	return StartNewGame_override( mapName )
end)
