modutil.mod.Path.Wrap("StartNewGame", function( baseFunc, mapName, args )
	return baseFunc("N_Opening01", args)
end)

modutil.mod.Path.Override("LoadCurrentRoomResources", function( currentRoom )
	return LoadCurrentRoomResourcesOverride( currentRoom )
end)
