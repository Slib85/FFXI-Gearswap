function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'AOE', 'Occult', 'MB', 'TP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	sets.precastGear = {
		ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'"Fast Cast"+5',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+25','"Fast Cast"+5','MND+3','"Mag.Atk.Bns."+1',}},
    	hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+5',}},
		legs={ name="Merlinic Shalwar", augments={'"Fast Cast"+5',}},
		feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+6','CHR+3',}},
		neck="Orunmila's Torque",
		left_ear="Etiolation Earring",
		left_ring="Kishar Ring",
        back={ name="Taranus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}

	sets.lowTierNukeGear = {
		main="Lathi",
		ammo="Pemphredo Tathlum",
		head="Mallquis Chapeau +2",
		body="Spaekona's coat +2",
		hands="Mallquis Cuffs +2",
		legs="Mallquis Trews +2",
	    feet="Mallquis Clogs +2",
		neck="Sorcerer's Stole +2",
		--waist="Orpheus's Sash",
		waist="Acuity Belt +1",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Mallquis Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
		
	sets.occultAcumenGear = {
		ammo="Seraphic Ampulla",
		head="Mallquis Chapeau +2",
		body="Spaekona's coat +2",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','"Occult Acumen"+11','MND+3','Mag. Acc.+3','"Mag.Atk.Bns."+8',}},
		legs="Perdition Slops",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+11','MND+1','Mag. Acc.+4','"Mag.Atk.Bns."+13',}},
		--feet="wicce sabots +1",
		neck="Asperity Necklace", --3
		waist="Oneiros Rope", --2
		ear1="Telos Earring", --5
		ear2="Dedition Earring", --8
		ring1="Rajas Ring", --5
		ring2="Petrov Ring", --5
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Store TP"+10','Phys. dmg. taken-10%',}}, --10
	}
	
	sets.nukeGear = {
		main="Lathi",
		ammo="Pemphredo Tathlum",
		neck="Sorcerer's Stole +2",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		ring1="Freke Ring",
		ring2="Metamorph ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		waist = "Acuity Belt +1",
		--waist="Orpheus's Sash",
		head="Mallquis Chapeau +2",
		body="Spaekona's coat +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	}

	sets.enfeebleGearINT = {
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
	    left_ring="Stikini Ring +1",
	    right_ring="Stikini Ring +1",
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
	    left_ring="Stikini Ring +1",
	    right_ring="Stikini Ring +1",
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
		neck="Asperity Necklace",
		waist="Goading Belt",
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Haste+10','Phys. dmg. taken-10%',}},
	}
	sets.buffGear = {
		ammo="Staunch Tathlum",
		head="Befouled Crown",
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +4',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Melic Torque",
		waist="Olympus Sash",
		left_ear="Augment. Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Perimede Cape",	
	}
	
	sets.precastWS = {
		ammo="Amar Cluster",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Fotia Belt",
		left_ear="Steelflash Earring",
		right_ear="Telos Earring",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Haste+10','Phys. dmg. taken-10%',}},
	}

	sets.precastWSIntGear = {
		ammo="Floestone",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Src. Stole +2",
		waist="Fotia Belt",
		left_ear="Regal Earring",
		right_ear="Telos Earring",
		left_ring="Shiva Ring +1",
		right_ring="Shiva Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Accuracy+20 Attack+20','INT+1','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.magicPrecastWSGear = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Amalric Doublet +1",
		hands="Jhakri Cuffs +2",
		legs="Amalric Slops +1",
		feet="Amalric Nails +1",
		neck="Src. Stole +2",
		waist="Orpheus's Sash",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		ring1="Shiva Ring +1",
		ring2="Archon Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
	}
	
	sets.maxMP = {
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
		head={ name="Merlinic Hood", augments={'Mag. Acc.+24','"Drain" and "Aspir" potency +11','"Mag.Atk.Bns."+4',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+30','"Drain" and "Aspir" potency +8','STR+7',}},
		legs="Spaekona's Tonban +3",
		ring1="Evanescence Ring",
		waist="Fucho-no-Obi"
	}

	sets.drainGear = {
		head="Pixie Hairpin +1",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+30','"Drain" and "Aspir" potency +8','STR+7',}},
		ring1="Evanescence Ring",
		ring2="Archon Ring",
		waist="Fucho-no-Obi"
	}

	sets.cureGear = {
		ammo="Staunch Tathlum",
		head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		body="Mallquis Saio +2",
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Nodens Gorget",
		waist="Emphatikos rope",
		left_ear="Mendi. Earring",
		right_ear="Genmei Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.PDT = {
		main="Malignance Pole",
		sub="Niobid Strap",
		ammo="Staunch Tathlum",
		head="Mall. Chapeau +2",
		body="Mallquis Saio +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Herald's Gaiters",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Dominance Earring",
		right_ear="Genmei Earring",
		left_ring="Gelatinous Ring",
		right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.manaWall = {
		--back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	sets.magic_burst = {
		head="Ea Hat +1",
		legs="Ea Slops +1",
		hands="Amalric Gages +1",
		ring1="Mujin Band"
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
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Freke Ring",
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
		body="Twilight Cloak",
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
	}

	sets.midcast.Cure = sets.cureGear

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
	sets.midcast['Refresh'] = set_combine(sets.buffGear, sets.buffGearDuration, {head="Amalric Coif +1"})
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Phalanx'] = set_combine(sets.buffGearDuration, sets.buffGear, {
		body={ name="Merlinic Jubbah", augments={'"Dbl.Atk."+1','Attack+14','Phalanx +3','Accuracy+11 Attack+11','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+13','"Store TP"+2','Phalanx +4','Accuracy+16 Attack+16',}},
		legs={ name="Merlinic Shalwar", augments={'Potency of "Cure" effect received+1%','Pet: "Mag.Atk.Bns."+28','Phalanx +2',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Enmity+4','Phalanx +2','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
	})
	sets.midcast['Blaze Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Ice Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Shock Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)

	sets.midcast['Curaga'] = sets.cureGear
	sets.midcast['Curaga II'] = sets.cureGear

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
		ring1="Mephitas's Ring",
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

	sets.midcast['Quake II'] = sets.nukeGear
	sets.midcast['Flood II'] = sets.nukeGear
	sets.midcast['Tornado II'] = sets.nukeGear
	sets.midcast['Flare II'] = sets.nukeGear
	sets.midcast['Freeze II'] = sets.nukeGear
	sets.midcast['Burst II'] = sets.nukeGear

	sets.midcast['Poison'] = sets.enfeebleGearINT
	sets.midcast['Poison II'] = sets.enfeebleGearINT

	sets.midcast['Burn'] = sets.enfeebleGearINT
	sets.midcast['Choke'] = sets.enfeebleGearINT
	sets.midcast['Rasp'] = sets.enfeebleGearINT
	sets.midcast['Frost'] = sets.enfeebleGearINT
	sets.midcast['Shock'] = sets.enfeebleGearINT
	sets.midcast['Drown'] = sets.enfeebleGearINT
	sets.midcast['Slow'] = sets.enfeebleGearMND
	sets.midcast['Paralyze'] = sets.enfeebleGearMND
	sets.midcast['Silence'] = sets.enfeebleGearMND
	sets.midcast['Blind'] = sets.enfeebleGearINT
	sets.midcast['Gravity'] = sets.enfeebleGearINT
	sets.midcast['Dispel'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Dispelga'] = set_combine(sets.enfeebleGearINT, {
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
	if spell.skill == 'Enfeebling Magic' then
		equip({hands="Regal Cuffs"});
	end

	if spell.skill == 'Elemental Magic' and (buffactive['Manawell'] == 1 or buffactive['Manafont']) then
		equip({body="Amalric Doublet +1"})
	end

	if spell.skill == 'Elemental Magic' and (state.OffenseMode.value == 'MB' or state.OffenseMode.value == 'TP') then
		equip(sets.magic_burst)
	elseif spell.skill == 'Elemental Magic' and state.OffenseMode.value == 'Occult' then
		equip(sets.occultAcumenGear)
		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'AOE' then
		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'TH' then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
	end

	if S{"Breakga"}:contains(spell.english) then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
	end

	if S{"Burn", "Choke", "Rasp", "Frost", "Shock", "Drown"}:contains(spell.english) then
		equip(set_combine(sets.enfeebleGear, {
			feet="Arch. sabots +3",
			legs="Arch. tonban +3"
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