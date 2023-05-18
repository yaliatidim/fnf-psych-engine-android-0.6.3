function onCreatePost()

setProperty('gf.alpha', 0);
end
function onCreate()
makeAnimatedLuaSprite('alerta', '1m/space_press', 800, 200);
	addAnimationByPrefix('alerta', 'space', 'space', 24, false);
	addLuaSprite('alerta', true);
    setProperty('alerta.alpha', 0)
    objectPlayAnimation('alerta', 'space', false);
	setObjectCamera('alerta', 'camHUD');
	scaleObject('alerta', 2.0, 2.0);

makeLuaSprite('anexoN', '', 0, 0)
	setScrollFactor('anexoN', 0, 0)
	makeGraphic('anexoN', 3840, 2160, '000000')
	addLuaSprite('anexoN', true)
	screenCenter('anexoN', 'xy')
setProperty('anexoN.alpha', 0.5)
 
    makeLuaSprite('aaaaaMi','perseverance/tripa', -20, 0);
    scaleObject('aaaaaMi', 6, 6);
	addLuaSprite('aaaaaMi', false);
setProperty('aaaaaMi.alpha', 0)
   
    makeLuaSprite('fodoP','perseverance/1', -800, -580);
   scaleObject('fodoP', 2.6, 2.6);
addLuaSprite('fodoP', false);
setProperty('fodoP.alpha', 1)
    
	

	makeLuaSprite('ArboLidk','perseverance/3', -800, -580);
    scaleObject('ArboLidk', 2.6, 2.6);
addLuaSprite('ArboLidk', false);
    setProperty('ArboLidk.alpha', 1)
    
	

	makeLuaSprite('ArboLidkCreo','perseverance/1', -800, -580);
   scaleObject('ArboLidkCreo', 3.0, 3.0);
addLuaSprite('ArboLidkCreo', false);
setProperty('ArboLidkCreo.alpha', 1)
	



end
function onStepHit()
if curStep == 240 then
doTweenAlpha('camHUD', 'camHUD', 1, 1.5, 'linear')
elseif curStep == 512 then
doTweenAlpha('camHUD', 'camHUD', 0, 1.5, 'linear')
elseif curStep == 644 then
setProperty('anexoN.alpha', 0)
elseif curStep == 658 then
setProperty('camHUD.alpha', 1)
elseif curStep == 1170 then
doTweenAlpha('anexoN','anexoN',1,0.7,'linear')
elseif curStep == 1177 then
setProperty('hb.alpha', 0)
setProperty('scoreTxt.alpha', 0);
setProperty('iconP1.alpha', 0);
setProperty('iconP2.alpha', 0);
setProperty('timeTxt.alpha', 0);
setProperty('tb.alpha', 0);
setProperty('E2.alpha', 0);
setProperty('E.alpha', 0);
setProperty('healthBar.alpha', 0);

setProperty('fodoP.alpha', 0)
setProperty('ArboLidk.alpha', 0)
setProperty('ArboLidkCreo.alpha', 0)
setProperty('aaaaaMi.alpha', 1)
elseif curStep == 1178 then
doTweenAlpha('anexoN','anexoN',0,2,'linear')
elseif curStep == 1684 then
doTweenAlpha('anexoN','anexoN',1,0.3,'linear')
elseif curStep == 1691 then
setProperty('hb.alpha', 1)
setProperty('scoreTxt.alpha', 1);
setProperty('iconP1.alpha', 1);
setProperty('iconP2.alpha', 1);
setProperty('timeTxt.alpha', 1);
setProperty('tb.alpha', 1);
setProperty('E2.alpha', 1);
setProperty('E.alpha', 1);
setProperty('healthBar.alpha', 1);

setProperty('fodoP.alpha', 1)
setProperty('ArboLidk.alpha', 1)
setProperty('ArboLidkCreo.alpha', 1)
setProperty('aaaaaMi.alpha', 0)
doTweenAlpha('anexoN','anexoN',0,2,'linear')
elseif curStep == 2128 then
doTweenAlpha('anexoN','anexoN',0.5,0.4,'linear')
elseif curStep == 2235 then
doTweenAlpha('anexoN','anexoN',0,0.4,'linear')
elseif curStep == 2256 then
doTweenAlpha('alerta','alerta',1,0.3,'linear')
elseif curStep == 2263 then
setProperty('alerta.alpha', 0)
elseif curStep == 2784 then
doTweenAlpha('anexoN','anexoN',1,0.00001,'linear')
doTweenAlpha('camHUD','camHUD',0,0.00001,'linear')
end
end

