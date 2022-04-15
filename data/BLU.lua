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
	if player.name == "Slibby" then
		include('slib/BLU_gear.lua')	
	elseif player.name == "Dehlila" then
		include('dehlila/BLU_gear.lua')	
	elseif player.name == "Lemia" then
		include('lemia/BLU_gear.lua')	
	end

	sets.precast.FC = sets.gear_precast_spell;
	sets.precast.WS = sets.gear_precast_ws;

	include('BLU_spells.lua')
	
	-- sets.precast.WS['Shattersoul'] = sets.precastWSIntGear
	-- sets.precast.WS['Rock Crusher'] = set_combine(sets.magicPrecastWSGear, {
	--	left_ear="Moonshade Earring"
	-- })
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "TP" then
		equip(sets.gear_aftercast_tp)
	else
		equip(sets.gear_aftercast_pdt)
	end
end

function job_buff_change(buff, gain)
	
end

