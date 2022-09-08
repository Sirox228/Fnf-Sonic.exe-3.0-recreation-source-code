local thoseShit = false
local funniDedLol = true
local respawnTime = true
local youDumb = true
local dedCause = 0
function onGameOver()
	thoseShit = true
	setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
	setPropertyFromClass('PlayState', 'instance.vocals.volume', 0)
	setPropertyFromClass('PlayState', 'instance.generatedMusic', false)
	for i = 0, getProperty('notes.length')-1 do
		setPropertyFromGroup('notes', i, 'active', false)
		setPropertyFromGroup('notes', i, 'ignoreNote', true)
	end
	setProperty('camGame.alpha', 0)
	setProperty('camHUD.alpha', 0)

	if funniDedLol == true then
		dedCause = getRandomInt(1,3)
		startVideo('hahaded'..dedCause)
		funniDedLol = false
	end

	if respawnTime == true then
		if dedCause == 1 then
			runTimer('ImAliveBitch', 7)
		end

		if dedCause == 2 then
			runTimer('ImAliveBitch', 10)
		end

		if dedCause == 3 then
			runTimer('ImAliveBitch', 5)
		end
		respawnTime = false
	end
	return Function_Stop
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'ImAliveBitch' then
		restartSong(false)
	end
end

function onEndSong()
	if thoseShit == true then
		return Function_Stop
	end
	return Function_Continue
end

function onPause()
	if thoseShit == true then
		return Function_Stop
	end
	return Function_Continue
end