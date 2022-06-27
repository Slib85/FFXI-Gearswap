function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Nuke', 'Melee', 'MeleeDW', 'MeleeEn', 'MeleeSub', 'Refresh');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 5)

	include(player.name .. "/RDM_gear.lua")

	-- Precast sets to enhance JAs
	sets.precast.JA['Chainspell'] = {
		body="Vitiation Tabard +3",
	}

	sets.precast.JA['Saboteur'] = {
		hands="Lethargy Gantherots +1",
	}

	sets.precast.JA['Composure'] = {

	}
	
	sets.precast.JA['Convert'] = {

	}

	sets.precast.WS = sets.precastWSPhysical

	-- #############
	-- ### Sword ###
	-- #############
	sets.precast.WS['Fast Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Burning Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Red Lotus Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Flat Blade'] = set_combine(sets.precastWSPhysical, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Shining Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Seraph Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Circle Blade'] = sets.precastWsPhysical
	sets.precast.WS['Spirits Within'] = set_combine(sets.precastWSPhysical, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Vorpal Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical)
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.precastWSMagic, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
	})
	sets.precast.WS['Requiescat'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Knights Of Round'] = sets.precastWsPhysical
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical, {
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})
	sets.precast.WS['Savage Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})


	-- ##############
	-- ### Dagger ###
	-- ##############
	sets.precast.WS['Aeolian Edge'] = sets.precastWSMagic
	
	--include('jobAbilities.lua')
	--include('weaponSkills.lua')
	include('spells.lua')


end

function job_post_midcast(spell, action, spellMap, eventArgs)
	disable('neck')
	enable('neck')
	if state.OffenseMode.value == 'Melee' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.magic_burst)
		end
		
	elseif state.OffenseMode.value == 'Nuke' then

	end

	if S{"Breakga", "Diaga", "Dia", "Dia II", "Dia III"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			body="Volte Jupon",
			waist="Chaac belt",
		})
	end


	if buffactive['Saboteur'] and spell.skill == 'Enfeebling Magic' then
		equip({
			hands="Lethargy Gantherots +1",
		})
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Melee" then
		equip(sets.meleeTP)
	elseif state.OffenseMode.value == "MeleeDW" then
		equip(sets.meleeDW)
	elseif state.OffenseMode.value == "MeleeEn" then
		equip(sets.meleeTPEn)
	elseif state.OffenseMode.value == "Refresh" then
		equip(sets.refresh) 
	elseif state.OffenseMode.value == "MeleeSub" then
		equip(sets.meleeSub)
	else
		equip(sets.PDT)
	end
end

function job_buff_change(buff, gain)

end