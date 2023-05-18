function onCreatePost()

setProperty('gf.alpha', 1);
end
function onCreate()

makeLuaSprite('fondoGD','dustswap/Main', -700, -330);
	addLuaSprite('fondoGD', false);
setProperty('fondoGD.alpha', 1);
setObjectOrder('fondoGD', 99)
scaleObject('fondoGD', 4.0, 4.0);

makeLuaSprite('fondoGDD','dustswap/Main', -700, -330);
	addLuaSprite('fondoGDD', false);
setProperty('fondoGDD.alpha', 0);
scaleObject('fondoGDD', 4.0, 4.0);

makeLuaSprite('fondoFB','dustswap/FB/7', -600, 80);
	addLuaSprite('fondoFB', false);
setProperty('fondoFB.alpha', 0);
setObjectOrder('fondoFB', 1)
scaleObject('fondoFB', 2.0, 2.0);

makeLuaSprite('puerta','dustswap/FB/6', -590, 80);
	addLuaSprite('puerta', false);
setProperty('puerta.alpha', 0);
setObjectOrder('puerta', 2)
scaleObject('puerta', 2.0, 2.0);

makeLuaSprite('mesa','dustswap/FB/5', -600, 40);
	addLuaSprite('mesa', false);
setProperty('mesa.alpha', 0);
setObjectOrder('mesa', 5)
scaleObject('mesa', 2.0, 2.0);

makeLuaSprite('sillaFront','dustswap/FB/4', -600, 40);
scaleObject('sillaFront', 2.0, 2.0);
	addLuaSprite('sillaFront', false);
setProperty('sillaFront.alpha', 0);
setObjectOrder('sillaFront', 7)

makeLuaSprite('sillaBack','dustswap/FB/3', -600, 40);
scaleObject('sillaBack', 2.0, 2.0);
	addLuaSprite('sillaBack', false);
setProperty('sillaBack.alpha', 0);
setObjectOrder('sillaBack', 8)

makeLuaSprite('sillas','dustswap/FB/2', -600, 40);
scaleObject('sillas', 2.0, 2.0);
	addLuaSprite('sillas', false);
setProperty('sillas.alpha', 0);
setObjectOrder('sillas', 9)

makeLuaSprite('mesaFront','dustswap/FB/1', -600, 30);
	addLuaSprite('mesaFront', false);
setProperty('mesaFront.alpha', 0);
setObjectOrder('mesaFront', 100)
scaleObject('mesaFront', 2.0, 2.0);

setObjectOrder('dad', 101)
setObjectOrder('boyfriend', 102)

setObjectOrder('riko', 105)
setObjectOrder('conejo', 110)

end
function onStepHit()
if curStep == 944 then
setProperty('fondoGD.alpha', 0);

setProperty('fondoFB.alpha', 1);
setProperty('puerta.alpha', 1);
setProperty('mesa.alpha', 1);
setProperty('sillaFront.alpha', 1);
setProperty('sillaBack.alpha', 1);
setProperty('sillas.alpha', 1);
setProperty('mesaFront.alpha', 1);
elseif curStep == 1455 then
setProperty('fondoGDD.alpha', 1);

setProperty('fondoFB.alpha', 0);
setProperty('puerta.alpha', 0);
setProperty('mesa.alpha', 0);
setProperty('sillaFront.alpha', 0);
setProperty('sillaBack.alpha', 0);
setProperty('sillas.alpha', 0);
setProperty('mesaFront.alpha', 0);
setObjectOrder('dad', 105)
setObjectOrder('boyfriend', 106)
elseif curStep == 2256 then
setProperty('hb.alpha', 0)
setProperty('scoreTxt.alpha', 0);
setProperty('iconP1.alpha', 0);
setProperty('iconP2.alpha', 0);
setProperty('timeTxt.alpha', 0);
setProperty('tb.alpha', 0);
setProperty('E2.alpha', 0);
setProperty('E.alpha', 0);
setProperty('healthBar.alpha', 0);
setProperty('fondoGDD.alpha', 0);
end
end