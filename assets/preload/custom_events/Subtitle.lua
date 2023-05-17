function onCreatePost()
	makeLuaText('sus', (value1), screenWidth, 0, (downscroll and 480 or 260));
    setTextSize('sus', 20);
   setTextFont('sus','fallen-down.ttf')
   setObjectCamera('sus', 'Other')
    screenCenter('sus', 'x');
    setTextColor('sus', 'FFFFFF')
    addLuaText('sus');
    addLuaText('sus', true)
    setObjectOrder('sus', '100')
end
function onEvent(name, value1, value2)
	if name == 'Subtitle' then
		setTextString('sus', (value1));
		end
	end