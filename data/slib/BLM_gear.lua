set_macro_page(2, 1)

-- Character Basics
sets.precastGear = {
    ammo = "Sapience Orb", -- 2%
    head = { name="Merlinic Hood", augments={'Attack+15','"Fast Cast"+7',}}, -- 15%
    neck = "Orunmila's Torque", -- 5%
    left_ear = "Malignance Earring", -- 4%
    right_ear = "Loquac. Earring", -- 2%
    body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}}, --13%
    hands= "Agwu's Gages", --6%
    left_ring = "Kishar Ring", -- 4%
    right_ring = "Prolix Ring", -- 2%
    waist = "Witful Belt", -- 3%
    legs = "Agwu's Slops", -- 7%
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Fast Cast"+4','CHR+7','"Mag.Atk.Bns."+1',}}, -- 9%
    back={ name="Taranus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}}, -- 10%
}

sets.meleeTP = {
    ammo="Amar Cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Combatant's Torque",
    waist="Goading Belt",
    left_ear="Telos Earring",
    right_ear="Dedition Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"}, -- 6 STP
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"}, -- 6 STP
    back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Store TP"+10','Phys. dmg. taken-10%',}},
}

sets.buffGear = {
    ammo="Staunch Tathlum +1",
    head="Befouled Crown",
    neck="Melic Torque",
    waist="Olympus Sash",
    feet="Regal Pumps +1",
    left_ear="Augment. Earring",
    right_ear="Andoaa Earring",
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back="Fi Follet Cape",	
}

sets.buffGearDuration = {
    head="Telchine Cap",
    body="Telchine Chasuble",
    hands="Telchine Gloves",
    legs="Telchine Braconi",
    feet="Telchine Pigaches",
    waist="Embla Sash",
}

sets.precastWS = {
    ammo="Amar Cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Telos Earring",
    left_ring="Epaminondas's ring",
    right_ring="Metamorph Ring +1",
    back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10','Phys. dmg. taken-10%',}},
}

sets.precastWSIntGear = {
    ammo="Floestone",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
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
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Src. Stole +2", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Metamorph Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
}

sets.occultAcumenGear = {
    ammo="Seraphic Ampulla", -- 7 occult
    head="Mallquis Chapeau +2", -- 11 occult
    body="Spaekona's Coat +3", -- 0
    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','"Occult Acumen"+11','MND+3','Mag. Acc.+3','"Mag.Atk.Bns."+8',}}, -- 11 occult
    legs="Perdition Slops", -- 30 occult
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+11','MND+1','Mag. Acc.+4','"Mag.Atk.Bns."+13',}}, -- 11 occult
    neck="Combatant's Torque", --4 STP
    waist="Oneiros Rope", --2 STP + 20 occult
    ear1="Telos Earring", --5 STP
    ear2="Dedition Earring", --8 STP
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"}, -- 6 STP
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"}, -- 6 STP
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Store TP"+10','Phys. dmg. taken-10%',}}, --10 STP
}

sets.lowTierNukeGear = {
    ammo="Ghastly Tathlum +1",
    head="Agwu's Cap",
    body="Spaekona's Coat +3",
    hands="Agwu's Gages",
    legs="Agwu's Slops",
    feet="Agwu's Pigaches",
    neck="Sorcerer's Stole +2",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Metamorph Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},

    waist="Orpheus's Sash",
    --waist="Dorin Obi",
    --waist="Acuity belt +1",
}
    
sets.nukeGear = {
    ammo="Ghastly Tathlum +1",
    head="Agwu's Cap",
    neck="Sorcerer's Stole +2",
    ear1="Malignance Earring",
    ear2="Regal Earring",
    body="Spaekona's Coat +3",
    hands="Agwu's Gages",
    legs="Agwu's Slops",
    ring1="Freke Ring",
    ring2="Metamorph Ring +1",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
    feet="Agwu's Pigaches",
    waist="Orpheus's Sash", 
    --waist="Dorin Obi",
    --waist="Acuity Belt +1",
    --head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic damage and magic burst damage',}},
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
    body="Nyame Mail",
    hands="Telchine Gloves", -- 10
    legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- 7
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}, -- 10
    neck="Phalaina Locket", -- 4
    waist="Gishdubar Sash",
    left_ear="Mendi. Earring", -- 5
    left_ring="Kunaji Ring",
    right_ring="Defending Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

sets.PDT = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    --feet="Hippomenes socks +1",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Lugalbanda Earring",
    right_ear="Sanare Earring",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back={ name="Taranus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity-10','Phys. dmg. taken-10%',}},
}

sets.manaWall = {
    feet="Wicce Sabots +1"
}

sets.magic_burst = {
    head="Ea Hat +1",
    --body={ name="Arch. Coat +3", augments={'Enhances "Manafont" effect',}},
    hands={ name="Agwu's Gages", augments={'Path: A',}},
    legs="Ea Slops +1",
    feet="Agwu's Pigaches",
}