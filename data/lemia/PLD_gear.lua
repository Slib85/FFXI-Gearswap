-- BEGIN AMBUSCADE CAPES
cape = {}
cape.fast_cast = { name="Rudianos's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Mag. Evasion+15',}}
cape.ws_magic_int = { name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}}
cape.defense = { name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}}
cape.melee_tp = { name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}}
cape.melee_tp_counter = { name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','"System: 1 ID: 640 Val: 4"',}}
cape.ws_physical_str = { name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.cure = { name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','"Cure" potency +10%','Spell interruption rate down-10%',}}
cape.ws_multi_physical_mnd = {}
cape.melee_dw = cape.melee_tp
cape.magic_int = cape.ws_magic_int
cape.magic_mnd = cape.ws_magic_int
-- END AMBUSCADE CAPES

-- BEGIN PRECAST SETS
-- 72%
sets.precast_magic = {
    waist="Plat. Mog. Belt", --0
    ammo="Sapience Orb", --2
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --14
    body="Odyssean Chestplate", --11
    hands="Leyline Gloves", --8
    legs="Enuf Cosciales", -- 8
    feet="Chev. Sabatons +3", --13
    neck="Orunmila's Torque", --5
    left_ear="Loquac. Earring", --2
    right_ear="Etiolation Earring", --1
    left_ring="Kishar Ring", --4
    right_ring="Prolix Ring", --2
    back=cape.fast_cast, --10
}

sets.precast_ws_physical = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Republican Platinum Medal",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Cornelia's Ring",
    right_ring="Epaminondas's Ring",
    back=cape.ws_physical_str,
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
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Thrud Earring",
    right_ear="Friomisi Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Cornelia's Ring",
    back=cape.ws_magic_int,

    neck="Null Loop",
    waist="Acuity Belt +1"
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
    body="Adamantite Armor",
    hands="Chev. Gauntlets +3",
    legs="Chev. Cuisses +3",
    feet="Chev. Sabatons +3",
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

sets.midcast_enmity = {
    ammo="Sapience Orb",
    head="Loess Barbuta +1",
    body="Souv. Cuirass +1",
    hands="Yorium Gauntlets",
    legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+22','Enmity+8','MND+4',}},
    feet="Chev. Sabatons +3",
    neck="Moonlight Necklace",
    waist="Creed Baudrier",
    left_ear="Trux Earring",
    right_ear="Cryptic Earring",
    left_ring="Apeile Ring",
    right_ring="Apeile Ring +1",
    back=cape.defense,
}

sets.midcast_sird = {
    -- waist="Audumbla Sash",
    
}

-- 58% (50% cap) cure potency
-- 84% SIRD (expected 94% with cape) + 10% from merits = 104% expected, 94% current
-- 45% DT
sets.midcast_cure = {
    ammo="Staunch Tathlum +1", -- 0% cure, 11% SIRD, 3% DT
    head="Loess Barbuta +1", -- 5% cure, 0% SIRD, 7% DT
    body="Souveran Cuirass +1", -- 0% cure, 20% SIRD, Variable DT based on enmity
    --hands="Chev. Gauntlets +3", -- 0% cure, 0% SIRD, 11% DT
    hands="Regal Gauntlets", -- 0% cure, 0% SIRD, 11% DT
    legs="Carmine Cuisses +1", -- 0% cure, 20% SIRD, 0% DT
    feet={ name="Odyssean Greaves", augments={'"Cure" potency +4%',}},
    neck="Moonlight Necklace", -- 0% cure, 5% SIRD, 6% DT
    waist="Sroda Belt", -- 35% cure, 0% SIRD, 0% DT
    left_ear="Magnetic Earring", -- 0% cure, 8% SIRD, 0% DT
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}}, -- 11% cure, 0% SIRD, 3% DT
    left_ring="Moonlight Ring", -- 0% cure, 0% SIRD, 5% DT
    right_ring="Defending Ring", -- 0% cure, 0% SIRD, 10% DT
    back=cape.cure, -- 0% cure, 0% SIRD, 0% DT (This needs till next month because used all ambu capes :X)
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
    ammo="Staunch Tathlum +1", -- 0% cure, 11% SIRD, 3% DT
    head={ name="Sakpata's Helm", augments={'Path: A',}}, -- 5% cure, 0% SIRD, 7% DT
    body="Adamantite Armor", -- 0% cure, 20% SIRD, Variable DT based on enmity
    hands="Regal Gauntlets",
    legs="Carmine Cuisses +1", -- 0% cure, 20% SIRD, 0% DT
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+24','"Fast Cast"+5','"Mag.Atk.Bns."+8',}}, -- 7% cure, 20% SIRD, 0% DT (can augment more cure or self cure)
    neck={ name="Loricate Torque +1", augments={'Path: A',}}, -- 0% cure, 5% SIRD, 6% DT
    waist="Sroda Belt", -- 35% cure, 0% SIRD, 0% DT
    left_ear="Magnetic Earring", -- 0% cure, 8% SIRD, 0% DT
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}}, -- 11% cure, 0% SIRD, 3% DT
    left_ring="Moonlight Ring", -- 0% cure, 0% SIRD, 5% DT
    right_ring="Defending Ring", -- 0% cure, 0% SIRD, 10% DT
    back=cape.melee_tp, -- 0% cure, 0% SIRD, 0% DT (This needs till next month because used all ambu capes :X)
}

sets.midcast_enhancing_duration = sets.midcast_enhancing_skill

sets.midcast_stoneskin = sets.midcast_enhancing_skill


sets.midcast_phalanx = {
    head={ name="Valorous Mask", augments={'Phys. dmg. taken -2%','Mag. Acc.+20','Phalanx +4','Accuracy+17 Attack+17',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
    legs="Sakpata's Cuisses",
    feet="Souveran Schuhs +1",
    back="Weard Mantle",
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
    neck="Null Loop",
    waist="Sailfi Belt +1",
    left_ear="Telos Earring",
    right_ear="Crep. Earring",
    left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    back="Null Shawl",
}

sets.melee_tp_dw = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Null Loop",
    waist="Sailfi Belt +1",
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
    back=cape.melee_tp_counter,
}

sets.melee_defense = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Sanare Earring",
    right_ear="Eabani Earring",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    back=cape.defense,
}

sets.magic_defense = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head={ name="Sakpata's Helm", augments={'Path: A',}},
    body="Sacro Breastplate",
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
    feet={ name="Sakpata's Leggings", augments={'Path: A',}},
    neck="Null Loop",
    waist="Creed Baudrier",
    left_ear="Sanare Earring",
    right_ear="Eabani Earring",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    back=cape.defense,
}

sets.melee_absorb = {
    ammo="Staunch Tathlum +1",
    head="Chev. Armet +3",
    body="Adamantite Armor",
    hands="Chev. Gauntlets +3",
    legs="Chev. Cuisses +3",
    feet="Chev. Sabatons +3",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Sanare Earring",
    right_ear="Arete Del Luna +1",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring="Defending Ring",
    back=cape.defense,
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
    -- waist="Flume Belt",
    left_ear="Odnowa Earring +1",
    -- right_ear="Infused Earring", -- 1
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    -- back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Regen+5',}}, -- 5
}

sets.melee_block = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head={ name="Sakpata's Helm", augments={'Path: A',}},
    body={ name="Sakpata's Plate", augments={'Path: A',}},
    hands="Rev. Gauntlets +3",
    legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
    feet={ name="Sakpata's Leggings", augments={'Path: A',}},
    neck="Null Loop",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crep. Earring",
    left_ring="Moonlight Ring",
    right_ring="Moonlight Ring",
    back=cape.melee_tp,
}
-- END MELEE SETS

sets.recast = {
    ammo="Sapience Orb", --2
    head="Chev. Armet +3",
    body="Rev. Surcoat +3",
    hands="Regal Gauntlets",
    legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
    feet="Chev. Sabatons +3",
    neck="Orunmila's Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Loquac. Earring", --2
    right_ear="Etiolation Earring", --1
    left_ring="Kishar Ring", --4
    right_ring="Defending Ring",
    back=cape.fast_cast,    
}