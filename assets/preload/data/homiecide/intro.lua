function onCreate()
    makeLuaSprite('cajaUwU','1vienvenidos_a_tamaulipas/caja', 0, 1000);
	addLuaSprite('cajaUwU', false);
    scaleObject('cajaUwU', 2.3, 2.3);
    setObjectCamera('cajaUwU', 'Other')
   screenCenter('cajaUwU', 'x');
setObjectOrder('cajaUwU', 300)

   makeLuaSprite('linia','1vienvenidos_a_tamaulipas/po', 0, 400);
	addLuaSprite('linia', false);
    scaleObject('linia', 0, 2.3);
    setObjectCamera('linia', 'Other')
   screenCenter('linia', 'x');
setObjectOrder('linia', 301)
   
    makeLuaText('name', 'HOMIECIDE', screenWidth, 0, 1000)
    setTextSize('name', 45);
   setTextFont('name','fallen-down.ttf')
   setObjectCamera('name', 'Other')
    screenCenter('name', 'x');
    setTextColor('name', 'FFFFFF')
    addLuaText('name');
    addLuaText('name', true)
setObjectOrder('name', 302)

    makeLuaText('credit1', '', screenWidth, 0, 510)
    setTextSize('credit1', 15);
   setTextFont('credit1','fallen-down.ttf')
   setObjectCamera('credit1', 'Other')
    screenCenter('credit1', 'x');
    setTextColor('credit1', 'FFFFFF')
    addLuaText('credit1');
    addLuaText('credit1', true)
setObjectOrder('credit1', 303)

    makeLuaText('credit2', '', screenWidth, 0, 540)
    setTextSize('credit2', 15);
   setTextFont('credit2','fallen-down.ttf')
   setObjectCamera('credit2', 'Other')
    screenCenter('credit2', 'x');
    setTextColor('credit2', 'FFFFFF')
    addLuaText('credit2');
    addLuaText('credit2', true)
setObjectOrder('credit2', 304)

end
function onStepHit()
if curStep == 1 then
doTweenY('cajaUwU', 'cajaUwU', 400, 1, 'CircInOut')
doTweenY('name', 'name', 410, 1, 'CircInOut')
end
if curStep == 6 then
doTweenX('linia', 'linia.scale', 2.3, 1, 'CircInOut')
end
if curStep == 15 then
setTextString('credit1', 'By');
end
if curStep == 16 then
setTextString('credit1', 'By: W');
end
if curStep == 17 then
setTextString('credit1', 'By: Was');
end
if curStep == 18 then
setTextString('credit1', 'By: Wassa');
end
if curStep == 19 then
setTextString('credit1', 'By: Wassabi');
end
if curStep == 20 then
setTextString('credit1', 'By: WassabiSo');
end
if curStep == 21 then
setTextString('credit1', 'By: WassabiSoya');
end

if curStep == 22 then
setTextString('credit2', 'FT');
end
if curStep == 23 then
setTextString('credit2', 'FT: d');
end
if curStep == 24 then
setTextString('credit2', 'FT: dav');
end
if curStep == 25 then
setTextString('credit2', 'FT: david');
end
if curStep == 26 then
setTextString('credit2', 'FT: david04');
end
if curStep == 27 then
setTextString('credit2', 'FT: david0414');
end

if curStep == 30 then
doTweenY('cajaUwU', 'cajaUwU', 750, 1.5, 'CircInOut')
doTweenY('linia', 'linia', 800, 1.5, 'CircInOut')
doTweenY('name', 'name', 800, 1.5, 'CircInOut')
doTweenY('credit1', 'credit1', 800, 1.5, 'CircInOut')
doTweenY('credit2', 'credit2', 800, 1.5, 'CircInOut')
end
end
