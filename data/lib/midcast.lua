function global_midcast(spell)
    if weapon_skills[spell.name] ~= nil then
        if weapon_skills[spell.name].midcast_set ~= nil then
            equip(weapon_skills[spell.name].midcast_set)
        end

        if player.TP <= 2900 and weapon_skills[spell.name].use_tp_bonus == 1 then
            equip({
                left_ear="Moonshade Earring",
            })
        end

        affinity_logic(spell, weapon_skills)
    end

    if magic[spell.name] ~= nil then
        if magic[spell.name].midcast_set ~= nil then
            equip(magic[spell.name].midcast_set)
        end

        affinity_logic(spell, magic)
    end
end

function affinity_logic(spell, action_map)
    -- Matching double weather (w/o day conflict).
    if spell.element == world.weather_element and (get_weather_intensity() == 2 and spell.element ~= elements.weak_to[world.day_element]) and action_map[spell.name].use_midcast_magic_affinity == 1 then
        equip({waist="Hachirin-no-Obi"})
    -- Target distance under 1.7 yalms.
    elseif spell.target.distance < (1.7 + spell.target.model_size) and action_map[spell.name].use_midcast_magic_damage == 1 then
        equip({waist="Orpheus's Sash"})
        
    -- Matching day and weather.
    elseif spell.element == world.day_element and spell.element == world.weather_element and action_map[spell.name].use_midcast_magic_affinity == 1 then
        equip({waist="Hachirin-no-Obi"})
    -- Target distance under 8 yalms.
    elseif spell.target.distance < (8 + spell.target.model_size) and action_map[spell.name].use_midcast_magic_damage == 1 then
        equip({waist="Orpheus's Sash"})
    -- Match day or weather.
    elseif (spell.element == world.day_element or spell.element == world.weather_element) and action_map[spell.name].use_midcast_magic_affinity == 1 then
        equip({waist="Hachirin-no-Obi"})
    end
end