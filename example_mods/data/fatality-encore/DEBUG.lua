local screenStuck = true
function onUpdate(elpased)
	if screenStuck == true then
		setPropertyFromClass('openfl.Lib', 'application.window.width', 1130)
		setPropertyFromClass('openfl.Lib', 'application.window.height', 635)
		setPropertyFromClass('openfl.Lib', 'application.window.x', 390)
		setPropertyFromClass('openfl.Lib', 'application.window.y', 200)
		setProperty('timeBar.alpha', 0)
		setProperty('timeTxt.alpha', 0)	
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

end
function onStepHit()
 if curStep >= 318 then
	setPropertyFromClass("openfl.Lib", "application.window.title", "CLOSE THIS WINDOWS , T U R N  O F F  Y O U R  P C")
 end
 if curStep >= 2320 then
	setPropertyFromClass("openfl.Lib", "application.window.title", "I  AM  GOD")
end
 if curStep >= 2480 then
	setPropertyFromClass("openfl.Lib", "application.window.title", "JUST DIE")
 end
 if curStep >= 2800 then
	setPropertyFromClass("openfl.Lib", "application.window.title", "0xc10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")
 end
 if curStep >= 3225 then
	exitSong(true)
	end
end
