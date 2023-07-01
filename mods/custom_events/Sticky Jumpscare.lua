function onEvent(name, value1, value2)

	if name == 'Sticky Jumpscare' then
		makeLuaSprite('sticky', 'jumpscares/Sticky', 0, 0)
		setObjectCamera('sticky', 'other')
		scaleObject('sticky', 0.65, 0.65)
		addLuaSprite('sticky', true)
		runTimer('sticky bm scary oh noo', 0.2)
		playSound('sticky', 1, 'stickmanjumpscare')
	end		
end

function onCreatePost()
	precacheImage('jumpscares/Sticky')
	precacheSound('sticky')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'sticky bm scary oh noo' then
		doTweenAlpha('its midnight here rn LOL', 'sticky', 0, 0.2, 'linear')
	end
end

