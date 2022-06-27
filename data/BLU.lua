function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'TP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 16)

	include(player.name .. "/BLU_gear.lua")
	
	sets.precast.FC = sets.gear_precast_spell;
	sets.precast.WS = sets.gear_precast_ws;

	sets.precast.WS['Savage Blade'] = set_combine(sets.gear_precast_ws, {
		left_ear="Moonshade Earring"
	})

	include('BLU_spells.lua')
end

function job_post_midcast(spell, action, spellMap, eventArgs)

end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "TP" then
		equip(sets.gear_aftercast_tp)
	else
		equip(sets.gear_aftercast_dt)
	end
end

function job_buff_change(buff, gain)
	
end

