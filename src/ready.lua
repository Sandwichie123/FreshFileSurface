modutil.mod.Path.Wrap("StartNewGame", function( baseFunc, mapName, args )
	local ret = baseFunc(mapName, args)
	StartNewGameWrap(mapName, args)
	return ret
end)

modutil.mod.Path.Override("LoadCurrentRoomResources", function( currentRoom )
	return LoadCurrentRoomResourcesOverride( currentRoom )
end)
