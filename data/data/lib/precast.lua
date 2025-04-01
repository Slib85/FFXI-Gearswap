is_casting = 0

function global_precast(spell)
    if not spell.interrupted and abilities[spell.name] ~= nil then
        table.insert(active_buffs, spell.name)
    end

    if magic[spell.name] ~= nil and magic[spell.name].do_weapon_swap == 1 and is_casting == 0 then
        oldMain = player.equipment.main
        oldSub = player.equipment.sub
    end

    is_casting = 1
end