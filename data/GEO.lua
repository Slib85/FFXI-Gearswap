--send_command('bind NUM2 input /ma Stun <t>')

function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'AOEOccult', 'Occult', 'MB', 'TP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 4)

	include(player.name .. "/GEO_gear.lua")
 	include("lib/all_lib.lua")
end

function job_precast(spell, action, spellMap, eventArgs)
	global_precast(spell)
end

function job_midcast(spell, action, spellMap, eventArgs)
	global_midcast(spell)

	if spell.skill == 'Elemental Magic' and (state.OffenseMode.value == 'MB') then
		equip(sets.magic_burst)
	elseif state.OffenseMode.value == 'Occult' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.midcast_occult_acumen)
		end
	elseif state.OffenseMode.value == 'AOEOccult' then
		if spell.skill == 'Elemental Magic' then
			equip(set_combine(sets.midcast_occult_acumen, {
				body="Seidr Coteharde",
			}))
		end
	end

	if S{"Sleepga", "Diaga", "Dia II"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			body="Volte Jupon",
			waist="Chaac belt",
		})
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	global_aftercast()
	
	if state.OffenseMode.value == "TP" then
		equip(sets.melee_tp)
	else
		equip(sets.idle_defense)
	end
end
