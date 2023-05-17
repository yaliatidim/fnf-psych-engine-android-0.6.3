function onCreate()
makeLuaSprite('fondo2','kinemorto/2/1', -800, -500);
scaleObject('fondo2', 3.0, 3.0);
    addLuaSprite('fondo2', false);
setProperty('fondo2.alpha',0)

	makeLuaSprite('monteCausa2','kinemorto/2/2', -800, -500);
    scaleObject('monteCausa2', 3.0, 3.0);
    addLuaSprite('monteCausa2', false);
setProperty('monteCausa2.alpha',0)
	
    makeLuaSprite('cosoRaro','kinemorto/2/4', -800, -500);
    scaleObject('cosoRaro', 3.0, 3.0);
	addLuaSprite('cosoRaro', false);
setProperty('cosoRaro.alpha',0)

makeLuaSprite('peru2','kinemorto/2/3', -800, -500);
    scaleObject('peru2', 3.0, 3.0);
	addLuaSprite('peru2', false);
setProperty('peru2.alpha',0)

    makeLuaSprite('fondo1','kinemorto/1', -800, -500);
    scaleObject('fondo1', 3.0, 3.0);
    addLuaSprite('fondo1', false);
	
	makeLuaSprite('monteCausa1','kinemorto/2', -800, -500);
    scaleObject('monteCausa1', 3.0, 3.0);
    addLuaSprite('monteCausa1', false);
    setProperty('monteCausa1.alpha',1)

	makeLuaSprite('suelo','kinemorto/3', -800, -500);
   scaleObject('suelo', 3.0, 3.0);
	addLuaSprite('suelo', false);
    setProperty('suelo.alpha',1)

    makeLuaSprite('arboles','kinemorto/4', -800, -500);
   scaleObject('arboles', 3.0, 3.0);
	addLuaSprite('arboles', false);
    setProperty('arboles.alpha',1)

makeAnimatedLuaSprite('otroTiezo','kinemorto/2/paps', 340, 550);
addAnimationByPrefix('otroTiezo','I','normal',24);
addLuaSprite('otroTiezo', false);
setProperty('otroTiezo.alpha',0)
objectPlayAnim('otroTiezo', 'I', true);

end
function onStepHit()
if curStep == 816 then
setProperty('fondo2.alpha',1)
setProperty('monteCausa2.alpha',1)
setProperty('cosoRaro.alpha',1)
setProperty('peru2.alpha',1)

setProperty('fondo1.alpha',0)
setProperty('monteCausa1.alpha',0)
setProperty('suelo.alpha',0)
setProperty('arboles.alpha',0)
setProperty('otroTiezo.alpha',1)
end
if curStep == 1538 then
doTweenAlpha('camHUD', 'camHUD', 0, 1.5, 'linear')
setProperty('otroTiezo.alpha',0)
end
end

