function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Nuke', 'Melee', 'MeleeHybrid', 'MeleeEn', 'MeleeSub', 'Refresh');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	sets.precastGear = {
		ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'Attack+15','"Fast Cast"+7',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+1','"Fast Cast"+6','"Mag.Atk.Bns."+11',}},
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+29','"Fast Cast"+7','CHR+9','"Mag.Atk.Bns."+5',}},
		legs={ name="Artsieq Hose", augments={'"Mag.Atk.Bns."+21','Mag. Evasion+8','Phys. dmg. taken -3',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Fast Cast"+4','CHR+7','"Mag.Atk.Bns."+1',}},
		neck="Orunmila's Torque",
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear="Malignance Earring",
		left_ring="Kishar Ring",
		right_ring="Defending Ring",
		back="Moonlight Cape",
	}
	
	sets.nukeGear = {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head="Bunzi's Hat",
		body="Bunzi's Robe",
		hands="Bunzi's Gloves",
		legs="Bunzi's Pants",
		feet="Bunzi's Sabots",
		neck="Mizu. Kubikazari",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.lowTierNukeGear = {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head="Bunzi's Hat",
		body="Bunzi's Robe",
		hands="Bunzi's Gloves",
		legs="Bunzi's Pants",
		feet="Bunzi's Sabots",
		neck="Mizu. Kubikazari",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.magicAccNoDurationGear = {
		ammo="Regal Gem",
		head="Bunzi's Hat",
		body="Bunzi's Robe",
		hands="Regal Cuffs",
		legs="Bunzi's Pants",
		feet="Bunzi's Sabots",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist={ name="Acuity Belt +1", augments={'Path: A',}},
		left_ear="Regal Earring",
		right_ear="Snotra Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.enfeebleGear = {
		ammo="Regal Gem",
		head="Vitiation Chapeau +3",
		body="Malignance Tabard",
		hands="Regal Cuffs",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Spell interruption rate down -10%','"Mag.Atk.Bns."+6',}},
		feet="Vitiation Boots +3",
		neck="Dls. Torque +2",
	    waist="Obstinate Sash",
	    left_ear="Regal Earring",
		right_ear="Snotra Earring",
	    left_ring="Kishar Ring",
	    right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}

	sets.meleeTP = {
		ammo="Coiste Bodhar",
		head="Nyame Helm",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Combatant's torque",
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Eabani Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
		right_ear="Sherida Earring",
		waist="Sailfi Belt +1",
	}

	sets.meleeSub = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Bunzi's Hat",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Combatant's torque",
		waist="Sarissapho. Belt",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.meleeTPHybrid = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Eabani Earring",
		left_ring="Chirich Ring +1",
		right_ring="Defending Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.meleeTPEn = {
		ammo="Pemphredo Tathlum",
		head="Bunzi's Hat",
		body="Malignance Tabard",
		legs="Malignance Tights",
		hands="Aya. Manopolas +2",
		feet="Malignance Boots",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear="Telos Earring",
		right_ear="Eabani Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.buffGear = {
		head="Befouled Crown",
		body="Vitiation Tabard +3",
		hands="Vitiation Gloves +3",
		legs="Carmine Cuisses +1",
		feet="Lethargy Houseaux +1",
		neck="Melic Torque",
		waist="Olympus Sash",
		left_ear="Augment. Earring",
		right_ear="Andoaa Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
		back="Fi Follet Cape",	
	}

	sets.buffGearDuration = {
		neck="Dls. Torque +2",
		head="Telchine Cap",
		body="Vitiation Tabard +3",
		hands="Atrophy Gloves +3",
		legs="Telchine Braconi",
		feet="Lethargy Houseaux +1",
		back="Sucellos's Cape",
		waist="Embla sash",
	}

	sets.cureGear = {
		ammo="Staunch Tathlum +1",
		head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- 17
		body="Mallquis Saio +2",
		hands="Telchine Gloves", -- 10
		legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- 7
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}, -- 10
		neck="Nodens Gorget", -- 5
		waist="Emphatikos rope",
		left_ear="Mendi. Earring", -- 5
		right_ear="Nourishing Earring +1", -- 6-7
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.refresh = {
		ammo="Staunch Tathlum +1",
		head="Vitiation Chapeau +3",
		body="Jhakri Robe +2",
		hands="Malignance Gloves",
		legs="Carmine Cuisses +1",
		feet="Aya. Gambieras +2",
		neck="Loricate Torque +1",
		waist="Sarissapho. Belt",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
		--back="Mecistopins Mantle",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.PDT = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear="Dominance Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.precastWSPhysical = {
		ammo="Floestone",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Epaminondas's Ring",
		right_ring="Rufescent Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.precastWSCritical = {

	}

	sets.precastWSMultiHit = {

	}

	sets.precastWSMagic = {
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

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
	elseif state.OffenseMode.value == "MeleeHybrid" then
		equip(sets.meleeTPHybrid)
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