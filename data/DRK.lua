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
	set_macro_page(2, 8)

	include(player.name .. "/DRK_gear.lua")
	include("lib/all_lib.lua")

	sets.precast.JA["Nether Void"] = {
		legs="Heathen's Flanchard +3",
	}
	sets.precast.JA["Dark Seal"] = {
		head="Fallen's Burgeonet +3",
	}
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)

	if buffactive['Dark Seal'] == 1 and S{"Drain III"}:contains(spell.name) then
		equip({
			head="Fallen's Burgeonet +3"
		})
	end

	if buffactive['Nether Void'] == 1 and S{"Drain III"}:contains(spell.name) then
		equip({
			legs="Heathen's Flanchard +3",
		})
	end
	
	if buffactive['Killer Instinct'] == 1 and S{"Torcleaver"}:contains(spell.english) then
		equip({body="Founder's Breastplate"})
	end

	if state.OffenseMode.value == 'Occult' or S{"Freeze", "Tornado", "Quake", "Burst", "Flood"}:contains(spell.english) then
		if spell.skill == 'Elemental Magic' then
			if S{"Impact"}:contains(spell.english) then
				equip(set_combine(sets.midcast_occult_acumen, {
					head=empty,
					body="Twilight Cloak"}
				))
			else
				equip(sets.midcast_occult_acumen)
			end
		end
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Melee Hybrid" then
		equip(sets.melee_tp_hybrid)
	elseif state.OffenseMode.value == "Dual Wield" then
		equip(sets.melee_dual_wield)
	elseif state.OffenseMode.value == "Subtle" then
		equip(sets.melee_subtle_blow)
	elseif state.OffenseMode.value == "Melee" then
		equip (sets.melee_tp) 
	else
		equip(sets.idle_defense)
	end
end
