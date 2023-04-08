function onEvent(name, value1, value2)
	if name == "Image Flash" then
		makeLuaSprite('image', value1, 1230, 670);
		addLuaSprite('image', true);
		scaleObject('image', 1.4, 1.4);
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.5, 'quartIn');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end