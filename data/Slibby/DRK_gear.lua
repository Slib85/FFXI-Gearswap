cape = {}
cape.melee_double_attack    = {name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
cape.dual_wield_tp           = {name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}}
cape.ws_physical_str        = {name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.ws_physical_vit        = {name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
--cape.ws_physical_int        = 
--cape.ws_magical_int         = 
--cape.ws_magical_mnd         = 
cape.magic_int              = {name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
--cape.magic_mnd              = 
cape.defense                = {name="Ankou's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','"Fast Cast"+10','DEF+50',}}
cape.fast_cast              = {name="Ankou's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','"Fast Cast"+10','DEF+50',}}

-- BEGIN PRECAST SETS
sets.precast_magic = {
    ammo="Staunch Tathlum +1",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Sacro Breastplate",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+24','"Fast Cast"+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Sarissapho. Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back=cape.fast_cast
}

sets.precast_ws_physical = {
    ammo="Knobkierrie",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Abyssal Bead Necklace +2",
    waist="Sailfi Belt +1",
    left_ear="Thrud Earring",
    right_ear="Heathen's Earring +2",
    right_ring="Regal Ring",
    left_ring="Epaminondas's Ring",
    back=cape.ws_physical_str,
}

sets.precast_ws_magic = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Heathen's Earring +2",
    left_ring="Archon Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back=cape.WS_MAGICAL_INT,
}

sets.precast_ws_pdl = {
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Abyssal Bead Necklace +2",
    waist="Fotia Belt",
    right_ear="Heathen's Earring +2",
}

sets.precast_ws_physical_vit = set_combine(sets.precast_ws_physical, {
    back=cape.ws_physical_int,
})

sets.precast_ws_physical_int = set_combine(sets.precast_ws_physical, {
    back=cape.ws_physical_int,
})

sets.precast_ws_magic_mnd = set_combine(sets.precast_ws_magic, {
    back=cape.ws_magical_mnd,
})
-- END PRECAST SETS

-- BEGIN MIDCAST SETS
sets.midcast_magic_damage = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Nyame Helm",
    body="Sacro Breastplate",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Heathen's Earring +2",
    left_ring="Archon Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back=cape.magic_int
}

sets.midcast_magic_accuracy = {
    ammo="Pemphredo Tathlum",
    head="Heath. Bur. +3",
    body="Heath. Cuirass +3",
    hands="Heath. Gauntlets +3",
    legs="Heath. Flanchard +3",
    feet="Heath. Sollerets +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear={ name="Heath. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Weapon skill damage +3%','STR+7 INT+7',}},
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

sets.midcast_occult_acumen = {
    feet="Heathen's Sollerets +2",
    waist="Oneiros Rope",
}


sets.midcast_enfeeble_int = {
    ammo="Pemphredo Tathlum",
    head="Heathen's Burgeonet +3",
    body="Heathen's Cuirass +2",
    hands="Heathen's Gauntlets +3",
    legs="Heathen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Heathen's Earring +2",
    left_ring="Metamorph Ring +1",
    right_ring="Kishar Ring",
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_enfeeble_mnd = {
    ammo="Pemphredo Tathlum",
    head="Heathen's Burgeonet +3",
    body="Heathen's Cuirass +2",
    hands="Heathen's Gauntlets +3",
    legs="Heathen's Flanchard +3",
    feet="Heathen's Sollerets +2",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Heathen's Earring +2",
    left_ring="Metamorph Ring +1",
    right_ring="Stikini Ring +1",
    back=cape.magic_mnd,
}

sets.midcast_enhancing_skill = {

}

sets.midcast_enhancing_duration = {

}

sets.midcast_drain = {
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body="Sacro Breastplate",
    hands="Fallen's Finger Gauntlets +3",
    legs="Heathen's Flanchard +3",
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Heathen's Earring +2",
    left_ring="Archon Ring",
    right_ring="Evanescence Ring",
    back="Niht Mantle",
}

sets.midcast_aspir = {

}

sets.midcast_cure = {

}

sets.midcast_magic_burst = {

}
-- END MIDCAST SETS

-- BEGIN MELEE SETS
sets.melee_tp = {
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    right_ear = "Heathen's Earring +2",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
    back=cape.melee_double_attack,
}

sets.melee_dual_wield = {
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
    back=cape.dual_wield_tp,
}

sets.melee_subtle_blow = {
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Dagon Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring="Chirich Ring +1",
    right_ring="Niqmaddu Ring",
    back=cape.melee_double_attack,
    neck="Bathy Choker +1",
}

sets.melee_tp_hybrid = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    --body="Dagon Breastplate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck={ name="Abyssal Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
    --right_ring="Niqmaddu Ring",
    back=cape.melee_double_attack
}
-- END MELEE SETS

-- BEGIN IDLE SETS
sets.idle_defense = {
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Bathy Choker +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back=cape.defense,
}
-- END IDLE SETS

