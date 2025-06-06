-- BEGIN AMBUSCADE CAPES
cape = {}
cape.fast_cast = { name="Lugh's Cape", augments={'"Fast Cast"+10',}}
cape.melee_stp = { name="Lugh's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}}
cape.dual_wield_tp = {}
cape.ws_physical_str = {}
cape.ws_physical_int = {}
cape.ws_multi_physical_mnd = {}
cape.ws_magic_int = {}
cape.magic_int = { name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
cape.magic_mnd = cape.magic_int
cape.magic_stp = {}
cape.defense = cape.magic_int --{ name="Lugh's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity-10','Mag. Evasion+15',}}
-- END AMBUSCADE CAPES

-- BEGIN PRECAST SETS
sets.precast_magic = {
    right_ring = "Prolix Ring", -- 2%
    hands= "Agwu's Gages", --6%
    legs = "Agwu's Slops", -- 7%
    head = { name="Merlinic Hood", augments={'Attack+15','"Fast Cast"+7',}}, -- 15%
    body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}}, --13%
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Fast Cast"+4','CHR+7','"Mag.Atk.Bns."+1',}}, -- 9%
    left_ear = "Malignance Earring", -- 4%
    right_ear = "Loquac. Earring", -- 2%
    left_ring = "Kishar Ring", -- 4%
    waist = "Witful Belt", -- 3%
    back=cape.fast_cast, -- 10%
    ammo = "Sapience Orb", -- 2%
    neck = "Orunmila's Torque", -- 5%
}

sets.precast_ws_physical = {
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Grunfeld Rope",
    left_ear="Telos Earring",
    right_ear="Ishvara Earring",
    left_ring="Epaminondas's ring",
    right_ring="Rufescent Ring",
    back=cape.ws_physical_str,
}

sets.precast_ws_pdl = set_combine(sets.precast_ws_physical, {

})

sets.precast_ws_multi_physical = set_combine(sets.precast_ws_physical_pdl, {
    back=cape.ws_multi_physical_mnd,
})

sets.precast_ws_magic = {
    ammo="Ghastly Tathlum +1",
    head="Arbatel Bonnet +3",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck={ name="Argute Stole +2", augments={'Path: A',}},
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Metamor. Ring +1",
    back=cape.ws_magic_int,
}

sets.precast_ws_magic_earth = set_combine(sets.precast_ws_magic, {
    
})

sets.precast_ws_magic_light = set_combine(sets.precast_ws_magic, {
    
})

sets.precast_ws_magic_dark = set_combine(sets.precast_ws_magic, {
    head="Pixie Hairpin +1",
    right_ring="Archon Ring"
})
-- END PRECAST SETS

-- BEGIN MIDCAST SETS
sets.midcast_magic_affinity_dark = {
    head="Pixie Hairpin +1"
}

sets.midcast_magic_damage = {
    main="Opashoro",
    sub="Enki Strap",
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
    back=cape.magic_int,
}

sets.midcast_magic_accuracy = {
    ammo="Pemphredo Tathlum",
    head="Arbatel Bonnet +3",
    body="Arbatel Gown +3",
    hands="Arbatel Bracers +3",
    legs="Arbatel Pants +3",
    feet="Arbatel Loafers +3",
    neck={ name="Argute Stole +2", augments={'Path: A',}},
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Metamor. Ring +1",
    back=cape.magic_int,
}

sets.midcast_enfeeble_int = sets.midcast_magic_accuracy

sets.midcast_enfeeble_mnd = set_combine(sets.midcast_magic_accuracy, {
    back=cape.magic_mind
})

sets.midcast_occult_acumen = {
    ammo="Seraphic Ampulla", -- 7 occult
    head="Mallquis Chapeau +2", -- 11 occult   /   13 STP nyame
    body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+4','"Occult Acumen"+11','MND+6',}}, -- 0 or 11 occult / 15 stp nyame
    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','"Occult Acumen"+11','MND+3','Mag. Acc.+3','"Mag.Atk.Bns."+8',}}, -- 11 occult / 13 stp nyame
    legs="Perdition Slops", -- 30 occult
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+11','MND+1','Mag. Acc.+4','"Mag.Atk.Bns."+13',}}, -- 11 occult  / 13 stp nyame
    neck="Combatant's Torque", --4 STP
    waist="Oneiros Rope", --2 STP + 20 occult
    ear1="Telos Earring", --5 STP
    ear2="Dedition Earring", --8 STP
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"}, -- 6 STP
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"}, -- 6 STP
    back=cape.magic_stp, --10 STP
}

sets.midcast_max_mp = {
    ammo="Strobilus",
    head="Amalric Coif +1",
    body="Amalric Doublet +1",
    hands="Regal Cuffs",
    legs="Amalric Slops +1",
    feet={ name="Psycloth Boots", augments={'MP+50','INT+7','"Conserve MP"+6',}},
    neck="Sanctity Necklace",
    waist="Luminary Sash",
    ring1="Mephitas's Ring",
    ring2="Mephitas's Ring +1",
    left_ear="Etiolation Earring",
}

sets.midcast_aspir = set_combine(sets.midcast_magic_accuracy, {
    neck="Erra Pendant",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+24','"Drain" and "Aspir" potency +11','"Mag.Atk.Bns."+4',}},
    body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
    feet="Agwu's Pigaches",
    --legs="Spaekona's Tonban +3",
    --hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
    ring1="Evanescence Ring",
    waist="Fucho-no-Obi"
})

sets.midcast_drain = set_combine(sets.midcast_magic_accuracy, {
    neck="Erra Pendant",
    head="Pixie Hairpin +1",
    body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
    feet="Agwu's Pigaches",
    --legs="Spaekona's Tonban +3",
    --hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
    ring1="Evanescence Ring",
    ring2="Archon Ring",
    waist="Fucho-no-Obi"
})

sets.midcast_cure = {
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
    back=cape.magic_int,
}

sets.midcast_enhancing_skill = {
    ammo="Staunch Tathlum +1",
    head="Befouled Crown",
    body="Pedagogy Gown +3",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Augment. Earring",
    right_ear="Andoaa Earring",
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back="Perimede Cape",
}

sets.midcast_enhancing_duration = {
    main="Musa",
    sub="Enki Strap",
    body="Pedagogy Gown +3",
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
    body="Telchine Chasuble",
    legs="Telchine Braconi",
    feet="Telchine Pigaches",
    waist="Embla Sash",
}

sets.midcast_phalanx = {
    head={ name="Merlinic Hood", augments={'Rng.Acc.+24 Rng.Atk.+24','Pet: Accuracy+23 Pet: Rng. Acc.+23','Phalanx +4','Accuracy+13 Attack+13','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
    body={ name="Merlinic Jubbah", augments={'DEX+15','Accuracy+3','Phalanx +4','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+13','"Store TP"+2','Phalanx +4','Accuracy+16 Attack+16',}},
    legs={ name="Merlinic Shalwar", augments={'Accuracy+13','Pet: Mag. Acc.+8','Phalanx +4','Accuracy+19 Attack+19','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    feet={ name="Merlinic Crackows", augments={'Pet: "Dbl.Atk."+3 Pet: Crit.hit rate +3','INT+3','Phalanx +5','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
    waist="Embla Sash",
}

sets.midcast_regen = {
    head="Arbatel Bonnet +3",
}
-- END MIDCAST SETS

-- BEGIN MELEE SETS
sets.melee_tp = {
    ammo="Amar Cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Combatant's Torque",
    waist="Goading Belt",
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"}, -- 6 STP
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"}, -- 6 STP
    back=cape.melee_stp,
}

sets.melee_dual_wield = set_combine(sets.melee_tp, {
    back=cape.dual_wield_tp
})
-- END MELEE SETS

-- BEGIN IDLE SETS
sets.idle_defense = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Arbatel Gown +3",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Lugalbanda Earring",
    right_ear="Arete Del Luna +1",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back=cape.defense,
}
-- END IDLE SETS

-- BEGIN OTHER SETS
sets.vagaryMBNoKill = {
    main="Malignance Pole",
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Acuity Belt +1",
    left_ear="Malignance Earring",
    right_ear="Genmei Earring",
    left_ring="Gelatinous Ring",
    right_ring="Defending Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
}
-- END OTHER SETS