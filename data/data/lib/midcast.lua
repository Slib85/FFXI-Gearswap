function global_midcast(spell)
    --windower.add_to_chat(123, spell.name);

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

    if abilities[spell.name] ~= nil then
        if abilities[spell.name].midcast_set ~= nil then
            equip(abilities[spell.name].midcast_set)
        end
    end
    
    if pet_abilities[spell.name] ~= nil then
        if pet_abilities[spell.name].midcast_set ~= nil then
            equip(pet_abilities[spell.name].midcast_set)
        end
    end

    if items[spell.name] ~= nil then
        if items[spell.name].midcast_set ~= nil then
            equip(items[spell.name].midcast_set)
        end
    end

    if buffactive['Accession'] == 1 and spell.name == "Phalanx" then
		equip(sets.midcast_enhancing_duration)
	end
    
    if spell.skill == "Enhancing Magic" then
		for i = 1, table.getn(active_buffs) do
            if (abilities[active_buffs[i]].use_with ~= nil and abilities[active_buffs[i]].use_with == "Enhancing Magic") then
                equip(abilities[active_buffs[i]].midcast_set)
                table.remove(active_buffs, i)
                -- i = i - 1
            end
        end
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