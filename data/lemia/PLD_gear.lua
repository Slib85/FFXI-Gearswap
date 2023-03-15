-- BEGIN AMBUSCADE CAPES
cape = {}
cape.fast_cast = { name="Rudianos's Mantle", augments={'"Fast Cast"+10',}}
--cape.melee_stp = { name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Store TP"+10','Phys. dmg. taken-10%',}}
cape.melee_dw = { name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}}
cape.melee_dbl_counter = { name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','"System: 1 ID: 640 Val: 4"',}}
cape.ws_physical_str = { name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.ws_physical_int = { name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.ws_multi_physical_mnd = {}
cape.ws_magic_int = { name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%',}}
cape.magic_int = cape.ws_magic_int
cape.magic_mnd = cape.ws_magic_int
cape.defense = { name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Mag. Evasion+15',}}
-- END AMBUSCADE CAPES

-- BEGIN PRECAST SETS
-- 72%
sets.precast_magic = {
    ammo="Sapience Orb", --2
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --14
    body="Sacro Breastplate", --10
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs={ name="Odyssean Cuisses", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+3','INT+6',}}, -- 3
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+7','"Fast Cast"+3',}}, -- 8
    neck="Orunmila's Torque", --5
    waist="Goading Belt", --0
    left_ear="Loquac. Earring", --2
    right_ear="Etiolation Earring", --1
    left_ring="Kishar Ring", --4
    right_ring="Prolix Ring", --2
    back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}}, --10
}

sets.precast_ws_physical = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
}

sets.precast_ws_pdl = set_combine(sets.precast_ws_physical, {
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
})

sets.precast_ws_multi_physical = set_combine(sets.precast_ws_physical_pdl, {
    back=cape.ws_multi_physical_mnd,
})

sets.precast_ws_magic = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Moonshade Earring",
    right_ear="Friomisi Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Defending ring",
    back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
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
sets.midcast_magic_accuracy = {
    ammo="Pemphredo Tathlum",
    head="Chev. Armet +3",
    body="Chev. Cuirass +3",
    hands="Chev. Gauntlets +3",
    legs="Chev. Cuisses +3",
    feet="Chev. Sabatons +2",
    neck="Henic Torque",
    waist="Luminary Sash",
    left_ear="Crepuscular Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}}, -- 11% cure, 0% SIRD, 3% DT
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back=cape.magic_int,
}

sets.midcast_enfeeble_int = sets.midcast_magic_accuracy

sets.midcast_enfeeble_mnd = set_combine(sets.midcast_magic_accuracy, {
    back=cape.magic_mind
})

sets.midcast_enmity_gear = {
    ammo="Sapience Orb",
    head="Loess Barbuta +1",
    body="Chev. Cuirass +1",
    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    legs={ name="Odyssean Cuisses", augments={'MND+2','CHR+6','Phalanx +4',}},
    feet={ name="Yorium Sabatons", augments={'Enmity+10',}},
    neck="Unmoving Collar",
    waist="Goading Belt",
    left_ear="Friomisi Earring",
    right_ear="Cryptic Earring",
    left_ring="Petrov Ring",
    right_ring="Apeile Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Phys. dmg. taken-10%',}},
}

sets.midcast_sird = {
    -- waist="Audumbla Sash",
    
}

-- 58% (50% cap) cure potency
-- 84% SIRD (expected 94% with cape) + 10% from merits = 104% expected, 94% current
-- 45% DT
sets.midcast_cure = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    neck="Loricate Torque +1",
    waist="Gishdubar sash",
    left_ear="Nourish. Earring +1",
    right_ear="Mendi. Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Mag. Evasion+15',}},
}

sets.midcast_magic_damage = {
    ammo="Pemphredo Tathlum",
    head="Nyame Helm",
    body="Sacro Breastplate",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Ishvara Earring",
    right_ear="Friomisi Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back=cape.magic_int,
}

sets.midcast_enhancing_skill = {
    
}

sets.midcast_enhancing_duration = {
    hands="Regal Gauntlets",
}

sets.midcast_phalanx = {
    main="Sakpata's Sword",
    sub={ name="Priwen", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}},
    head={ name="Valorous Mask", augments={'Phys. dmg. taken -2%','Mag. Acc.+20','Phalanx +4','Accuracy+17 Attack+17',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
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
    neck="Combatant's torque",
    waist="Sailfi Belt +1",
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}}, -- 10
}

sets.melee_tp_dw = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Hjarrandi Helm",
    body="Hjarrandi Breast.",
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
    feet={ name="Sakpata's Leggings", augments={'Path: A',}},
    neck="Combatant's Torque",
    waist="Tempus Fugit +1",
    left_ear="Telos Earring",
    right_ear="Crep. Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
    back=cape.melee_dw,
}

-- Total Counter: 39% (47% Monk Sub & 80% Counterstance)
sets.melee_counter = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sacro Breastplate", -- 15
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    -- neck="Bathy Choker +1", -- 10
    waist="Sailfi Belt +1",
    left_ear="Genmei Earring", -- 1
    right_ear="Cryptic Earring", -- 4
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back=cape.melee_dbl_counter, -- 10
}

sets.melee_defense = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    -- feet="Hippomenes Socks +1",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    p="Sanare Earring",
    right_ear="Eabani Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Phys. dmg. taken-10%',}},
}

sets.melee_absorb = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    -- feet="Hippomenes Socks +1",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    p="Sanare Earring",
    right_ear="Eabani Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Phys. dmg. taken-10%',}},
}

-- Total Regen: 37 (67 w/ Excalibur)
sets.melee_regen = {
    ammo="Staunch Tathlum +1",
    head="Loess Barbuta +1",
    body="Sacro Breastplate", -- 13
    -- hands="Regal Gauntlets", -- 10
    hands="Sakpata's Gauntlets",
    -- legs="Volte Brayettes" -- 3
    legs="Sakpata's Cuisses",
    feet="Volte Sollerets", -- 2
    -- neck="Bathy Choker +1", -- 3
    -- waist="Flume Belt",`
    left_ear="Odnowa Earring +1",
    -- right_ear="Infused Earring", -- 1
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    -- back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Regen+5',}}, -- 5
}
-- END MELEE SETS

sets.idle_defense = sets.melee_defense