modutil.mod.Path.Override("StartNewGame", function( mapName )
	return StartNewGameOverride(mapName)
end)

modutil.mod.Path.Override("LoadCurrentRoomResources", function( currentRoom )
	return LoadCurrentRoomResourcesOverride( currentRoom )
end)
