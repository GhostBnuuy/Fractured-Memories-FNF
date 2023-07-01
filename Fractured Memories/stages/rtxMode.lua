function onCreatePost()
	setProperty('boyfriend.visible', false)
	setProperty('dad.visible', false)
	setProperty('gf.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)

	runHaxeCode([[
		game.healthBar.createFilledBar(0xFFFF0000, 0xFF66FF33);
		]])
end
