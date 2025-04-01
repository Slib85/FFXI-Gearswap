function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'TP', "DW");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 11)

	include(player.name .. "/RNG_gear.lua")
	include("lib/all_lib.lua")
end

function job_precast(spell, action, spellMap, eventArgs)
	if not state.OffenseMode.value == "Death" then
		equip(sets.precast_magic)
		global_precast(spell)
	end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)
end

function job_aftercast(spell, action, spellMap, eventArgs)
	global_aftercast(spell)
	
	if state.OffenseMode.value == "TP" then
		equip(sets.aftercast_tp)
    elseif state.OffenseMode.value == "DW" then
        equip(sets.aftercast_dw_tp)
	else
		equip(sets.aftercast_dt)
	end
end

function job_buff_change(buff, gain)
	
end

