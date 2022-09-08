function onCreate()

	setProperty('camGame.zoom', 0.72)
	setProperty('gf.alpha', 0)

	makeLuaSprite('GARRY','too-fest/GARRY',-500,-330)
	addLuaSprite('GARRY',false)
	setScrollFactor('GARRY', 0.9, 0.9);
	scaleObject('GARRY', 1.1, 1.1);

	makeLuaSprite('screen', 'too-fest/viewYT', 0,0)
	addLuaSprite('screen', false)
	scaleObject('screen', 0.63, 0.62);
	setObjectCamera('screen', 'camother')
end
function onStartCountdown()
    setProperty('watermark.alpha', 0)
	setProperty('scoreTxt.alpha', 0)
    setProperty('healthBar.alpha', 0)
    setProperty('iconP1.alpha', 0)
    setProperty('iconP2.alpha', 0)
	setProperty('timeTxt.x', 80)
	setProperty('timeTxt.y', 475)
	setTextFont('timeTxt', 'pixel.ttf')
    makeLuaText('timeScore',"/ 2:11",  0, 310, 475)
    setTextFont('timeScore', 'pixel.ttf')
    setTextSize('timeScore', 32);
    addLuaText('timeScore');

    setProperty('timeBar.x', 445)
	setProperty('timeBar.y', 445)
    setProperty('timeBar.scale.x', 2.7)
    setProperty('timeBarBG.scale.x', 2.7)
    setProperty('timeBar.scale.y', 0.5)
    setProperty('timeBarBG.scale.y', 0.5)
	setProperty('timeBarBG.visible', false)
    setProperty('timeBar.color', getColorFromHex('FF0000'))
	return Function_Continue
end




 