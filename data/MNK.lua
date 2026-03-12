function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options("Melee", "Tank");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 2)

	include(player.name .. "/MNK_gear.lua")
 	include("lib/all_lib.lua")

    -- Precast sets to enhance JAs
end

function job_post_midcast(spell, action, spellMap, eventArgs)

end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Tank" then
		equip(sets.idle_defense)
	elseif state.OffenseMode.value == "Melee" then
		equip (sets.melee_tp) 
	else
		equip(sets.melee_tp)
	end
end


function job_buff_change(buff, gain)

end

