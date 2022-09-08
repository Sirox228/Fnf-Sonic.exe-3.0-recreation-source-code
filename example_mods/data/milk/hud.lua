local hidestuff = false

function onCreatePost()
	setPropertyFromClass('ClientPrefs', 'songScoreType', 'Score Elapsed') 

    makeLuaText('score', 'SCORE:', 0, 780, 690)
    addLuaText('score')
    setTextFont('score', 'pixel.ttf')
    setTextBorder('score', '0')
    setTextSize('score', 22);
    
    makeLuaText('scorecount', '', 0, 810, 690)
    addLuaText('scorecount')
    setTextFont('scorecount', 'pixel.ttf')
    setTextBorder('scorecount', '0')
    setTextSize('scorecount', 22);
end
function onUpdate()
    setTextString('scorecount', '        ' .. getProperty('songScore'))
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

        setProperty('healthBar.alpha', 1)

        setProperty('iconP1.alpha', 1)
    
        setProperty('iconP2.alpha', 1)

    end
end
