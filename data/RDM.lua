function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Nuke', 'Melee', 'Refresh');
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
		ammo="Pemphredo Tathlum",
		head="Ea Hat +1",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Ea Slops +1",
		feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		neck="Mizu. Kubikazari",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Mujin Band",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	
	sets.lowTierNukeGear = {
		ammo="Pemphredo Tathlum",
		head="Ea Hat +1",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		neck="Mizu. Kubikazari",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}

	sets.enfeebleGear = {
		ammo="Regal Gem",
		head="Vitiation Chapeau +3",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands="Regal Cuffs",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Spell interruption rate down -10%','"Mag.Atk.Bns."+6',}},
		feet="Vitiation Boots +3",
		neck="Dls. Torque +2",
	    waist="Luminary Sash",
	    left_ear="Malignance Earring",
	    right_ear="Regal Earring",
	    left_ring="Kishar Ring",
	    right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}

	sets.meleeTP = {
		ammo="Ginsen",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Malignance Gloves",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Lissome Necklace",
		waist="Sarissapho. Belt",
		left_ear="Telos Earring",
		right_ear="Eabani Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
		--back="Mecistopins Mantle",
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
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Perimede Cape",	
	}

	sets.buffGearDuration = {
		neck="Dls. Torque +2",
		head="Telchine Cap",
		body="Telchine Chasuble",
		hands="Atrophy Gloves +3",
		legs="Telchine Braconi",
		feet="Lethargy Houseaux +1",
		back="Sucellos's Cape",
	}

	sets.cureGear = {
		ammo="Staunch Tathlum",
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
		ammo="Staunch Tathlum",
		head="Vitiation Chapeau +3",
		body="Jhakri Robe +2",
		hands="Malignance Gloves",
		legs="Carmine Cuisses +1",
		feet="Aya. Gambieras +2",
		neck="Loricate Torque +1",
		waist="Sarissapho. Belt",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		--back="Mecistopins Mantle",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.PDT = {
		ammo="Staunch Tathlum",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Malignance Gloves",
		legs="Aya. Cosciales +2",
		feet="Hippomenes Socks +1",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		--back="Mecistopins Mantle",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}

	sets.precastWSPhysical = {
		ammo="Floestone",
		head="Vitiation Chapeau +3",
		body="Vitiation Tabard +3",
		hands="Atrophy Gloves +3",
		legs="Vitiation Tights +3",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear="Sherida Earring",
		left_ring="Ilabrat Ring",
		right_ring="Rufescent Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.precastWSCritical = {

	}

	sets.precastWSMultiHit = {

	}

	sets.precastWSMagic = {
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
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
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
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
	--enable('neck')
	if state.OffenseMode.value == 'Melee' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.magic_burst)
		end
		
	elseif state.OffenseMode.value == 'Nuke' then

	end

	if S{"Diaga"}:contains(spell.english) then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
	end

	if S{"Burn", "Choke", "Rasp", "Frost", "Shock", "Drown"}:contains(spell.english) then
		equip(set_combine(sets.enfeebleGear, {
			head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic damage and magic burst damage',}},
			body={ name="Arch. Coat +3", augments={'Enhances "Manafont" effect',}},
			feet="Arch. sabots +3",
			legs="Arch. tonban +3",
			hands="Spaekona's Gloves +3"
		}));
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
	elseif state.OffenseMode.value == "Refresh" then
		equip (sets.refresh) 
	else
		equip(sets.PDT)
	end
end

function job_buff_change(buff, gain)

end