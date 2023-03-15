--send_command('bind NUM2 input /ma Stun <t>')

function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'AOEOccult', 'Occult', 'MB', 'TP', "Death");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 4)

	include(player.name .. "/BLM_gear.lua")
 	include("lib/all_lib.lua")
end

function job_precast(spell, action, spellMap, eventArgs)
	global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)

	if spell.skill == 'Elemental Magic' and ((buffactive['Manawell'] == 1 or buffactive['Manafont']) and not S{"Impact"}:contains(spell.english)) or S{"Meteor"}:contains(spell.english) then
		equip({body="Wicce Coat +3"})
	end

	if buffactive['Mana Wall'] == 1 then
		equip(sets.mana_wall)
	end

	if spell.skill == 'Elemental Magic' and (state.OffenseMode.value == 'MB') then
		equip(sets.midcast_magic_burst)

		if buffactive['Mana Wall'] == 1 then
			equip(sets.mana_wall)
		end
	elseif state.OffenseMode.value == 'Occult' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.midcast_occult_acumen)
		end
	elseif state.OffenseMode.value == 'AOEOccult' then
		if spell.skill == 'Elemental Magic' then
			equip(set_combine(sets.midcast_occult_acumen, {
				body="Spaekona's Coat +3",
			}))
		end
		
		if buffactive['Mana Wall'] == 1 then
			equip(sets.mana_wall)
		end
	end

	if S{"Sleepga", "Diaga", "Dia II"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			body="Volte Jupon",
			waist="Chaac belt",
		})
	end

	if S{"Burn", "Choke", "Rasp", "Frost", "Shock", "Drown"}:contains(spell.english) then
		equip(set_combine(sets.midcast_enfeeble_int, {
			body={ name="Arch. Coat +3", augments={'Enhances "Manafont" effect',}},
			feet="Arch. sabots +3",
			legs="Arch. tonban +3",
			hands="Spaekona's Gloves +3",
			left_ring="Stikini Ring +1",
		}));
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	global_aftercast()
	
	if state.OffenseMode.value == "TP" then
		if player.equipment.sub == "Khonsu" then
			equip(sets.melee_tp)
		else 
			equip(sets.melee_dual_wield)
		end
	elseif state.OffenseMode.value == "Death" then
		equip(sets.midcast_death)
	else
		equip(sets.idle_defense)
	end

	if buffactive['Mana Wall'] == 1 or spell.english == 'Mana Wall' then
		equip(sets.mana_wall)
	end
end

function job_buff_change(buff, gain)
	if buff == "Mana Wall" and not gain then
		equip(sets.idle_defense)
	end
end

