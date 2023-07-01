function onEvent(name, value1, value2)
	if name == 'White Woman Jumpscare' then
		makeLuaSprite('woman', 'jumpscares/Lullaby', 0, 0)
		setObjectCamera('woman', 'other')
		scaleObject('woman', 1.1, 1.1)
		addLuaSprite('woman', true)
		runTimer('ahem', 0.2)
	end		
end

function onCreatePost()
	precacheImage('jumpscares/Lullaby')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'ahem' then
		doTweenAlpha('womangone', 'woman', 0, 0.2, 'linear')
		removeLuaSprite('woman', true)
	end
end

