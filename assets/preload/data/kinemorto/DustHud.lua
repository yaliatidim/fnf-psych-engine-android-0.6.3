function onCreate()

--time

	makeLuaSprite('E', '', 0,  (downscroll and 75 or 650));
	makeGraphic('E', 639, 20, '000000')
	setObjectCamera('E', 'camHUD')
	setProperty('E.alpha', 1)
	addLuaSprite('E', true)
    screenCenter('E', 'x');

	makeLuaSprite('E2', '', 0,  (downscroll and 75 or 650));
	makeGraphic('E2', 639, 20, '23609E')
	setObjectCamera('E2', 'camHUD')
	setProperty('E2.scale.x', 0)
	setProperty('E2.origin.x', 0)
	addLuaSprite('E2', true)
   screenCenter('E2', 'x');
 
    makeLuaSprite('EE', '', 0,  (downscroll and 75 or 650));
	makeGraphic('EE', 639, 20, 'AB3349')
	setObjectCamera('EE', 'camHUD')
	setProperty('EE.scale.x', 0)
	setProperty('EE.origin.x', 0)
	addLuaSprite('EE', true)
   screenCenter('EE', 'x');

-- Hud 
makeLuaSprite('hb', 'hb', 0, (downscroll and -5 or 590));
	setObjectCamera('hb', 'camHUD');
	scaleObject('hb', 1, 1 * (downscroll and -1 or 1));
	screenCenter('hb', 'x');
	addLuaSprite('hb', true)

makeLuaSprite('tb', 'tb', 0, (downscroll and 0 or 580));
	setObjectCamera('tb', 'camHUD');
	scaleObject('tb', 1, 1 * (downscroll and -1 or 1));
	screenCenter('tb', 'x');
	addLuaSprite('tb', true)
	

--other things
setObjectOrder('iconP1', getObjectOrder('hb') + 1)
setObjectOrder('iconP2', getObjectOrder('hb') + 1);
setObjectOrder('E', getObjectOrder('tb') - 3)
setObjectOrder('E2', getObjectOrder('tb') - 2);
setObjectOrder('EE', getObjectOrder('tb') - 1);
setObjectOrder('timeTxt', getObjectOrder('tb') + 1);

setProperty('scoreTxt.y', getProperty('scoreTxt.y') + (downscroll and 580 or -650));
setProperty('healthBar.y', getProperty('healthBar.y') - (downscroll and -30 or 15));
setProperty('iconP1.y', getProperty('healthBar.y') - (downscroll and 60 or 65));
setProperty('iconP2.y', getProperty('healthBar.y') - (downscroll and 60 or 65));
setProperty('timeTxt.y', getProperty('healthBar.y') - (downscroll and 80 or -50));
setProperty('timeTxt.x', getProperty('timeTxt.x') + 5);

setProperty('healthBar.scale.x', 1.4)
setProperty('healthBar.scale.y', 2)
end 


--timeFuncion

function onUpdate(elapsed)
	setProperty('timeBar.alpha', 0)
	setProperty('timeTxt.alpha', 1)
end
function onSongStart()
	songTime = getProperty('songLength') / 1000

    doTweenX('time', 'E2.scale', 1, songTime, 'linear')
    doTweenX('timee', 'EE.scale', 1, songTime, 'linear')
end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function onEndSong()
    setProperty('E2.alpha', 0)
    setProperty('EE.alpha', 0)
end

function mathlerp(from,to,i)
	return from+(to-from)*i
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
	n = math.pow(10, n or 0)
	x = x * n
	if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
	return x / n
  end




--icons 

function onUpdatePost()
	setProperty('iconP1.x', screenWidth - 180)
	setProperty('iconP2.x', 50)
end

--time mechanic :v

function onStartCountdown(elapsed)

	doTweenAlpha('turn', 'EE', 0.8, crochet/50, 'linear')

end

function onTweenCompleted(t)
	if t == 'turn' then
		doTweenAlpha('turn1', 'EE', 0, crochet/50, 'linear')
	end
	if t == 'turn1' then
		doTweenAlpha('turn', 'EE', 1, crochet/50, 'linear')
	end
end