function onEvent(name, value1, value2)
	if name == 'BlackOut' then
		if value1 == 'true' then
			makeLuaSprite('black', 'blackscreen', 0,0)
			addLuaSprite('black', false)
			setObjectCamera('black', 'camother')
		elseif value1 == 'false' then
			setProperty('black.visible', false)
			setProperty('blackscreen.visible', false)
			end
		end
	end