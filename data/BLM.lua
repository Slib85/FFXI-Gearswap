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
		ammo = "Sapience Orb",
    	head = { name="Merlinic Hood", augments={'Attack+15','"Fast Cast"+7',}},
		neck = "Orunmila's Torque",
		ear1 = "Malignance Earring",
		ear2 = "Loquac. Earring",
		body = { name="Merlinic Jubbah", augments={'Mag. Acc.+1','"Fast Cast"+6','"Mag.Atk.Bns."+11',}},
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+29','"Fast Cast"+7','CHR+9','"Mag.Atk.Bns."+5',}},
    	ring1 = "Kishar Ring",
		ring2 = "Prolix Ring",
		waist = "Witful Belt",
		legs = "Artsieq Hose",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Fast Cast"+4','CHR+7','"Mag.Atk.Bns."+1',}},
		back={ name="Taranus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}

	sets.lowTierNukeGear = {
		--main="Laevateinn",
		ammo="Pemphredo Tathlum",
		head="Mallquis Chapeau +2",
		body="Spaekona's Coat +3",
		hands="Mallquis Cuffs +2",
		legs="Spaekona's Tonban +3",
	    feet="Spaekona's Sabots +3",
		neck="Sorcerer's Stole +2",
		waist="Orpheus's Sash",
		--waist="acuity belt +1",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Mallquis Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
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
		ammo="Pemphredo Tathlum",
		head="Archmage's Petasos +3",
		neck="Sorcerer's Stole +2",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Spaekona's Coat +3",
		hands="Amalric Gages +1",
		ring1="Freke Ring",
		ring2="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		waist = "Orpheus's Sash", 
		--waist = "Acuity Belt +1",
		legs="Amalric Slops +1",
		--feet={ name="Arch. Sabots +3", augments={'Reduces Ancient Magic II MP cost',}},
		feet="Amalric Nails +1",
		--body="Amalric Doublet +1",

		
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		legs={ name="Arch. Tonban +3", augments={'Increases Elemental Magic debuff time and potency',}},
		feet={ name="Arch. Sabots +3", augments={'Increases Aspir absorption amount',}},
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
		ammo="Staunch Tathlum",
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
		waist="Fotia Belt",
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
		ammo="Pemphredo Tathlum",
		head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic damage and magic burst damage',}},
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
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
		feet={ name="Merlinic Crackows", augments={'"Drain" and "Aspir" potency +9','"Mag.Atk.Bns."+19','Accuracy+3 Attack+3','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
		legs="Spaekona's Tonban +3",
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		ring1="Evanescence Ring",
		waist="Fucho-no-Obi"
	}

	sets.drainGear = {
	    neck="Erra Pendant",
		head="Pixie Hairpin +1",
		feet={ name="Merlinic Crackows", augments={'"Drain" and "Aspir" potency +9','"Mag.Atk.Bns."+19','Accuracy+3 Attack+3','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
		legs="Spaekona's Tonban +3",
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		ring1="Evanescence Ring",
		ring2="Archon Ring",
		waist="Fucho-no-Obi"
	}

	sets.cureGear = {
		ammo="Staunch Tathlum",
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
	    ammo="Staunch Tathlum",
		head={ name="Merlinic Hood", augments={'Damage taken-3%','CHR+1',}},
	    body="Mallquis Saio +2",
		hands={ name="Merlinic Dastanas", augments={'Enmity-2','Crit. hit damage +2%','Damage taken-5%',}},
		legs={ name="Merlinic Shalwar", augments={'Accuracy+6','Damage taken-2%','INT+6','Mag. Acc.+3','"Mag.Atk.Bns."+7',}},
	    feet="Hippomenes Socks +1",
	    neck="Loricate Torque +1",
	    waist="Carrier's Sash",
	    left_ear="Lugalbanda Earring",
	    right_ear="Genmei Earring",
	    left_ring="Shneddick Ring",
	    right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity-10','Phys. dmg. taken-10%',}},
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

	sets.precast.WS['Shattersoul'] = sets.precastWSIntGear
	sets.precast.WS['Rock Crusher'] = set_combine(sets.magicPrecastWSGear, {
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
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
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


		
		ammo="Pemphredo Tathlum",
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

	sets.midcast.Cure = sets.cureGear

	sets.midcast['Sneak'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Invisible'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Deodorize'] = set_combine(sets.buffGear, sets.buffGearDuration)
	--send_command('input /console cancel 446')
	sets.midcast['Sandstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Sandstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Rainstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Rainstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Windstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Windstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Firestorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Firestorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Hailstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Hailstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Thunderstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Thunderstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Aurorastorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Aurorastorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Voidstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Voidstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)

	sets.midcast['Blink'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Aquaveil'] = set_combine(set_combine(sets.buffGearDuration, sets.buffGear), {hands="Regal Cuffs", head="Amalric Coif +1", waist="Emphatikos rope", feet="Amalric Nails +1"})
	sets.midcast['Refresh'] = set_combine(sets.buffGear, sets.buffGearDuration, {
		head="Amalric Coif +1",
		waist="Gishdubar Sash",
	})
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Phalanx'] = set_combine(sets.buffGearDuration, sets.buffGear, {
		head={ name="Merlinic Hood", augments={'Rng.Acc.+24 Rng.Atk.+24','Pet: Accuracy+23 Pet: Rng. Acc.+23','Phalanx +4','Accuracy+13 Attack+13','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
    	body={ name="Merlinic Jubbah", augments={'"Dbl.Atk."+1','Attack+14','Phalanx +3','Accuracy+11 Attack+11','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+13','"Store TP"+2','Phalanx +4','Accuracy+16 Attack+16',}},
		legs={ name="Merlinic Shalwar", augments={'Accuracy+13','Pet: Mag. Acc.+8','Phalanx +4','Accuracy+19 Attack+19','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		feet={ name="Merlinic Crackows", augments={'Crit. hit damage +1%','"Conserve MP"+5','Phalanx +4','Accuracy+8 Attack+8',}},
	})
	sets.midcast['Blaze Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Ice Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Shock Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)

	sets.midcast['Curaga'] = sets.cureGear
	sets.midcast['Curaga II'] = sets.cureGear
	
	sets.midcast['Regen'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen III'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen IV'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen V'] = set_combine(sets.buffGear, sets.buffGearDuration)

	sets.midcast['Barstonra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barwatera'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Baraera'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barfira'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblizzara'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barthundra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsleepra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpoisonra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barparalyzra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblindra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsilencera'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpetra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barvira'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Baramnesra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barstone'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barwater'] = set_combine(sets.buffGearDuration, sets.buffGear)     
	sets.midcast['Baraero'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barfire'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblizzard'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barthunder'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsleep'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpoison'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barparalyze'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblind'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsilence'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpetrify'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barvirus'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Baramnesia'] = set_combine(sets.buffGearDuration, sets.buffGear)

	sets.midcast['Protect V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shell V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protect IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shell IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protect III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shell III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protect II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shell II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protect'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shell'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})

	sets.midcast['Haste'] = set_combine(sets.buffGear, sets.buffGearDuration)

	sets.midcast['Comet'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})

	sets.midcast['Death'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		body="Amalric Doublet +1",
		feet="Amalric Nails +1",
		ring2="Archon Ring",
	})

	sets.midcast['Meteor'] = set_combine(sets.nukeGear, {
		body="Amalric Doublet +1",
		waist="Acuity Belt +1"
	})

	sets.midcast['Stone'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Stone II'] = sets.lowTierNukeGear
	sets.midcast['Stone III'] = sets.nukeGear
	sets.midcast['Stone IV'] = sets.nukeGear
	sets.midcast['Stone V'] = sets.nukeGear
	sets.midcast['Stone VI'] = sets.nukeGear
	sets.midcast['Stonega'] = sets.lowTierNukeGear
	sets.midcast['Stonega II'] = sets.lowTierNukeGear
	sets.midcast['Stonega III'] = sets.nukeGear
	sets.midcast['Stoneja'] = sets.nukeGear

	sets.midcast['Water'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Water II'] = sets.lowTierNukeGear
	sets.midcast['Water III'] = sets.nukeGear
	sets.midcast['Water IV'] = sets.nukeGear
	sets.midcast['Water V'] = sets.nukeGear
	sets.midcast['Water VI'] = sets.nukeGear
	sets.midcast['Waterga'] = sets.lowTierNukeGear
	sets.midcast['Waterga II'] = sets.lowTierNukeGear
	sets.midcast['Waterga III'] = sets.nukeGear
	sets.midcast['Waterja'] = sets.nukeGear

	sets.midcast['Aero'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Aero II'] = sets.lowTierNukeGear
	sets.midcast['Aero III'] = sets.nukeGear
	sets.midcast['Aero IV'] = sets.nukeGear
	sets.midcast['Aero V'] = sets.nukeGear
	sets.midcast['Aero VI'] = sets.nukeGear
	sets.midcast['Aeroga'] = sets.lowTierNukeGear
	sets.midcast['Aeroga II'] = sets.lowTierNukeGear
	sets.midcast['Aeroga III'] = sets.nukeGear
	sets.midcast['Aeroja'] = sets.nukeGear

	sets.midcast['Fire'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Fire II'] = sets.lowTierNukeGear
	sets.midcast['Fire III'] = sets.nukeGear
	sets.midcast['Fire IV'] = sets.nukeGear
	sets.midcast['Fire V'] = sets.nukeGear
	sets.midcast['Fire VI'] = sets.nukeGear
	sets.midcast['Firaga'] = sets.lowTierNukeGear
	sets.midcast['Firaga II'] = sets.lowTierNukeGear
	sets.midcast['Firaga III'] = sets.nukeGear
	sets.midcast['Firaja'] = sets.nukeGear

	sets.midcast['Blizzard'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Blizzard II'] = sets.lowTierNukeGear
	sets.midcast['Blizzard III'] = sets.nukeGear
	sets.midcast['Blizzard IV'] = sets.nukeGear
	sets.midcast['Blizzard V'] = sets.nukeGear
	sets.midcast['Blizzard VI'] = sets.nukeGear
	sets.midcast['Blizzaga'] = sets.lowTierNukeGear
	sets.midcast['Blizzaga II'] = sets.lowTierNukeGear
	sets.midcast['Blizzaga III'] = sets.nukeGear
	sets.midcast['Blizzaja'] = sets.nukeGear

	sets.midcast['Thunder'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Thunder II'] = sets.lowTierNukeGear
	sets.midcast['Thunder III'] = sets.nukeGear
	sets.midcast['Thunder IV'] = sets.nukeGear
	sets.midcast['Thunder V'] = sets.nukeGear
	sets.midcast['Thunder VI'] = sets.nukeGear
	sets.midcast['Thundaga'] = sets.lowTierNukeGear
	sets.midcast['Thundaga II'] = sets.lowTierNukeGear
	sets.midcast['Thundaga III'] = sets.nukeGear
	sets.midcast['Thundaja'] = sets.nukeGear

	sets.midcast['Quake'] = sets.nukeGear
	sets.midcast['Quake II'] = sets.nukeGear
	sets.midcast['Flood'] = sets.nukeGear
	sets.midcast['Flood II'] = sets.nukeGear
	sets.midcast['Tornado'] = sets.nukeGear
	sets.midcast['Tornado II'] = sets.nukeGear
	sets.midcast['Flare'] = sets.nukeGear
	sets.midcast['Flare II'] = sets.nukeGear
	sets.midcast['Freeze'] = sets.nukeGear
	sets.midcast['Freeze II'] = sets.nukeGear
	sets.midcast['Burst'] = sets.nukeGear
	sets.midcast['Burst II'] = sets.nukeGear

	sets.midcast['Poison'] = sets.enfeebleGearINT
	sets.midcast['Poison II'] = sets.enfeebleGearINT
	sets.midcast['Distract'] = sets.enfeebleGearINT
	sets.midcast['Frazzle'] = sets.enfeebleGearINT

	sets.midcast['Slow'] = sets.enfeebleGearMND
	sets.midcast['Paralyze'] = sets.enfeebleGearMND
	sets.midcast['Silence'] = sets.enfeebleGearMND
	sets.midcast['Blind'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Gravity'] = sets.enfeebleGearINT
	sets.midcast['Dispel'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.precast['Dispelga'] = {
		main="Daybreak",
	}
	sets.midcast['Dispelga'] = set_combine(sets.enfeebleGearINT, {
		main="Daybreak",
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Sleep'] = sets.enfeebleGearINT
	sets.midcast['Sleep II'] = sets.enfeebleGearINT
	sets.midcast['Sleepga'] = sets.enfeebleGearINT
	sets.midcast['Sleepga II'] = sets.enfeebleGearINT
	sets.midcast['Break'] = sets.enfeebleGearINT
	sets.midcast['Breakga'] = sets.enfeebleGearINT
	sets.midcast['Bind'] = sets.enfeebleGearINT
	sets.midcast['Stun'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})

	sets.midcast['Absorb-STR'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-DEX'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-VIT'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-INT'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-AGI'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-CHR'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-MND'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-TP'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})


	sets.midcast['Geohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Hydrohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Anemohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Pyrohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Cryohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Ionohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Noctohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Luminohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Geohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Hydrohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Anemohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Pyrohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Cryohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Ionohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Noctohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Luminohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})


	sets.midcast['Drain'] = set_combine(sets.enfeebleGearINT, sets.drainGear);
	sets.midcast['Aspir'] = set_combine(sets.enfeebleGearINT, sets.aspirGear);
	sets.midcast['Aspir II'] = set_combine(sets.enfeebleGearINT, sets.aspirGear);
	sets.midcast['Aspir III'] = set_combine(sets.enfeebleGearINT, sets.aspirGear);
	sets.midcast['Stoneskin'] = set_combine(set_combine(sets.buffGearDuration, sets.buffGear), {
		waist="Siegel Sash",
		neck="Nodens Gorget"
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
			hands="Spaekona's Gloves +3",
			left_ring="Stikini Ring +1",
		}));
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
end

function job_buff_change(buff, gain)
	if buff == "Mana Wall" and not gain then
		equip(sets.PDT)
	end
end