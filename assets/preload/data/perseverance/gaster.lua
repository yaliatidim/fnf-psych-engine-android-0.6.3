function onCreate()
makeAnimatedLuaSprite('pistolaUsa', '1m/gasterblaster', 200,-1500);
	addAnimationByPrefix('pistolaUsa', 'blaster_idle', 'blaster_idle', 24, false);
    scaleObject('pistolaUsa', 4, 4);
	addLuaSprite('pistolaUsa', true);
    objectPlayAnimation('pistolaUsa', 'blaster_idle', false);
end
function onStepHit()
if curStep == 2256 then
doTweenY('pistolaUsa', 'pistolaUsa', 350, 0.7, 'linear')
elseif curStep == 2264 then
setProperty('pistolaUsa.alpha', 0)
end
end

