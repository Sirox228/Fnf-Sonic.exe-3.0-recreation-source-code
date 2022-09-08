local hidestuff = false

function onCreatePost()
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')
	setPropertyFromClass('ClientPrefs', 'songScoreType', 'Score Elapsed') 
    setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')

    makeLuaText('score', 'SCORE:', 0, 200, 635)
    setTextColor('score', 'FFFF00')
    addLuaText('score')
    setTextFont('score', 'sonicog.ttf')
    
    makeLuaText('scorecount', '', 0, 250, 635)
    addLuaText('scorecount')
    setTextFont('scorecount', 'sonicog.ttf')

    makeLuaText('time', 'TIME:', 0, 200, 585)
    setTextColor('time', 'FFFF00')
    addLuaText('time') 
    setTextFont('time', 'sonicog.ttf')
	
	makeLuaText('timecount', '', 0, 235, 585)
	addLuaText('timecount')
    setTextFont('timecount', 'sonicog.ttf')
	
	makeLuaText('misses', 'MISSES:', 0, 198, 535)
	setTextColor('misses', 'FFFF00')
	addLuaText('misses')
    setTextFont('misses', 'sonicog.ttf')
	
	makeLuaText('missescount', '', 0, 300, 535)
	addLuaText('missescount')
    setTextFont('missescount', 'sonicog.ttf')
	
	setTextSize('missescount', 45)
	setTextSize('misses', 45)
	setTextSize('time', 45)
    setTextSize('score', 45)
    setTextSize('scorecount', 45)
    setTextSize('timecount', 45) 
end

function onUpdate()
    setTextString('missescount', '     ' .. getProperty('songMisses'))
    setTextString('scorecount', '        ' .. getProperty('songScore'))
    setTextString('timecount', '       '  .. getTextString('timeTxt'))

    for i=0,3 do
       noteTweenAlpha(i+0, i, math.floor, 0.3)
    end
end
function onUpdatePost(elapsed)
    if hidestuff == true then
        removeLuaSprite('bfhud', false)

        removeLuaText('score', false)
        removeLuaText('time', false)
        removeLuaText('misses', false)

        removeLuaText('scorecount', false)
        removeLuaText('timecount', false)
        removeLuaText('missescount', false)

        setProperty('healthBar.alpha', 0)

        setProperty('iconP1.alpha', 0)
    
        setProperty('iconP2.alpha', 0)
    
    else
        addLuaText('score')
        addLuaText('time')
        addLuaText('misses')

        addLuaText('scorecount')
        addLuaText('timecount')
        addLuaText('missescount')

        setProperty('healthBar.alpha', 0)

        setProperty('iconP1.alpha', 0)
    
        setProperty('iconP2.alpha', 0)

    end
end
function onStartCountdown()

	setProperty('scoreTxt.alpha', 0)
    setProperty('timeBar.alpha', 0)
    setProperty('timeTxt.alpha', 0)
    setProperty('gf.alpha', 0)

	return Function_Continue
end
