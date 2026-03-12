function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

    function job_setup()

end

function user_setup()
	state.OffenseMode:options("TP");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 9)

	include(player.name .. "/BST_gear.lua")
	include("lib/all_lib.lua")
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "TP" then
		equip(sets.melee_tp) 
	else
		equip(sets.idle_defense)
	end
end
