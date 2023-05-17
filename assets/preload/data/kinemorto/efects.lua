function onCreate()
makeLuaSprite('erection','S', 0, 0);
setProperty('erection.alpha',0)
scaleObject('erection', 1.3333332, 1.3333332);
    addLuaSprite('erection', false);
	setObjectCamera('erection', 'Other')
setObjectOrder('erection', '100')

	makeLuaText('sus', 'sus', screenWidth, 0, (downscroll and 480 or 260));
    setTextSize('sus', 45);
   setTextFont('sus','fallen-down.ttf')
   setObjectCamera('sus', 'Other')
    screenCenter('sus', 'x');
    setTextColor('sus', 'FFFFFF')
    addLuaText('sus');
    addLuaText('sus', true)

    makeLuaSprite('NegroQliado', '', 0, 0)
	setScrollFactor('NegroQliado', 0, 0)
	makeGraphic('NegroQliado', 3840, 2160, '000000')
	addLuaSprite('NegroQliado', true)
	screenCenter('NegroQliado', 'xy')
setObjectCamera('NegroQliado', 'Other')
setProperty('NegroQliado.alpha',0)

end
function onStepHit()
if curStep == 800 then
doTweenAlpha('NegroQliado','NegroQliado',1,1,'linear')
end
if curStep == 864 then
doTweenAlpha('NegroQliado','NegroQliado',0,1,'linear')
end
if curStep == 1249 then
doTweenAlpha('erection','erection',1,1,'linear')
end
if curStep == 1376 then
doTweenAlpha('erection','erection',0,1,'linear')
end
if curStep == 1640 then
setProperty('NegroQliado.alpha',1)
end
end

