
local allowEnd = false
function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('PapsF')
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		startVideo('PapsI')
		allowCountdown = true
		return Function_Stop;
	end
	return Function_Continue;
end