    function onCreate()

        makeLuaSprite('toyblackbg','blackbg',-500,-330)
        addLuaSprite('toyblackbg',false)
        setScrollFactor('toyblackbg', 0.9, 0.9);

        makeLuaSprite('black', 'blackscreen', 0,0)
        addLuaSprite('black', false)
        setObjectCamera('black', 'camother')
    
end