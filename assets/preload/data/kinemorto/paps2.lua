local papsCreated = false
function onCreate()
    makeAnimatedLuaSprite('colombia','kinemorto/2/paps',340, 407)
    addAnimationByPrefix('colombia','E','Tiezazo',24,false)
    setProperty('colombia.alpha',0.01)
    addLuaSprite('colombia',false)
end
function onCreatePost()
    precacheImage('kinemorto/2/paps')
end
function onUpdate()
    if getProperty('colombia.animation.curAnim.finished') == true and papsCreated == true then
        removeLuaSprite('colombia',true)
        close(true)
    end
end
function onStepHit()
        if curStep == 1538 then
        setProperty('colombia.alpha',1)
        objectPlayAnimation('colombia','E',true)
        papsCreated = true
    end
end