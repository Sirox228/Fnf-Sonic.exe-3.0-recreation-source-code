function onEvent(name, value1, value2)
    local var string = (value1)
    local var color = (value2)
    if name == "Lyrics" then

        makeLuaText('captions', 'Lyrics go here', 1000, 150, 620)
        setTextString('captions',  '' .. string)
        setTextColor('FF0000', FF0000)
        setTextSize('captions', 35);
        addLuaText('captions')
	    setObjectCamera('captions', 'other');
        setTextAlignment('captions', 'center')
        setTextFont('captions', 'pixel.ttf')
        --removeLuaText('captions', true)
        runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'captions', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('captions', true);
	end
end

