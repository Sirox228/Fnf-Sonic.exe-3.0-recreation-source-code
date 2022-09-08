local screenStuck = true
function onUpdate(elpased)
	if screenStuck == true then
		setPropertyFromClass('openfl.Lib', 'application.window.width', 1130)
		setPropertyFromClass('openfl.Lib', 'application.window.height', 635)
		setPropertyFromClass('openfl.Lib', 'application.window.x', 390)
		setPropertyFromClass('openfl.Lib', 'application.window.y', 200)
		setProperty('timeBar.alpha', 0)
		setProperty('timeTxt.alpha', 0)	
	end
		function onUpdate()
	setProperty('timeBar.alpha', 0)
	setProperty('timeTxt.alpha', 0)
	end

	if getPropertyFromClass('Conductor', 'songPosition') > (getPropertyFromClass('flixel.FlxG', 'sound.music.length') -5) then
		screenStuck = false
	else
		screenStuck = true
	end
end

--[[function onStartCountdown()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Vs Sonic Ex")
	return Function_Continue
end]] -- for testing, delete if you want

function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.title", "Vs Sonic Exe Renewed")
end
function onCreate()
	makeLuaSprite('borders', 'borders', 0,0)
	addLuaSprite('borders', false)
	setObjectCamera('borders', 'camother')
end
function onDestroy()
end

function onCountdownTick()
	counter = 0
	noteTweenX('dadnote1', 0, defaultOpponentStrumX0 + 80, 0.00001, 'backInOut')
	noteTweenX('dadnote2', 1, defaultOpponentStrumX1 + 80, 0.00001, 'backInOut')
	noteTweenX('dadnote3', 2, defaultOpponentStrumX2 + 80, 0.00001, 'backInOut')
	noteTweenX('dadnote4', 3, defaultOpponentStrumX3 + 80, 0.00001, 'backInOut')
	noteTweenX('bfnote1', 4, defaultPlayerStrumX0  - 80, 0.00001, 'backInOut')
	noteTweenX('bfnote2', 5, defaultPlayerStrumX1  - 80, 0.00001, 'backInOut')
	noteTweenX('bfnote3', 6, defaultPlayerStrumX2  - 80, 0.00001, 'backInOut')
	noteTweenX('bfnote4', 7, defaultPlayerStrumX3  - 80, 0.00001, 'backInOut')
end