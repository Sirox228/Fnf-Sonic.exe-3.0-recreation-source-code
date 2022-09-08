--Script took by Ushanka
function onCreate()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Track! : " .. (songName))
end
function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Vs Sonic Exe Renewed")
end
function onUpdate()

	setProperty('timeBar.alpha', 0)
	setProperty('timeTxt.alpha', 0)
end