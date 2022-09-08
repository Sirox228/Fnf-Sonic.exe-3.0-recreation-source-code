function onCreate()
makeLuaText('watermark', songName .. " | DEMO BUILD - PE 0.5.2h", 0, 20, 690); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark', 25);
    addLuaText('watermark');
    setTextFont('watermark', 'pixel.ttf')
    setObjectCamera('watermark', 'camother')
end
function onBeatHit()
setProperty('iconP1.scale.x', 1)
setProperty('iconP1.x', 1)
setProperty('iconP2.scale.x', 1)
setProperty('iconP2.x', 1)
end