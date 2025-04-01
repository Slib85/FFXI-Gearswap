function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', "VagaryMBNoKill", "NoDmg");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 20)

	include(player.name .. "/SCH_gear.lua")
 	include("lib/all_lib.lua")
end

function job_precast(spell, action, spellMap, eventArgs)
	global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)

    --if player.is_casting then
	--	windower.add_to_chat(123, "oh shit")
	--end 

	if S{"Sleepga", "Diaga", "Dia II"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			body="Volte Jupon",
			waist="Chaac belt",
		})
	end

	if spell.skill == 'Elemental Magic' and state.OffenseMode.value == 'NoDmg' then 
		equip({
			main="Malignance Pole",
			sub="Khonsu",
			ammo=empty,head=empty,body=empty,hands=empty,legs=empty,feet=empty,neck=empty,waist=empty,left_ear=empty,right_ear=empty,left_ring=empty,right_ring="Defending Ring",back=empty
		})
	end

	if spell.skill == 'Elemental Magic' and state.OffenseMode.value == 'VagaryMBNoKill' then 
		equip(sets.vagaryMBNoKill)
		
		if buffactive['Immanence'] == 1 then
			equip({
				ammo=empty,head=empty,body=empty,hands=empty,legs=empty,feet=empty,neck=empty,waist=empty,left_ear=empty,right_ear=empty,left_ring=empty,right_ring="Defending Ring",back=empty
			})
		end
	end
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

function job_buff_change(buff, gain)
	if buff == "Mana Wall" and not gain then
		equip(sets.idle_defense)
	end
end