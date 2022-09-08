-- Base Detect
local defaultVert = false
local defaultHori = false
local Vertical = false -- True is downscroll, false is upscroll
local Horizontal = false -- True is middlescroll, false is sidescroll
local updateLabels = false
--local chartingMode = getPropertyFromClass('PlayState', 'chartingMode')

function onCreatePost()
	chartingMode = getPropertyFromClass('PlayState', 'chartingMode')
	Vertical = downscroll
	defaultVert = Vertical
	Horizontal = middlescroll
	defaultHori = Horizontal
	if chartingMode then
		updateLabels = true
		-- Label's to see Defaults
		makeLuaText('defaultslabel', "   Default's: " .. (ñ) .. " and " .. (defaultHori and "Middlescroll" or "Sidescroll"),x, y, 340);
		setProperty('defaultslabel.pos.x', getProperty('Vert.pos.x'));
		setProperty('defaultslabel.pos.y', getProperty('Vert.pos.y'));
		setTextSize('defaultslabel', 24);
		setProperty('defaultslabel' ..'.borderColor', getColorFromHex('000000'));
		setProperty('defaultslabel' ..'.borderSize', 1.2);
		-- Cool, shitty title
		makeLuaText('titlingthisshit', '    Current Scrolltypes', x, y, 370);
		setProperty('titlingthisshit.pos.x', getProperty('Vert.pos.x'));
		setProperty('titlingthisshit.pos.y', getProperty('Vert.pos.y'));
		setTextSize('titlingthisshit', 34);
		setProperty('titlingthisshit' ..'.borderColor', getColorFromHex('000000'));
		setProperty('titlingthisshit' ..'.borderSize', 1.2);
		-- Vertical Label
		makeLuaText('Vert', (Vertical and "on" or "off"), x, y, 400);
		setProperty('Vert.scale.x', getProperty('scoreTxt.scale.x'));
		setProperty('Vert.scale.y', getProperty('scoreTxt.scale.y'));
		setTextSize('Vert', 48);
		setProperty('Vert' ..'.borderColor', getColorFromHex('000000'));
		setProperty('Vert' ..'.borderSize', 1.2);
		-- Horizontal Label
		makeLuaText('Hori', (Horizontal and "on" or "off"), x, y, 450);
		setProperty('Hori.pos.x', getProperty('Vert.pos.x'))
		setProperty('Hori.pos.y', getProperty('Vert.pos.y'))
		setProperty('Hori.scale.x', getProperty('scoreTxt.scale.x'))
		setProperty('Hori.scale.y', getProperty('scoreTxt.scale.y'))
		setTextSize('Hori', 48);
		setProperty('Hori' ..'.borderColor', getColorFromHex('000000'));
		setProperty('Hori' ..'.borderSize', 1.2);
		-- Section Label
		makeLuaText('sectionCheck', tostring(sectionCheck), x, y, 500);
		setProperty('sectionCheck.pos.x', getProperty('Hori.pos.x'))
		setProperty('sectionCheck.pos.y', getProperty('Hori.pos.y'))
		setProperty('sectionCheck.scale.x', getProperty('scoreTxt.scale.x'))
		setProperty('sectionCheck.scale.y', getProperty('scoreTxt.scale.y'))
		setTextSize('sectionCheck', 48);
		setProperty('sectionCheck' ..'.borderColor', getColorFromHex('000000'));
		setProperty('sectionCheck' ..'.borderSize', 1.2);

		addLuaText('defaultslabel');
		addLuaText('titlingthisshit');
		addLuaText('Vert');
		addLuaText('Hori');
	end
end

function onUpdate()
	if (updateLabels) then
		setProperty('Vert.text', '  Downscroll: ' .. (Vertical and "On" or "Off"))
		setProperty('Hori.text', '  Middlescroll: ' .. (Horizontal and "On" or "Off"))
		setProperty('sectionCheck.text', '  Section: ' .. (gfSection and 'Dancer' or mustHitSection and "Player" or "Opponent"))
	end
end

function onUpdatePost(elapsed)
	if botPlay then
		if getPropertyFromClass("flixel.FlxG","keys.justPressed.F") then
			triggerEvent('Change Scrolltype', '', 'off')
		elseif getPropertyFromClass("flixel.FlxG", "keys.justPressed.H") then
			triggerEvent('Change Scrolltype', 'on', '')
		elseif getPropertyFromClass("flixel.FlxG", "keys.justPressed.T") then
			triggerEvent('Change Scrolltype', 'off', '')
		elseif getPropertyFromClass("flixel.FlxG", "keys.justPressed.G") then
			triggerEvent('Change Scrolltype', '', 'on')
		end
	end
end

function onEvent(name, value1, value2)
	if name == 'Change Scrolltype' then
		-- Vertical Scrolltypes
		if value1 == 'off' or value1 == 'on' then -- Switch to Upscroll
			Vertical = (value1 == "on")
		elseif value1 == 'swap' then -- Swap between Up and Downscroll
			Vertical = not Vertical
		elseif value1 == 'default' then -- Switch Back to Default Scrolltype
			Vertical = defaultVert
		end

		-- Horizontal Scrolltypes
		if value2 == 'off' or value2 == 'on' then -- Switch to Upscroll
			Horizontal = (value2 == "on")
		elseif value2 == 'swap' then -- Swap between Up and Downscroll
			Horizontal = not Horizontal
		elseif value2 == 'default' then -- Switch Back to Default Scrolltype
			Horizontal = defaultHori
		end

		--[[ Weird Shit but it's cool - Doesn't work properly tho will make a on a separate script
		if value2 == 'unfunny' then
			addLuaScript('scripts/scrolltypes/funnyStuffMan')
			if chartingMode then
				addLuaText('sectionCheck');
			end
		elseif value2 == 'funny' then
			removeLuaScript('scripts/scrolltypes/funnyStuffMan')
			if chartingMode then
				removeLuaText('sectionCheck', false);
			end
		end]]



		-- Up and Downscroll
		for i = 0, 7 do
			if downscroll then
				noteTweenDirection('scrollDir' .. i, i, (Vertical and 90 or -90), 1, 'elasticOut')
				if Vertical == false then
					noteTweenY('moveNoteY' .. i, i, 150, 1, 'elasticOut')
				else
					noteTweenY('moveNoteY' .. i, i, 570, 1, 'elasticOut')
				end
			else
				noteTweenDirection('scrollDir' .. i, i, (Vertical and -90 or 90), 1, 'elasticOut')
				if Vertical == false then
					noteTweenY('moveNoteY' .. i, i, 50, 1, 'elasticOut')
				else
					noteTweenY('moveNoteY' .. i, i, 500, 1, 'elasticOut')
				end
			end
		end


		-- Side and Middlescroll
		if Horizontal then
			noteTweenX('moveNoteX0', 0, 92, 1, 'elasticOut');
			noteTweenX('moveNoteX1', 1, 204, 1, 'elasticOut');
			noteTweenX('moveNoteX2', 2, 956, 1, 'elasticOut');
			noteTweenX('moveNoteX3', 3, 1068, 1, 'elasticOut');

			noteTweenX('moveNoteX4', 4, 416, 1, 'elasticOut');
			noteTweenX('moveNoteX5', 5, 528, 1, 'elasticOut');
			noteTweenX('moveNoteX6', 6, 640, 1, 'elasticOut');
			noteTweenX('moveNoteX7', 7, 752, 1, 'elasticOut');

			for i = 0, 3 do
				noteTweenAlpha('alphaNote' .. i, i, 0.5, 1, linear)
			end
		else
			noteTweenX('moveNoteX0', 0, 92, 1, 'elasticOut');
			noteTweenX('moveNoteX1', 1, 204, 1, 'elasticOut');
			noteTweenX('moveNoteX2', 2, 316, 1, 'elasticOut');
			noteTweenX('moveNoteX3', 3, 428, 1, 'elasticOut');
		
			noteTweenX('moveNoteX4', 4, 732, 1, 'elasticOut');
			noteTweenX('moveNoteX5', 5, 844, 1, 'elasticOut');
			noteTweenX('moveNoteX6', 6, 956, 1, 'elasticOut');
			noteTweenX('moveNoteX7', 7, 1068, 1, 'elasticOut');
		
			for i = 0, 3 do
				noteTweenAlpha('alphaNote' .. i, i, 1, 1, linear)
			end
		end
	end
end

function onEndSong()
	for i = 0,7 do
		cancelTween('scrollDir' .. i)
		cancelTween('moveNoteY' .. i)
		cancelTween('moveNoteX' .. i)
		cancelTween('alphaNote' .. i)
	end
	return Function_Continue
end

function onGameOver()
	for i = 0,7 do
		cancelTween('scrollDir' .. i)
		cancelTween('moveNoteY' .. i)
		cancelTween('moveNoteX' .. i)
		cancelTween('alphaNote' .. i)
	end
	return Function_Continue
end


-- Cleaned up and fixed by Superpowers#3887
-- Made by ImaginationSuperHero52806#2485 and JasonTheOne111#1000