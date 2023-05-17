function onCreate()
makeLuaSprite('erection','S', 0, 0);
setProperty('erection.alpha',0)
scaleObject('erection', 1.3333332, 1.3333332);
    addLuaSprite('erection', false);
	setObjectCamera('erection', 'Other')
setObjectOrder('erection', '100')

    makeLuaSprite('NegroQliado', '', 0, 0)
	setScrollFactor('NegroQliado', 0, 0)
	makeGraphic('NegroQliado', 3840, 2160, '000000')
	addLuaSprite('NegroQliado', true)
	screenCenter('NegroQliado', 'xy')
setProperty('NegroQliado.alpha',1)
setObjectCamera('NegroQliado', 'Other')
setObjectOrder('NegroQliado', 299)

setProperty('camHUD.alpha',0)

end
function onStepHit()
if curStep == 63 then
doTweenAlpha('NegroQliado','NegroQliado',0,2,'linear')
elseif curStep == 96 then
doTweenAlpha('camHUD','camHUD',1,1.5,'linear')
elseif curStep == 384 then
doTweenAlpha('camHUD','camHUD',0,1.5,'linear')
elseif curStep == 432 then
doTweenAlpha('camHUD','camHUD',1,0.3,'linear')
elseif curStep == 1324 then
doTweenAlpha('erection','erection',1,1,'linear')
elseif curStep == 1447 then
doTweenAlpha('NegroQliado','NegroQliado',1,1,'linear')
elseif curStep == 1456 then
doTweenAlpha('erection','erection',0,0.4,'linear')
doTweenAlpha('NegroQliado','NegroQliado',0,0.4,'linear')
elseif curStep == 2227 then
doTweenAlpha('erection','erection',1,0.4,'linear')
doTweenAlpha('NegroQliado','NegroQliado',1,0.4,'linear')
elseif curStep == 2272 then
doTweenAlpha('NegroQliado','NegroQliado',0.1,0.4,'linear')
elseif curStep == 2530 then
doTweenAlpha('NegroQliado','NegroQliado',1,5,'linear')
end
end

