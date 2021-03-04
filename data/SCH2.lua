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
	sets.precastGear = {
		ammo = "Sapience Orb", -- 2%
    	head = { name="Merlinic Hood", augments={'Attack+15','"Fast Cast"+7',}}, -- 15%
		neck = "Orunmila's Torque", -- 5%
		ear1 = "Malignance Earring", -- 4%
		ear2 = "Loquac. Earring", -- 2%
		body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}}, --13%
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+29','"Fast Cast"+7','CHR+9','"Mag.Atk.Bns."+5',}}, -- 7%
    	ring1 = "Kishar Ring", -- 4%
		ring2 = "Prolix Ring", -- 2%
		waist = "Witful Belt", -- 3%
		legs = "Artsieq Hose", -- 5%
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Fast Cast"+4','CHR+7','"Mag.Atk.Bns."+1',}}, -- 9%
		back={ name="Taranus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}}, -- 10%
	}

	sets.lowTierNukeGear = {
        ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
        head="Mall. Chapeau +2",
        body="Mallquis Saio +2",
        hands="Mallquis Cuffs +2",
        legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Sanctity Necklace",
        waist="Orpheus's Sash",
        left_ear="Malignance Earring",
        right_ear="Regal Earring",
        left_ring="Freke Ring",
        right_ring="Mallquis Ring",
        back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}
		
	-- 437 = thunder 6
	-- Occult: 90 + 50 (trait)
	-- STP: 41 + 6 (strap) (Dream: +30)
	sets.occultAcumenGear = {
		ammo="Seraphic Ampulla", -- 7 occult
		head="Mallquis Chapeau +2", -- 11 occult
		body="Spaekona's Coat +3", -- 0
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','"Occult Acumen"+11','MND+3','Mag. Acc.+3','"Mag.Atk.Bns."+8',}}, -- 11 occult
		legs="Perdition Slops", -- 30 occult
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+11','MND+1','Mag. Acc.+4','"Mag.Atk.Bns."+13',}}, -- 11 occult
		neck="Lissome Necklace", --4 STP
		waist="Oneiros Rope", --2 STP + 20 occult
		ear1="Telos Earring", --5 STP
		ear2="Dedition Earring", --8 STP
		ring1="Chirich Ring +1", --6 STP
		ring2="Chirich Ring +1", -- 6 STP
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Store TP"+10','Phys. dmg. taken-10%',}}, --10 STP
	}
	
	sets.nukeGear = {
        ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
        head="Agwu's Cap",
        body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Sanctity Necklace",
	    waist="Acuity Belt +1",
        left_ear="Malignance Earring",
        right_ear="Regal Earring",
        left_ring="Freke Ring",
        right_ring="Mallquis Ring",
        back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}

	sets.enfeebleGearINT = {
		ammo="Pemphredo Tathlum",
	    head="Spaekona's Petasos +3",
	    body="Spaekona's Coat +3",
		hands="Regal Cuffs",
		legs="Spaekona's Tonban +3",
		feet="Spaekona's Sabots +3",
		neck="Src. Stole +2",
	    waist="Acuity Belt +1",
	    left_ear="Malignance Earring",
	    right_ear="Regal Earring",
	    left_ring="Kishar Ring",
	    right_ring="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.enfeebleGearMND = {
		ammo="Pemphredo Tathlum",
	    head="Spaekona's Petasos +3",
	    body="Spaekona's Coat +3",
		hands="Regal Cuffs",
		legs="Spaekona's Tonban +3",
		feet="Spaekona's Sabots +3",
		neck="Src. Stole +2",
	    waist="Luminary Sash",
	    left_ear="Malignance Earring",
	    right_ear="Regal Earring",
	    left_ring="Kishar Ring",
	    right_ring="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}

	-- Precast sets to enhance JAs
	sets.precast.JA['Mana Wall'] = {
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	sets.meleeTP = {
		ammo="Amar Cluster",
		head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic II damage',}},
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		--legs={ name="Merlinic Shalwar", augments={'Pet: VIT+6','Accuracy+19','Damage taken-4%','Accuracy+16 Attack+16',}},
		feet={ name="Arch. Sabots +3", augments={'Reduces Ancient Magic II MP cost',}},
		neck="Lissome Necklace",
		waist="Goading Belt",
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10','Phys. dmg. taken-10%',}},
	}

	sets.buffGear = {
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		neck="Melic Torque",
		waist="Olympus Sash",
		feet="Regal Pumps +1",
		left_ear="Augment. Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Fi Follet Cape",	
	}

	sets.buffGearDuration = {
		head="Telchine Cap",
		body="Telchine Chasuble",
		hands="Telchine Gloves",
		legs="Telchine Braconi",
		feet="Telchine Pigaches",
	}
	
	sets.precastWS = {
		ammo="Amar Cluster",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",
		waist="Eschan Stone",
		left_ear="Steelflash Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10','Phys. dmg. taken-10%',}},
	}

	sets.precastWSIntGear = {
		ammo="Floestone",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Src. Stole +2",
		waist="Acuity Belt +1",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Accuracy+20 Attack+20','INT+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.magicPrecastWSGear = {
		ammo="Ghastly Tathlum +1",
		head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic damage and magic burst damage',}},
		body={ name="Merlinic Jubbah", augments={'Pet: "Mag.Atk.Bns."+25','INT+13','Weapon skill damage +5%','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		neck={ name="Src. Stole +2", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
	}
	
	sets.maxMP = {
		ammo="Strobilus",
		head="Amalric Coif +1",
		body="Amalric Doublet +1",
		hands="Spaekona's Gloves +3",
		legs="Amalric Slops +1",
		feet={ name="Psycloth Boots", augments={'MP+50','INT+7','"Conserve MP"+6',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		ring1="Mephitas's Ring",
		ring2="Mephitas's Ring +1",
		left_ear="Etiolation Earring",
		right_ear="Regal Earring",
	}

	sets.aspirGear = {
	    neck="Erra Pendant",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+24','"Drain" and "Aspir" potency +11','"Mag.Atk.Bns."+4',}},
		body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		feet="Agwu's Pigaches",
		legs="Spaekona's Tonban +3",
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		ring1="Evanescence Ring",
		waist="Fucho-no-Obi"
	}

	sets.drainGear = {
	    neck="Erra Pendant",
		head="Pixie Hairpin +1",
		body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		feet="Agwu's Pigaches",
		legs="Spaekona's Tonban +3",
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		ring1="Evanescence Ring",
		ring2="Archon Ring",
		waist="Fucho-no-Obi"
	}

	sets.cureGear = {
		ammo="Staunch Tathlum +1",
		head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- 17
		body="Mallquis Saio +2",
		hands="Telchine Gloves", -- 10
		legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- 7
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}, -- 10
		neck="Phalaina Locket", -- 4
		waist="Gishdubar Sash",
		left_ear="Mendi. Earring", -- 5
		right_ear="Nourishing Earring +1", -- 6-7
		left_ring="Kunaji Ring",
		right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.PDT = {
	    ammo="Staunch Tathlum +1",
		head={ name="Merlinic Hood", augments={'Damage taken-3%','CHR+1',}},
	    body="Mallquis Saio +2",
		hands="Volte Bracers",
		legs={ name="Merlinic Shalwar", augments={'Pet: VIT+6','Accuracy+19','Damage taken-4%','Accuracy+16 Attack+16',}},
	    feet="Hippomenes Socks +1",
	    neck="Loricate Torque +1",
	    waist="Carrier's Sash",
	    left_ear="Lugalbanda Earring",
	    right_ear="Genmei Earring",
	    left_ring="Shneddick Ring",
	    right_ring="Defending Ring",
        back={ name="Mecisto. Mantle", augments={'Cap. Point+49%','MP+11','Rng.Acc.+1','DEF+11',}},
    }
	
	sets.manaWall = {
		--back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	sets.magic_burst = {
		head="Ea Hat +1",
		legs="Ea Slops +1",
		hands="Amalric Gages +1",
		ring2="Mujin Band"
	}

	sets.precast.WS = sets.precastWS;

	sets.precast.WS['Shattersoul'] = sets.precastWS
	sets.precast.WS['Rock Crusher'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Earth Crusher'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Starburst'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Sunburst'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Vidohunir'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Cataclysm'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Myrkr'] = set_combine(sets.maxMP, {
		right_ear="Moonshade Earring"
	})
	sets.precast.WS['Spiral Hell'] = {
		ammo="Floestone",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		body={ name="Merlinic Jubbah", augments={'Pet: "Mag.Atk.Bns."+25','INT+13','Weapon skill damage +5%','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet={ name="Merlinic Crackows", augments={'Attack+13','Magic dmg. taken -3%','Weapon skill damage +9%','Accuracy+19 Attack+19',}},
		neck={ name="Src. Stole +2", augments={'Path: A',}},
		waist={ name="Acuity Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Rufescent Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
	}
	sets.precast.WS['Shining Strike'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Seraph Strike'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Flash Nova'] = sets.magicPrecastWSGear

	sets.precast.JA.Manafont = {body="Archmage's Coat +3"}

	sets.precast.FC = sets.precastGear

	sets.precast.FC['Impact'] = set_combine(sets.precast.FC, {body="Twilight Cloak"})

	sets.midcast['Impact'] = {
		ammo="Seraphic Ampulla", -- 7 occult
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','"Occult Acumen"+11','MND+3','Mag. Acc.+3','"Mag.Atk.Bns."+8',}}, -- 11 occult
		legs="Perdition Slops", -- 30 occult
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+11','MND+1','Mag. Acc.+4','"Mag.Atk.Bns."+13',}}, -- 11 occult
		neck="Lissome Necklace", --4 STP
		waist="Oneiros Rope", --2 STP + 20 occult
		ear1="Telos Earring", --5 STP
		ear2="Dedition Earring", --8 STP
		ring1="Chirich Ring +1", --5 STP
		ring2="Chirich Ring +1", -- 6 STP
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Store TP"+10','Phys. dmg. taken-10%',}}, --10 STP


		
		ammo="Ghastly Tathlum +1",
		neck="Sorcerer's Stole +2",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Twilight Cloak",
		hands="Spaekona's Gloves +3",
		ring1="Freke Ring",
		ring2="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		--waist = "Orpheus's Sash", 
		waist = "Acuity Belt +1",
		legs="Spaekona's Tonban +3",
	    feet="Spaekona's Sabots +3",
		neck="Sorcerer's Stole +2",
	}

	include('BLMspells.lua')

	-- Override spells below...
	sets.midcast['Poisonga'] = set_combine(sets.enfeebleGearINT, {
		hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
		waist="Chaac belt",
	})
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.skill == 'Elemental Magic' and (buffactive['Manawell'] == 1 or buffactive['Manafont']) and not S{"Impact"}:contains(spell.english) then
		equip({body="Amalric Doublet +1"})
	end

	if buffactive['Mana Wall'] == 1 then
		equip(sets.manaWall)
	end

	if spell.skill == 'Elemental Magic' and (state.OffenseMode.value == 'MB' or state.OffenseMode.value == 'TP') then
		equip(sets.magic_burst)

		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'Occult' then
		if spell.skill == 'Elemental Magic' then
			equip(set_combine(sets.occultAcumenGear, {
				body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+4','"Occult Acumen"+11','MND+6',}},
			}))
		end
	elseif state.OffenseMode.value == 'AOEOccult' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.occultAcumenGear)
		end
		
		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'TH' then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
	end

	if S{"Breakga"}:contains(spell.english) or S{"Diaga"}:contains(spell.english) then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
	end

	if S{"Burn", "Choke", "Rasp", "Frost", "Shock", "Drown"}:contains(spell.english) then
		equip(set_combine(sets.enfeebleGearINT, {
			head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic damage and magic burst damage',}},
			body={ name="Arch. Coat +3", augments={'Enhances "Manafont" effect',}},
			feet="Arch. sabots +3",
			legs="Arch. tonban +3",
			legs="Agwu's Slops",
			hands="Spaekona's Gloves +3",
			left_ring="Stikini Ring +1",
		}));
	end

	if S{"Phalanx"}:contains(spell.english) then
		oldMain = player.equipment.main
		oldSub = player.equipment.sub
		
		equip(set_combine(sets.buffGearDuration, sets.buffGear, {
			-- main={ name="Gada", augments={'AGI+9','"Mag.Atk.Bns."+24','Phalanx +3','DMG:+8',}},
			-- sub="Ammurapi Shield",
			head={ name="Merlinic Hood", augments={'Rng.Acc.+24 Rng.Atk.+24','Pet: Accuracy+23 Pet: Rng. Acc.+23','Phalanx +4','Accuracy+13 Attack+13','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
			body={ name="Merlinic Jubbah", augments={'"Dbl.Atk."+1','Attack+14','Phalanx +3','Accuracy+11 Attack+11','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
			hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+13','"Store TP"+2','Phalanx +4','Accuracy+16 Attack+16',}},
			legs={ name="Merlinic Shalwar", augments={'Accuracy+13','Pet: Mag. Acc.+8','Phalanx +4','Accuracy+19 Attack+19','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
			feet={ name="Merlinic Crackows", augments={'Pet: "Dbl.Atk."+3 Pet: Crit.hit rate +3','INT+3','Phalanx +5','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
		}))
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	-- Lock feet after using Mana Wall.
	if not spell.interrupted then
		if spell.english == 'Mana Wall' then
			--enable('feet')
			--enable('back')
			--equip(sets.buff['Mana Wall'])
			--disable('feet')
			--disable('back')	
		end
	end

	if state.OffenseMode.value == "TP" then
		equip(sets.meleeTP)
	else
		equip(sets.PDT)
	end

	if buffactive['Mana Wall'] == 1 or spell.english == 'Mana Wall' then
		equip(sets.manaWall)
	end

	if oldMain and oldMain ~= '' then
		equip({
			main=oldMain
		})

		oldMain = ''
	end

	if oldSub and oldSub ~= '' then
		equip({
			sub=oldSub
		})

		oldSub = ''
	end
end

function job_buff_change(buff, gain)
	if buff == "Mana Wall" and not gain then
		equip(sets.PDT)
	end
end

