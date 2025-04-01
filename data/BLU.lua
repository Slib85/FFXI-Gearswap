function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'TP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 16)

	include(player.name .. "/BLU_gear.lua")
 	include("lib/all_lib.lua")

	--include('BLU_spells.lua')
end

function job_precast(spell, action, spellMap, eventArgs)
	global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)

end

function job_aftercast(spell, action, spellMap, eventArgs)
	global_aftercast(spell)
	
	if state.OffenseMode.value == "TP" then
		equip(sets.melee_tp)
	else
		equip(sets.idle_defense)
	end
end

function job_buff_change(buff, gain)
	
end

