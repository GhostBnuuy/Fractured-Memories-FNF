function onCreate()
	--SOUL
	makeLuaSprite('bg', 'backgrounds/glitch', -500, -300)

	makeLuaSprite('trees', 'backgrounds/Trees2', -350, -150)
	scaleObject('trees', 0.9, 0.9)
	
	makeLuaSprite('grass', 'backgrounds/Grass', -350, -250)
	
	--STICKNO
	if not lowQuality then

		makeAnimatedLuaSprite('static', 'backgrounds/NewTitleMenuBG', -400, -200);
		addAnimationByPrefix('static', 'socool', 'TitleMenuSSBG instance 1', 24, true);
		scaleObject('static', 6, 6)
	else 
		makeLuaSprite('static', 'backgrounds/staticlq', -400, -200);
		scaleObject('static', 6, 6)
	end

	makeLuaSprite('treesAGAIN', 'backgrounds/Trees3', -350, -100)

	makeLuaSprite('weed', 'backgrounds/Grass2', -350, -350)
	
	--SHAGGY
	makeLuaSprite('farbg', '', -800, -400)
	makeGraphic('farbg', 2700, 2000, '210002')
	
	makeLuaSprite('shaggybg', 'bg-final/god_bg', -1100, -600)
	scaleObject('shaggybg', 1.1, 1.1)
	
	makeLuaSprite('bfrock', 'bg-final/bf_rock', 650, 700)
	scaleObject('bfrock', 0.8, 0.8)
	
	makeLuaSprite('gfrock', 'bg-final/gf_rock', 300, 400)
	setScrollFactor('gfrock', 0.5, 0.9)
	
	makeLuaSprite('bigrock', 'bg-final/big_rock', -1100, 550)
	
	makeLuaSprite('cloudBehind', 'bg-final/cloud1', -1400, -800)
	scaleObject('cloudBehind', 1.2, 1.2)
	
	makeLuaSprite('cloudsAgain', 'bg-final/cloud', -1200, -1000)
end

function onCreatePost()
	setProperty('gf.visible', false)
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    health = getProperty('health')
	if curStep < 6555 then
		if health >= 0.1 then 
			setProperty('health', health - 0.025)
		end
	end
end

function onUpdate()
	if curStep == 0 or curStep == 1300 or curStep == 2837 then
        Soul()
    elseif curStep == 1044 or curStep == 2326 or curStep == 4179 then
        Stickno()    
	elseif curStep == 5264 then
        Shaggy()
	elseif curStep >= 5265 and curStep <= 6164 then
		songPos = getSongPosition()
	    local currentBeat = (songPos/1000)
		setProperty('gf.x', -250)
	    setProperty('gf.y', -70-70*math.sin((currentBeat*0.5)*math.pi))
	elseif curStep >= 6165 then
		Shaggy()
		songPos = getSongPosition()
	    local currentBeat = (songPos/1000)
	    setProperty('boyfriend.y', 260-70*math.sin((currentBeat*0.3)*math.pi))
		setProperty('boyfriend.x', -550)
		setProperty('gf.y', -70-70*math.sin((currentBeat*0.5)*math.pi))
		setProperty('gf.x', -250)
        setProperty('gf.visible', true)
		setProperty('dad.x', 420)
		setProperty('dad.y', -110)
        setProperty('dad.scale.x', 0.85)
        setProperty('dad.scale.y', 0.85)
	end
end

function onStepHit()
	if curStep == 1300 and curStep == 5764 then
		--ruria
    	noteTweenX('Move1', 0, 732, 0.1, 'cubicInOut')
    	noteTweenX('Move2', 1, 844, 0.1, 'cubicInOut')
    	noteTweenX('Move3', 2, 956, 0.1, 'cubicInOut')
    	noteTweenX('Move4', 3, 1068, 0.1, 'cubicInOut')
    	--sarv
    	noteTweenX('Move5', 4, 92, 0.1, 'cubicInOut')
    	noteTweenX('Move6', 5, 204, 0.1, 'cubicInOut')
    	noteTweenX('Move7', 6, 316, 0.1, 'cubicInOut')
    	noteTweenX('Move8', 7, 428, 0.1, 'cubicInOut')
    elseif curStep == 2837 then
    	noteTweenX('MoveBack1', 0, 92, 0.1, 'cubicInOut')
    	noteTweenX('MoveBack2', 1, 204, 0.1, 'cubicInOut')
    	noteTweenX('MoveBack3', 2, 316, 0.1, 'cubicInOut')
    	noteTweenX('MoveBack4', 3, 428, 0.1, 'cubicInOut')
    	noteTweenX('MoveBack5', 4, 732, 0.1, 'cubicInOut')
    	noteTweenX('MoveBack6', 5, 844, 0.1, 'cubicInOut')
    	noteTweenX('MoveBack7', 6, 956, 0.1, 'cubicInOut')
    	noteTweenX('MoveBack8', 7, 1068, 0.1, 'cubicInOut')
	end
end

function Soul()
    addLuaSprite('bg', false)
    addLuaSprite('trees', false)
    addLuaSprite('grass', false)
	
    removeLuaSprite('static', false)
    removeLuaSprite('treesAGAIN', false)
    removeLuaSprite('weed', false)
end

function Stickno()
    removeLuaSprite('bg', false)
    removeLuaSprite('trees', false)
    removeLuaSprite('grass', false)
	
    addLuaSprite('static', false)
    addLuaSprite('treesAGAIN', false)
    addLuaSprite('weed', false)
end

function Shaggy()
    removeLuaSprite('bg', true)
    removeLuaSprite('trees', true)
    removeLuaSprite('grass', true)
	
    removeLuaSprite('static', true)
    removeLuaSprite('treesAGAIN', true)
    removeLuaSprite('weed', true)
	
	addLuaSprite('farbg', false)
    addLuaSprite('shaggybg', false)
	addLuaSprite('bfrock', false)
	addLuaSprite('gfrock', false)
    addLuaSprite('bigrock', false);
    addLuaSprite('cloudBehind', false)
    addLuaSprite('cloudsAgain', false)
	
	doTweenZoom('zoomout', 'camGame', 0.55, 1, 'sineOut')
	setProperty('defaultCamZoom', 0.55)
end