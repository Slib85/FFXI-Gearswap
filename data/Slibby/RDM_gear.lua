-- BEGIN AMBUSCADE CAPES
cape = {}
cape.melee_stp = { name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}}
cape.melee_dual_wield = { name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}}
cape.ws_physical_str = { name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
--cape.ws_physical_int = { name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.ws_multi_physical_mnd = {}
cape.ws_magic_int = { name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.ws_magic_mnd = { name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.magic_int = { name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
cape.magic_mnd = cape.ws_magic_mnd -- need to upgrade this
cape.defense = { name="Sucellos's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','"Fast Cast"+10','DEF+50',}}
-- END AMBUSCADE CAPES

-- BEGIN PRECAST SETS
sets.precast_magic = {
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
    back=cape.defense,
}

sets.precast_ws_physical = {
    ammo="Coist Bodhar",
    head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body={ name="Nyame Mail", augments={'Path: A',}},
    hands="Atrophy Gloves +3",
    legs={ name="Nyame Flanchard", augments={'Path: A',}},
    feet="Leth. Houseaux +3",
    neck="Republican Platinum Medal",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Cornelia's Ring",
    back=cape.ws_physical_str,
}

sets.precast_ws_pdl = set_combine(sets.precast_ws_physical, {

})

sets.precast_ws_multi_physical = set_combine(sets.precast_ws_physical_pdl, {
    back=cape.ws_multi_physical_mnd,
})

sets.precast_ws_magic = {
    ammo="Ghastly Tathlum +1",
    head="Leth. Chappel +3",
    body="Lethargy Sayon +3",
    hands="Leth. Ganth. +3",
    legs="Leth. Fuseau +3",
    feet="Lethargy Houseaux +3",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Freke Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back=cape.ws_magic_int,
}

sets.precast_ws_magic_mnd = set_combine(sets.precast_ws_magic, {
    back=cape.ws_magic_mnd,
})

sets.precast_ws_magic_mnd_dark = set_combine(sets.precast_ws_magic, {
    head="Pixie Hairpin +1",
    right_ring="Archon Ring",
    back=cape.ws_magic_mnd,
})

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
sets.midcast_magic_damage = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Leth. Chappel +3",
    body="Lethargy Sayon +3",
    hands="Leth. Ganth. +3",
    legs="Leth. Fuseau +3",
    feet="Leth. Houseaux +3",
    neck="Mizu. Kubikazari",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Freke Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back=cape.magic_int,
}

sets.midcast_magic_accuracy = {
    ammo="Regal Gem",
    head="Vitiation Chapeau +3",
    body="Lethargy Sayon +3",
    hands="Regal Cuffs",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Spell interruption rate down -10%','"Mag.Atk.Bns."+6',}},
    feet="Vitiation Boots +3",
    neck="Dls. Torque +2",
    waist="Obstinate Sash",
    left_ear="Regal Earring",
    right_ear="Snotra Earring",
    left_ring="Kishar Ring",
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back=cape.magic_int,
    
    --left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    waist="Acuity Belt +1",
    --head="Leth. Chappel +3",
    body="Lethargy Sayon +3",
    hands="Leth. Ganth. +3",
    legs="Leth. Fuseau +3",
    --feet="Leth. Houseaux +3",
}

sets.midcast_enfeeble_int = sets.midcast_magic_accuracy

sets.midcast_enfeeble_mnd = set_combine(sets.midcast_magic_accuracy, {
    back=cape.magic_mind
})

sets.midcast_cure = {
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
    back=cape.ws_magic_mnd,
}

sets.midcast_enhancing_skill = {
    head="Befouled Crown",
    body="Vitiation Tabard +3",
    hands="Vitiation Gloves +3",
    legs="Carmine Cuisses +1",
    feet="Lethargy Houseaux +3",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Augment. Earring",
    right_ear="Andoaa Earring",
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back="Ghostfyre Cape",	
}

sets.midcast_enhancing_duration = {
    neck="Dls. Torque +2",
    head="Telchine Cap",
    body="Vitiation Tabard +3",
    hands="Atrophy Gloves +3",
    legs="Telchine Braconi",
    feet="Lethargy Houseaux +3",
    back="Sucellos's Cape",
    waist="Embla sash",
    right_ear="Lethargy Earring",
}

sets.midcast_enhancing_duration_other = set_combine(sets.midcast_enhancing_duration, {
    head="Leth. Chappel +3",
    body="Lethargy Sayon +3",
    --hands="Leth. Ganth. +3",
    legs="Leth. Fuseau +3",
    feet="Leth. Houseaux +3",
})

sets.midcast_magic_burst = {
    --head="Ea Hat +1",
    --hands="Bunzi's Gloves",
}

sets.midcast_phalanx = {
    head={ name="Merlinic Hood", augments={'Rng.Acc.+24 Rng.Atk.+24','Pet: Accuracy+23 Pet: Rng. Acc.+23','Phalanx +4','Accuracy+13 Attack+13','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
    body={ name="Merlinic Jubbah", augments={'DEX+15','Accuracy+3','Phalanx +4','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+13','"Store TP"+2','Phalanx +4','Accuracy+16 Attack+16',}},
    legs={ name="Merlinic Shalwar", augments={'Accuracy+13','Pet: Mag. Acc.+8','Phalanx +4','Accuracy+19 Attack+19','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    feet={ name="Merlinic Crackows", augments={'Pet: "Dbl.Atk."+3 Pet: Crit.hit rate +3','INT+3','Phalanx +5','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
}

sets.midcast_refresh = set_combine(sets.midcast_enhancing_duration, {
    head="Amalric Coif +1",
    legs="Leth. Fuseau +3",
    waist="Gishdubar Sash",
})

sets.midcast_regen = {
    feet="Bunzi's Sabots",
}
-- END MIDCAST SETS

-- BEGIN MELEE SETS
sets.melee_tp = {
    ammo="Coiste Bodhar",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Anu Torque",
    waist="Sailfi Belt +1",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
    back=cape.melee_stp,
}

sets.melee_subtle_blow = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Anu Torque",
    waist="Sarissapho. Belt",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
    back=cape.melee_stp,
}

sets.melee_dual_wield = {
    ammo="Coiste Bodhar",
    head="Nyame Helm",
    body="Malignance Tabard",
    hands="Nyame Gauntlets",
    legs="Malignance Tights",
    feet="Nyame Sollerets",
    neck="Anu Torque",
    waist="Sailfi Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back=cape.melee_dual_wield,
}

sets.melee_en_spell = {
    ammo="Sroda Tathlum",
    head="Malignance Chapeau",
    body="Nyame Mail",
    legs="Malignance Tights",
    hands="Aya. Manopolas +2",
    feet="Nyame Sollerets",
    neck={ name="Dls. Torque +2", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Crepuscular Earring",
    right_ear="Eabani Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
    back=cape.melee_dual_wield,
}
-- END MELEE SETS

-- BEGIN IDLE SETS
sets.idle_defense = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Genmei Earring",
    right_ear="Arete Del Luna +1",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back=cape.defense,
}
-- END IDLE SETS

sets.holy_water = {
    ammo="Staunch Tathlum +1",
    head="Wicce Petasos +3",
    body="Adamantite Armor",
    hands="Wicce Gloves +3",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet="Wicce Sabots +3",
    neck="Nicander's Necklace",
    waist="Null Belt",
    left_ear="Lugalbanda Earring",
    right_ear="Arete del Luna +1",
    left_ring={name="Blenmot's Ring +1", bag="Wardrobe 1"},
    right_ring={name="Blenmot's Ring +1", bag="Wardrobe 1"},
    back={ name="Taranus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity-10','Phys. dmg. taken-10%',}},
}