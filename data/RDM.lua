function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'Melee', 'MeleeDW', 'MeleeEn', 'MeleeSubtle');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 5)

	include(player.name .. "/RDM_gear.lua")
	include("lib/all_lib.lua")

    sets.precast.HolyWater = set_combine(sets.holy_water)
end

function job_precast(spell, action, spellMap, eventArgs)
	global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)

	if state.OffenseMode.value == 'Melee' or state.OffenseMode.value == 'MeleeDW' or state.OffenseMode.value == 'MeleeEn' or state.OffenseMode.value == 'MeleeSubtle' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.midcast_magic_burst)
		end
	end

	if S{"Diaga", "Dia", "Dia II"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			body="Volte Jupon",
			waist="Chaac belt",
		})
	end

	-- Build this into global midcast... it's defined under abilities
	if buffactive['Saboteur'] and spell.skill == 'Enfeebling Magic' then
		equip({
			hands="Lethargy Gantherots +3",
		})
	end

	-- Gotta fix Refresh here
	if buffactive['Composure'] == 1 and spell.skill == "Enhancing Magic" and spell.target.name ~= player.name then
		equip(sets.midcast_enhancing_duration_other)
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Melee" then
		equip(sets.melee_tp)
	elseif state.OffenseMode.value == "MeleeDW" then
		equip(sets.melee_dual_wield)
	elseif state.OffenseMode.value == "MeleeEn" then
		equip(sets.melee_en_spell)
	elseif state.OffenseMode.value == "MeleeSubtle" then
		equip(sets.melee_subtle_blow)
	else
		equip(sets.idle_defense)
	end
end

function job_buff_change(buff, gain)

end