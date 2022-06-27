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
	set_macro_page(2, 6)

	include(player.name .. "/THF_gear.lua")

	sets.precast.FC = sets.gear_precast_spell;
	sets.precast.WS = sets.gear_precast_ws;

	include('BLU_spells.lua')
	
	sets.precast.WS['Aeolian Edge'] = sets.gear_precast_magicWS
	-- sets.precast.WS['Rock Crusher'] = set_combine(sets.magicPrecastWSGear, {
	--	left_ear="Moonshade Earring"
	-- })
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if S{"Cyclone"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			hands="Plunderer's armlets +1",
			feet="Skulker's poulaines +1",
            waist="Chaac belt",
		})
	end
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

