function get_sets()
    mote_include_version = 2
    
    include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('TP', 'DW', 'Absorb', "Counter", "Regen", "Block", "MDB")
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 7)

	include(player.name .. "/PLD_gear.lua")
 	include("lib/all_lib.lua")
	
	sets.precast.JA = sets.enmityGear;
end

function job_precast(spell, action, spellMap, eventArgs)
	global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == 'Absorb' then
        equip(sets.melee_absorb)
    elseif state.OffenseMode.value == 'TP' then
        equip(sets.melee_tp)
	elseif state.OffenseMode.value == "DW" then
		equip(sets.melee_tp_dw)
	elseif state.OffenseMode.value == "Counter" then
		equip(sets.melee_counter)
	elseif state.OffenseMode.value == "Regen" then
		equip(sets.melee_regen)
	elseif state.OffenseMode.value == "Block" then
		equip(sets.melee_block)
	elseif state.OffenseMode.value == "MDB" then
		equip(sets.magic_defense)
	else
		equip(sets.defense)
    end

end