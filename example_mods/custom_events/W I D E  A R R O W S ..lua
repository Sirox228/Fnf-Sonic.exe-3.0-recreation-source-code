-- code by Identity123
function onEvent(name, value1, value2)
    if name == 'W I D E  A R R O W S .' then
noteTweenAlpha('higood1', 4, 100, value1, linear);
noteTweenAlpha('higood2',5, 100, value1, linear);
noteTweenAlpha('higood3', 6, 100, value1, linear);
noteTweenAlpha('higood4', 7, 100, value1, linear);

noteTweenAlpha('byebad1', 0, 0, value1, linear);
noteTweenAlpha('byebad2', 1, 0, value1, linear);
noteTweenAlpha('byebad3', 2, 0, value1, linear);
noteTweenAlpha('byebad4', 3, 0, value1, linear);

noteTweenX('mlg',4, 92.3, value1,'linear');
noteTweenX('mdg',5, 410, value1,'linear');
noteTweenX('mug',6, 745, value1,'linear');
noteTweenX('mrg',7, 1080, value1,'linear');
end
end