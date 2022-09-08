local xx = 520;
local yy = 450;
local xx2 = 820;
local yy2 = 450;
local xx3 = 520;
local yy3 = 450;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdate()
	    noteTweenX('0',0,defaultOpponentStrumX0-9999999999999999,0.01,'linear')
	    noteTweenX('1',1,defaultOpponentStrumX1-9999999999999999,0.01,'linear')
	    noteTweenX('2',2,defaultOpponentStrumX2-9999999999999999,0.01,'linear')
	    noteTweenX('3',3,defaultOpponentStrumX3-9999999999999999,0.01,'linear')
		noteTweenX('4',4,defaultPlayerStrumX0-320,0.01,'linear')
		noteTweenX('5',5,defaultPlayerStrumX1-320,0.01,'linear')
		noteTweenX('6',6,defaultPlayerStrumX2-320,0.01,'linear')
		noteTweenX('7',7,defaultPlayerStrumX3-320,0.01,'linear')
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end
