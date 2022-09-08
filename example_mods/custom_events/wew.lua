function onEvent(name, value1, value2)
	if name == 'wew' then
		makeLuaSprite('f', 'majinthing/'..value1,0, 0);
		screenCenter('f', 'xy')
		addLuaSprite('f', 'false');
		setObjectCamera('f', 'other');
		doTweenAlpha('f','f',0,0.4,'sineOut')
	end
	if name == 'wew' then
		if value2 == 'blue' then
			makeLuaSprite('fe', 'redVG',0, 0);
		screenCenter('fe', 'xy')
		addLuaSprite('fe', 'false');
		setObjectCamera('fe', 'other');
		end
	end
end