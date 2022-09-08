--Script took by Ushanka
function onCreate()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Track! : " .. (songName))
end
function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Vs Sonic Exe Renewed")
end