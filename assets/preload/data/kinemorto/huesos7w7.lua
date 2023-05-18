function onCreate()

	makeAnimatedLuaSprite('huesosUwU','1m/paps', 1300, 0);
		addAnimationByPrefix('huesosUwU','paps','bone',28);
	addLuaSprite('huesosUwU', false);
 setObjectCamera('huesosUwU', 'Other')
objectPlayAnim('huesosUwU', 'paps', false);
scaleObject('huesosUwU', 2.0, 2.0);

end
function onStepHit()
if curStep == 176 then
doTweenX('huesosUwU','huesosUwU',960,5,'linear')
end
if curStep == 800 then
doTweenAlpha('huesosUwU','huesosUwU',0,1,'linear')
end
end