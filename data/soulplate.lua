function get_sets()
    minWait = 1
    maxWait = 1
    randomWait = os.clock() + math.random(minWait,maxWait)

    windower.raw_register_event('prerender', function()
        if not (os.clock() > randomWait) then return end 
        randomWait = os.clock() + math.random(minWait,maxWait) 
        windower.send_command('input /equip Ammo "Blank Soul Plate";wait 3;input /item "Soultrapper 2000" <t>')
    end)
end