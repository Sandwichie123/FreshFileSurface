modutil.mod.Path.Wrap("StartNewGame", function( baseFunc, mapName, args )
	local ret = baseFunc(mapName, args)
	StartNewGame_wrap(mapName, args)
	return ret
end)
