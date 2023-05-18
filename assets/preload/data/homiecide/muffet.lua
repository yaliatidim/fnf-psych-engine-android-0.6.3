
function onCreate()

makeAnimatedLuaSprite('riko','dustswap/FB/Chars/muffet', -550, 450);
scaleObject('riko', 2.0, 2.0);
addAnimationByPrefix('riko','follable','muffet_idle',24);
addAnimationByPrefix('riko','notFollable','muffet_DIES',24);
addLuaSprite('riko', true);
setProperty('riko.alpha', 0);
objectPlayAnim('riko', 'follable', false);

end
function onStepHit()
if curStep == 944 then
setProperty('riko.alpha', 1);
end
if curStep == 1360 then
objectPlayAnim('riko', 'notFollable', false);
end
if curStep == 1367 then
doTweenAlpha('riko','riko',0,1,'linear')
end
end