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
	set_macro_page(2, 12)

	include(player.name .. "/SAM_gear.lua")
 	include("lib/all_lib.lua")

    -- Precast sets to enhance JAs
	sets.precast.JA['Blade Bash'] = {
        hands="Sakonji Kote +4",
    }

	sets.precast.JA['Meditate'] = {
        head="Wakido Kabuto +4",
        hands="Sakonji Kote +4",
		back="Smertrios's Mantle",
	}
end

function job_precast(spell, action, spellMap, eventArgs)
    global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)
end

function job_aftercast(spell, action, spellMap, eventArgs)
    global_aftercast(spell)
    
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

