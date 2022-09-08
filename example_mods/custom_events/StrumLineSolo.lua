
function onEvent(name, value1, value2)
    if name == 'StrumLineSolo' then
noteTweenAlpha('badarrowleftappear', 0, 25, value1, linear);
noteTweenAlpha('badarrowupappear', 1, 25, value1, linear);
noteTweenAlpha('badarrowdownappear', 2, 25, value1, linear);
noteTweenAlpha('badarrowrightappear', 3, 25, value1, linear);
end
if value2 == 'bad' then
noteTweenX('goawaygood1',4, 2000, value1+value1,'linear');
noteTweenX('goawaygood2',5, 2000, value1+value1,'linear');
noteTweenX('goawaygood3',6, 2000, value1+value1,'linear');
noteTweenX('goawaygood4',7, 2000, value1+value1,'linear');

noteTweenX('hellobad1',0, 410, value1,'linear');
noteTweenX('hellobad2',1, 522, value1,'linear');
noteTweenX('hellobad3',2, 633, value1,'linear');
noteTweenX('hellobad4',3, 745, value1,'linear');


end
if value2 =='good' then
noteTweenX('goawayfoolbad1',0, -2000, value1+value1,'linear');
noteTweenX('goawayfoolbad2',1, -2000, value1+value1,'linear');
noteTweenX('goodawayfoolbad3',2, -2000, value1,'linear');
noteTweenX('goawayfoolbad4',3, -2000, value1+value1,'linear');

noteTweenX('hellogood',4, 410, value1,'linear');
noteTweenX('hellogood1',5, 522, value1,'linear');
noteTweenX('hellogood2',6, 633, value1,'linear');
noteTweenX('hellogood3',7, 745, value1,'linear');
end
if value2 == 'badmid' then
noteTweenX('goawaygood1',4, 2000, value1+value1,'linear');
noteTweenX('goawaygood2',5, 2000, value1+value1,'linear');
noteTweenX('goawaygood3',6, 2000, value1+value1,'linear');
noteTweenX('goawaygood4',7, 2000, value1+value1,'linear');

noteTweenX('hellobad1',0, 410, value1,'linear');
noteTweenX('hellobad2',1, 522, value1,'linear');
noteTweenX('hellobad3',2, 633, value1,'linear');
noteTweenX('hellobad4',3, 745, value1,'linear');


end
if value2 =='goodmid' then
noteTweenX('goawayfoolbad1',0, -2000, value1+value1,'linear');
noteTweenX('goawayfoolbad2',1, -2000, value1+value1,'linear');
noteTweenX('goodawayfoolbad3',2, -2000, value1,'linear');
noteTweenX('goawayfoolbad4',3, -2000, value1+value1,'linear');

noteTweenX('hellogood',4, 410, value1,'linear');
noteTweenX('hellogood1',5, 522, value1,'linear');
noteTweenX('hellogood2',6, 633, value1,'linear');
noteTweenX('hellogood3',7, 745, value1,'linear');
end
if value2 == 'goodleft' then
noteTweenX('hellogoodmoveleft',4, 92.3, value1,'linear');
noteTweenX('hellogoodmoveup',5, 205, value1,'linear');
noteTweenX('hellogoodmovedown',6, 315, value1,'linear');
noteTweenX('hellogoodmoveright',7, 428,value1,'linear');

noteTweenX('bruhad1',0, 2000, value1,'linear');
noteTweenX('bruhd2',1, 2000, value1,'linear');
noteTweenX('bruhbad3',2, 2000, value1,'linear');
noteTweenX('btuhybad4',3, 200, value1,'linear');
end
if value2 == 'goodright' then
noteTweenX('hellogoodmoveleft',4, 750, value1,'linear');
noteTweenX('hellogoodmoveup',5, 860, value1,'linear');
noteTweenX('hellogoodmovedown',6, 970, value1,'linear');
noteTweenX('hellogoodmoveright',7, 1080,value1,'linear');

noteTweenX('bruhad1',0, -2000, value1,'linear');
noteTweenX('bruhd2',1, -2000, value1,'linear');
noteTweenX('bruhbad3',2, -2000, value1,'linear');
noteTweenX('btuhybad4',3, -2000, value1,'linear');
end
if value2 == 'badleft' then
noteTweenX('hellogoodmoveleft',0, 92.3, value1,'linear');
noteTweenX('hellogoodmoveup',1, 205, value1,'linear');
noteTweenX('hellogoodmovedown',2, 315, value1,'linear');
noteTweenX('hellogoodmoveright',3, 428,value1,'linear');

noteTweenX('bruhad1',4, 2000, value1,'linear');
noteTweenX('bruhd2',5, 2000, value1,'linear');
noteTweenX('bruhbad3',6, 2000, value1,'linear');
noteTweenX('btuhybad4',6, 200, value1,'linear');
end
if value2 == 'badright' then
noteTweenX('hellogoodmoveleft',0, 750, value1,'linear');
noteTweenX('hellogoodmoveup',1, 860, value1,'linear');
noteTweenX('hellogoodmovedown',2, 970, value1,'linear');
noteTweenX('hellogoodmoveright',3, 1080,value1,'linear');

noteTweenX('bruhad1',4, -2000, value1,'linear');
noteTweenX('bruhd2',5, -2000, value1,'linear');
noteTweenX('bruhbad3',6, -2000, value1,'linear');
noteTweenX('btuhybad4',7, -2000, value1,'linear');
end
end