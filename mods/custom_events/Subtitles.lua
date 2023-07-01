function onEvent(name, value1, value2)
    makeLuaText('subtitles', value1, 0, 500, 530)
    setTextSize('subtitles', 25)
    setObjectCamera('subtitles', 'hud')
    screenCenter('subtitles', 'x')
    addLuaText('subtitles')
end