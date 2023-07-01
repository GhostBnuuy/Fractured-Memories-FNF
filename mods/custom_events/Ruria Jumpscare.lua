function onEvent(name, value1, value2)

	if name == 'Ruria Jumpscare' then
		makeLuaSprite('dead', 'jumpscares/Ruria', 0, 0)
		setObjectCamera('dead', 'other')
		scaleObject('dead', 1.1, 1.1)
		addLuaSprite('dead', true)
		runTimer('welp', 0.2)
	end		
end

function onCreatePost()
	precacheImage('jumpscares/Ruria')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'welp' then
		doTweenAlpha('ruriq going away nooooooo', 'dead', 0, 0.2, 'linear')
	end
end

