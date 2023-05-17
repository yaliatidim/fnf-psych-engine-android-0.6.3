
function onCreate()
makeAnimatedLuaSprite('conejo','dustswap/FB/Chars/conejo', 950, 415);
scaleObject('conejo', 2.0, 2.0);
addAnimationByPrefix('conejo','LaPaja','UwU',24);
addAnimationByPrefix('conejo','rikardo','presa',24);
addLuaSprite('conejo', true);
setProperty('conejo.alpha', 0);
objectPlayAnim('conejo', 'LaPaja', false);

end
function onStepHit()
if curStep == 944 then
setProperty('conejo.alpha', 1);
end
if curStep == 1424 then
objectPlayAnim('conejo', 'rikardo', false);
end
if curStep == 1432 then
doTweenAlpha('conejo','conejo',0,1,'linear')
end
end