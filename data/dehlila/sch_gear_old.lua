sets.precastGear = {
    ammo="Sapience Orb", --2
    head={ name="Merlinic Hood", augments={'"Fast Cast"+5',}}, -- 13
    body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+1','AGI+1','"Fast Cast"+6','Accuracy+14 Attack+14','Mag. Acc.+13 "Mag.Atk.Bns."+13',}}, -- 12
    hands= "Agwu's Gages", --6%
    legs = "Agwu's Slops", -- 7%
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+6','CHR+3',}}, -- 11
    neck="Orunmila's Torque", -- 5
    left_ear="Malignance Earring", -- 4
    right_ear="Etiolation Earring", -- 1
    left_ring="Kishar Ring", -- 4
    right_ring="Prolix Ring", --2
    waist="Witful Belt", -- 3
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}}, -- 10
}

sets.nukeGear = {
    main="Bunzi's Rod",
    sub="Ammurapi Shield",
    ammo="Ghastly Tathlum +1",
    head="Agwu's Cap",
    body="Arbatel Gown +3",
    hands="Agwu's Gages",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck={ name="Argute Stole +2", augments={'Path: A',}},
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Metamor. Ring +1",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

sets.lowTierNukeGear = set_combine(sets.nukeGear, {
    sub="Culminus",
})

sets.enfeebleGear = {
    main="Bunzi's Rod",
    sub="Ammurapi Shield",
    ammo="Ghastly Tathlum +1",
    head="Agwu's Cap",
    body="Arbatel Gown +3",
    hands="Agwu's Gages",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck={ name="Argute Stole +2", augments={'Path: A',}},
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Metamor. Ring +1",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

-- Precast sets to enhance JAs
sets.precast.JA['Mana Wall'] = {
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
    feet="Wicce Sabots +1"
}

sets.meleeTP = {    
    ammo="Oshasha's Treatise",
    head="Arbatel Bonnet +3",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck="Warder's Charm",
    waist="Eschan Stone",
    left_ear="Telos Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Lugh's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}
sets.buffGear = {
    ammo="Staunch Tathlum +1",
    head="Befouled Crown",
    body="Pedagogy Gown +3",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Augment. Earring",
    right_ear="Andoaa Earring",
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back="Perimede Cape",	
}
sets.buffGearDuration = {
    main="Musa",
    Sub="Khonsu",
    body="Pedagogy Gown +3",
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
    body="Telchine Chasuble",
    legs="Telchine Braconi",
    feet="Telchine Pigaches",
    waist="Embla Sash",
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
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Arbatel Loafers +3",
    neck="Sibyl Scarf",
    waist="Acuity Belt +1",
    ear1="Regal Earring",
    ear2="Malignance Earring",
    ring1="Freke Ring",
    ring2="Archon Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
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
    feet="Agwu's Pigaches",
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
    main={ name="Bunzi's Rod", augments={'Path: A',}},
    sub="Genmei Shield",
    ammo="Staunch Tathlum +1",
    head="Vanya Hood",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet={ name="Agwu's Pigaches", augments={'Path: A',}},
    neck="Nodens Gorget",
    waist="Luminary Sash",
    left_ear="Malignance Earring",
    right_ear="Genmei Earring",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

sets.phalanxGear = {
    head={ name="Merlinic Hood", augments={'INT+13','Mag. Acc.+10','Phalanx +4',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23','DEX+2','Phalanx +3','Accuracy+8 Attack+8',}},
    hands={ name="Merlinic Dastanas", augments={'INT+2','"Dbl.Atk."+4','Phalanx +3','Accuracy+10 Attack+10',}},
    body={ name="Merlinic Jubbah", augments={'Crit.hit rate+1','Pet: AGI+1','Phalanx +4','Accuracy+13 Attack+13','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    feet={ name="Merlinic Crackows", augments={'"Cure" potency +3%','Pet: STR+7','Phalanx +4','Accuracy+8 Attack+8','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
    waist="Embla Sash",
}

sets.vagaryMBNoKill = {
    main="Malignance Pole",
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Mall. Chapeau +2",
    body="Mallquis Saio +2",
    hands="Mallquis Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Mallquis Clogs +2",
    neck="Sanctity Necklace",
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Genmei Earring",
    left_ring="Gelatinous Ring",
    right_ring="Defending Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
}

sets.PDT = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Arbatel Gown +3",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's charm",
    waist="Carrier's Sash",
    left_ear="Arete del Luna",
    right_ear="Arete del Luna +1",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back={ name="Lugh's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity-10','Mag. Evasion+15',}},
}