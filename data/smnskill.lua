function get_sets()
    minWait = 35
    maxWait = 38
    randomWait = os.clock() + math.random(minWait,maxWait)

    windower.raw_register_event('prerender', function()
        if not (os.clock() > randomWait) then return end 
        r1 = math.random(minWait,maxWait) 
        -- randomWait = os.clock() + math.random(r1 + 5, r1 + 10) 
        -- windower.send_command('input /ma "Ifrit" <me>;wait '..r1..';input /pet release <me>')
        randomWait = os.clock() + math.random(minWait,maxWait) 
        windower.send_command('input /equip Ammo "Blank Soul Plate";wait 3;input /item "Soultrapper 2000" <t>')
    end)
end