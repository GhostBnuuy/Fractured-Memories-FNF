function onEvent(name, value1, value2)

	if name == 'Garsmello Jumpscare' then
		makeLuaSprite('cough', 'jumpscares/Garcello', 0, 0)
		setObjectCamera('cough', 'other')
		scaleObject('cough', 1.1, 1.1)
		addLuaSprite('cough', true)
		runTimer('im running out of ideas what to write here', 0.2)
	end		
end

function onCreatePost()
	precacheImage('jumpscares/Garcello')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'im running out of ideas what to write here' then
		doTweenAlpha('well there he goes', 'cough', 0, 0.2, 'linear')
	end
end

