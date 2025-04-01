--send_command('bind NUM2 input /ma Stun <t>')

function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal','TP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 4)

	include(player.name .. "/SMN_gear.lua")
 	include("lib/all_lib.lua")
end

function job_precast(spell, action, spellMap, eventArgs)
    --windower.add_to_chat(123, spell.type)
    if (pet.isvalid and pet_midaction() and not spell.type=="SummonerPact") or spell.type=="BloodPactRage" or spell.type=="BloodPactWard" or spell.type=="Item" then
        --windower.add_to_chat(123, "RETURN PRECAST")
        -- Do not swap if pet is mid-action. I added the type=SummonerPact check because sometimes when the avatar
        -- dies mid-BP, pet.isvalid and pet_midaction() continue to return true for a brief time.
        return
    end
    equip(sets.precast_magic)
    global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
    if (pet.isvalid and pet_midaction()) or spell.type=="Item" then
        return
    end
    
	global_midcast(spell)
end

function job_aftercast(spell, action, spellMap, eventArgs)
	global_aftercast(spell)

	if state.OffenseMode.value == "TP" then
		if (player.sub_job == 'NIN' or player.sub_job == 'DNC') and not player.equipment.sub:contains('Shield') and not player.equipment.sub:contains("Khonsu") then
			equip(sets.melee_dual_wield)
		else 
			equip(sets.melee_tp)
		end
	else
		equip(sets.idle_defense)
	end
end

function job_pet_midcast(spell)
    if pet_abilities[spell.name] ~= nil then
        if pet_abilities[spell.name].midcast_pet_set ~= nil then
            equip(pet_abilities[spell.name].midcast_pet_set)
        end
    end
end
 
function job_pet_aftercast(spell)
    if state.OffenseMode.value == "TP" then
		if (player.sub_job == 'NIN' or player.sub_job == 'DNC') and not player.equipment.sub:contains('Shield') and not player.equipment.sub:contains("Khonsu") then
			equip(sets.melee_dual_wield)
		else 
			equip(sets.melee_tp)
		end
	else
		equip(sets.idle_defense)
	end
end
