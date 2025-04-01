function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options("Normal", "Melee", "Melee Hybrid", "Dual Wield", "Subtle", "Occult");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 18)

	include(player.name .. "/PUP_gear.lua")
	include("lib/all_lib.lua")
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Melee" then
		equip(sets.melee)
	elseif state.OffenseMode.value == "PetDT" then
		equip (sets.pet_defense) 
	else
		equip(sets.idle_defense)
	end
end
