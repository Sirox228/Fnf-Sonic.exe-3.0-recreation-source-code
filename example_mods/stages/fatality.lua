function onCreate()

	setProperty('camGame.zoom', 0.72)

	makeLuaSprite('skyer','fatal/skyer',-500,-330)
	addLuaSprite('skyer',false)
	setScrollFactor('skyer', 0.9, 0.9);
	scaleObject('skyer', 1.1, 1.1);

	makeLuaSprite('bf2','fatal/bf2',-500,-330)
	addLuaSprite('bf2',false)
	setScrollFactor('bf2', 1, 1);
	scaleObject('bf2', 1.1, 1.1);

	makeLuaSprite('skyblack','fatal/skyblack',-500,-330)
	addLuaSprite('skyblack',false)
	setScrollFactor('skyblack', 0.9, 0.9);
	scaleObject('skyblack', 1.1, 1.1);

	makeLuaSprite('exfatal','fatal/exfatal',-500,-330)
	addLuaSprite('exfatal',false)
	setScrollFactor('exfatal', 1, 1);
	scaleObject('exfatal', 1.1, 1.1);

	makeLuaSprite('bf1','fatal/bf1',-500,-330)
	addLuaSprite('bf1',false)
	setScrollFactor('bf1', 1, 1);
	scaleObject('bf1', 1.1, 1.1);


	makeLuaSprite('lolbg','fatal/lolbg',-850,-830)
	addLuaSprite('lolbg',false)
	scaleObject('lolbg', 1.5, 1.5);
	scaleObject('boyfriend', 1.5, 1.5);
	scaleObject('dad', 1.5, 1.5);

	makeLuaSprite('lolfront','fatal/lolfront',-880,-130)
	addLuaSprite('lolfront',true)
	setScrollFactor('lolfront', 0.8, 0.8);
	scaleObject('lolfront', 1.5, 1);


	makeLuaSprite('black', 'blackscreen', 0,0)
	addLuaSprite('black', false)
	setObjectCamera('black', 'camother')


end
function onStepHit()
	if curStep >= 0 then
		setProperty('black.visible', false)
		setProperty('blackscreen.visible', false)
	 end
 if curStep >= 318 then
    Fatal1()
	setProperty('boyfriend.scale.y', 1.2 )
	setProperty('boyfriend.scale.x', 1.2 )
	setProperty('defaultCamZoom', 0.6)
 end
 if curStep >= 2800 then
    Fatal2()
	noteround3()
	setProperty('dad.scale.y', 2 )
	setProperty('dad.scale.x', 2 )
	setProperty('boyfriend.scale.y', 0.3 )
	setProperty('boyfriend.scale.x', 0.3 )
	setProperty('defaultCamZoom', 0.58)
	end
end
function Fatal1()
	setProperty('lolbg.visible', false)
	setProperty('lolfront.visible', false)
	setProperty('boyfriend.x', 150)
	setProperty('boyfriend.y', 600)

	setProperty('dad.x', 1200)
	setProperty('dad.y', -150)
end
function Fatal2()
	setProperty('skyblack.visible', false)
	setProperty('bf1.visible', false)
	setProperty('exfatal.visible', false)
	
	setProperty('boyfriend.x', 1080)
	setProperty('boyfriend.y', 230)

	setProperty('dad.x', -100)
	setProperty('dad.y', -500)

end
function noteround3()
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)

	noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
	noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

	noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
	noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)

end



 