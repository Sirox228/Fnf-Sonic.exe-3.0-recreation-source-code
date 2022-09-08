function onCreate()


	makeLuaSprite('color','Sunky Stage/rainbow-color',-500,-330)
	addLuaSprite('color',false)
	setScrollFactor('color', 1.85, 1.1);
	scaleObject('color', 0.9, 0.9);

	makeLuaSprite('wall','Sunky Stage/wall',-500,-330)
	addLuaSprite('wall',false)
	setScrollFactor('wall', 0.9, 0.9);
	scaleObject('wall', 0.9, 0.9);

	makeLuaSprite('front','Sunky Stage/front',-500,-330)
	addLuaSprite('front',false)
	setScrollFactor('front', 0.9, 0.9);
	scaleObject('front', 0.9, 0.9);

	makeLuaSprite('loudspeaker','Sunky Stage/loudspeaker',-500,-330)
	addLuaSprite('loudspeaker',false)
	setScrollFactor('loudspeaker', 0.9, 0.9);
	scaleObject('loudspeaker', 0.9, 0.9);

	makeLuaSprite('milk','Sunky Stage/milk',-500,-330)
	addLuaSprite('milk',false)
	setScrollFactor('milk', 0.6, 0.9);
	scaleObject('milk', 0.9, 0.9);

	makeLuaSprite('knux','Sunky Stage/knux',-560,-200)
	addLuaSprite('knux',true)
	setScrollFactor('knux', 1.1, 0.9);
	scaleObject('knux', 0.9, 0.8);

	makeLuaSprite('tails','Sunky Stage/tails',-300,-200)
	addLuaSprite('tails',true)
	setScrollFactor('tails', 0.5, 0.9);
	scaleObject('tails', 0.9, 0.8);

	makeAnimatedLuaSprite('milk-bg', 'Sunky Stage/milk-bg', -650, -560);
    addAnimationByPrefix('milk-bg', 'idle', 'milk bg', 20, true);
    scaleObject('milk-bg',1,1)
	setObjectOrder('milk-bg', 5)
	setProperty('milk-bg.alpha', 0)

end
function onStepHit()
 	if curStep == 908 then
		setProperty('boyfriend.x', 420)
		setProperty('boyfriend.scale.x', 0.6)
		setProperty('boyfriend.scale.y', 0.6)

		setProperty('dad.scale.x', 0.8)
		setProperty('dad.scale.y', 0.8)

		setProperty('milk-bg.alpha', 1)
     	setProperty('tails.alpha', 0)
		setProperty('knux.alpha', 0)
		setProperty('defaultCamZoom', 0.83)
		end
    if curStep == 1425 then
		setProperty('boyfriend.x', 550)
		setProperty('boyfriend.scale.x', 0.8)
		setProperty('boyfriend.scale.y', 0.8)

		setProperty('dad.scale.x', 1)
		setProperty('dad.scale.y', 1)

		setProperty('tails.alpha', 1)
		setProperty('knux.alpha', 1)
		setProperty('milk-bg.alpha', 0)
		setProperty('defaultCamZoom', 0.75)
    end
end

