
function onCreate()
makeAnimatedLuaSprite('temmie','dustswap/FB/Chars/temmie', 800, 615);
addAnimationByPrefix('temmie','emi','temmie_idle',24);
addAnimationByPrefix('temmie','die','temmie_DIES',24);
addLuaSprite('temmie', false);
objectPlayAnim('temmie', 'emi', false);
setProperty('temmie.alpha', 0);
setObjectOrder('conejos', 4)

end
function onStepHit()
if curStep == 944 then
setProperty('temmie.alpha', 1);
end
if curStep == 1327 then
objectPlayAnim('temmie', 'die', false);
end
if curStep == 1336 then
doTweenAlpha('temmie','temmie',0,1,'linear')
end
end