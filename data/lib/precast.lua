sets.precast.RA = sets.precast_ra;

is_casting = 0

function global_precast(spell)
    if spell.action_type == 'Magic' and (buffactive['Chainspell'] or buffactive['Spontaneity']) then
        windower.add_to_chat(123, spell.name);
        equip(magic[spell.name].midcast_set)
    else
        if not spell.interrupted and abilities[spell.name] ~= nil then
            table.insert(active_buffs, spell.name)
        end

        if magic[spell.name] ~= nil and magic[spell.name].do_weapon_swap == 1 and is_casting == 0 then
            oldMain = player.equipment.main
            oldSub = player.equipment.sub
        end

        is_casting = 1
    end
end