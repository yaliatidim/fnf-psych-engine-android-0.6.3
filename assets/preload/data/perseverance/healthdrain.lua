
function onCreate()
boneBlockUwU = 0.4 
boneBlockUwUSpriteX = 850    
LaRealGrasa = false

makeAnimatedLuaSprite('HuesoViolador','1m/bone_assets', boneBlockUwUSpriteX, (downscroll and -500 or 800));
addAnimationByPrefix('HuesoViolador','E','bone idle',18);
scaleObject('HuesoViolador', 1, 1 * (downscroll and -1 or 1));
addLuaSprite('HuesoViolador', false);
setProperty('HuesoViolador.antialiasing', false)
setObjectCamera('HuesoViolador', 'other');
objectPlayAnim('HuesoViolador', 'E', true);

end

function onUpdate()
	health = getProperty('health')
	if (LaRealGrasa == true) and (health > boneBlockUwU) then
			setProperty('health', boneBlockUwU)
	end
end
function onStepHit()
if curStep == 1829 then
doTweenY('HuesoViolador', 'HuesoViolador', 528, 0.7, 'linear')
elseif curStep == 1832 then
LaRealGrasa = true
elseif curStep == 2063 then
doTweenAlpha('HuesoViolador', 'HuesoViolador', 0, 0.7, 'linear')
LaRealGrasa = false
elseif curStep == 2526 then
doTweenAlpha('HuesoViolador', 'HuesoViolador', 1, 0.2, 'linear')
elseif curStep == 2528  then
LaRealGrasa = true
elseif curStep == 2784 then
doTweenAlpha('HuesoViolador', 'HuesoViolador', 0, 0.0001, 'linear')
end
end