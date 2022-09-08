--Script made by Luther Tom
local texture = 'BloodSplash' --image path goes here

function onCreate()

end

function onStartCountdown()
    makeAnimatedLuaSprite('splashLeft', texture)
    makeAnimatedLuaSprite('splashDown', texture)
    makeAnimatedLuaSprite('splashUp', texture)
    makeAnimatedLuaSprite('splashRight', texture)

    for i=1, 3 do
        addAnimationByPrefix('splashLeft', 'splash' ..i, 'note splash purple ' ..i, 12, false)
        addAnimationByPrefix('splashDown', 'splash' ..i, 'note splash blue ' ..i, 12, false)
        addAnimationByPrefix('splashUp', 'splash' ..i, 'note splash green ' ..i, 12, false)
        addAnimationByPrefix('splashRight', 'splash' ..i, 'note splash red ' ..i, 12, false)
    end

    setProperty('splashLeft.alpha', 1)
    setProperty('splashDown.alpha', 1)
    setProperty('splashUp.alpha', 1)
    setProperty('splashRight.alpha', 1)

    setObjectCamera('splashLeft', 'camHUD')
    setObjectCamera('splashDown', 'camHUD')
    setObjectCamera('splashUp', 'camHUD')
    setObjectCamera('splashRight', 'camHUD')

    setProperty('splashLeft.visible', false)
    setProperty('splashDown.visible', false)
    setProperty('splashUp.visible', false)
    setProperty('splashRight.visible', false)

    setProperty('splashLeft.offset.x', 10)
    setProperty('splashLeft.offset.y', 10)
    setProperty('splashDown.offset.x', 10)
    setProperty('splashDown.offset.y', 10)
    setProperty('splashUp.offset.x', 10)
    setProperty('splashUp.offset.y', 10)
    setProperty('splashRight.offset.x', 10)
    setProperty('splashRight.offset.y', 10)

    setObjectOrder('splashLeft', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashDown', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashUp', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashRight', getObjectOrder('grpNoteSplashes'))

    addLuaSprite('splashLeft')
    addLuaSprite('splashDown')
    addLuaSprite('splashUp')
    addLuaSprite('splashRight')
    return Function_Continue
end

function goodNoteHit(id, dir, type, sus)
    if dir == 0 and not sus then
        setProperty('splashLeft.x', getPropertyFromGroup('playerStrums', 0, 'x')-(135*0.9)*0.95)
        setProperty('splashLeft.y', getPropertyFromGroup('playerStrums', 0, 'y')-(135*0.9))
        setProperty('splashLeft.visible', true)
    	scaleObject('splashLeft', 1, 1);
        objectPlayAnimation('splashLeft', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashLeft.animation.curAnim.frameRate', 10)
    elseif dir == 1 and not sus  then
        setProperty('splashDown.x', getPropertyFromGroup('playerStrums', 1, 'x')-(135*0.9)*0.95)
        setProperty('splashDown.y', getPropertyFromGroup('playerStrums', 1, 'y')-(135*0.9))
        setProperty('splashDown.visible', true)
    	scaleObject('splashDown', 1, 1);
        objectPlayAnimation('splashDown', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashDown.animation.curAnim.frameRate', 10)
    elseif dir == 2 and not sus then
        setProperty('splashUp.x', getPropertyFromGroup('playerStrums', 2, 'x')-(135*0.9)*0.95)
        setProperty('splashUp.y', getPropertyFromGroup('playerStrums', 2, 'y')-(135*0.9))
        setProperty('splashUp.visible', true)
    	scaleObject('splashUp', 1, 1);
        objectPlayAnimation('splashUp', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashUp.animation.curAnim.frameRate', 10)
    elseif dir == 3 and not sus then
        setProperty('splashRight.x', getPropertyFromGroup('playerStrums', 3, 'x')-(135*0.9)*0.95)
        setProperty('splashRight.y', getPropertyFromGroup('playerStrums', 3, 'y')-(135*0.9))
        setProperty('splashRight.visible', true)
    	scaleObject('splashRight', 1, 1);
        objectPlayAnimation('splashRight', 'splash'.. getRandomInt(1,1), true)
        setProperty('splashRight.animation.curAnim.frameRate', 10)
    end
end

function onUpdate()
    if getProperty('splashLeft.animation.curAnim.finished') and getProperty('splashLeft.visible') then
        setProperty('splashLeft.visible', false)
    end
    if getProperty('splashDown.animation.curAnim.finished') and getProperty('splashDown.visible') then
        setProperty('splashDown.visible', false)
    end
    if getProperty('splashUp.animation.curAnim.finished') and getProperty('splashUp.visible') then
        setProperty('splashUp.visible', false)
    end
    if getProperty('splashRight.animation.curAnim.finished') and getProperty('splashRight.visible') then
       setProperty('splashRight.visible', false)
    end
end

