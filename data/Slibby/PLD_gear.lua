-- BEGIN AMBUSCADE CAPES
cape = {}
cape.fast_cast = { name="Rudianos's Mantle", augments={'"Fast Cast"+10',}}
--cape.melee_stp = { name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Store TP"+10','Phys. dmg. taken-10%',}}
cape.melee_tp = { name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}}
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
    waist="Plat. Mog. Belt", --0
    ammo="Sapience Orb", --2
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --14
    body="Rev. Surcoat +3", --10
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
    legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+13','"Fast Cast"+4','INT+1',}}, -- 4
    feet="Chev. Sabatons +3", --10  /  13
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
    right_ring="Epaminondas's Ring",
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
    body="Adamantite Armor",
    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    legs={ name="Odyssean Cuisses", augments={'MND+2','CHR+6','Phalanx +4',}},
    feet={ name="Yorium Sabatons", augments={'Enmity+10',}},
    neck="Unmoving Collar",
    waist="Goading Belt",
    left_ear="Friomisi Earring",
    right_ear="Cryptic Earring",
    left_ring="Petrov Ring",
    right_ring="Apeile Ring",
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
    head={ name="Sakpata's Helm", augments={'Path: A',}}, -- 5% cure, 0% SIRD, 7% DT
    body="Adamantite Armor", -- 0% cure, 20% SIRD, Variable DT based on enmity
    hands="Chev. Gauntlets +3", -- 0% cure, 0% SIRD, 11% DT
    legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}}, -- 0% cure, 20% SIRD, 0% DT
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+24','"Fast Cast"+5','"Mag.Atk.Bns."+8',}}, -- 7% cure, 20% SIRD, 0% DT (can augment more cure or self cure)
    neck={ name="Loricate Torque +1", augments={'Path: A',}}, -- 0% cure, 5% SIRD, 6% DT
    waist="Sroda Belt", -- 35% cure, 0% SIRD, 0% DT
    left_ear="Magnetic Earring", -- 0% cure, 8% SIRD, 0% DT
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}}, -- 11% cure, 0% SIRD, 3% DT
    left_ring="Moonlight Ring", -- 0% cure, 0% SIRD, 5% DT
    right_ring="Defending Ring", -- 0% cure, 0% SIRD, 10% DT
    back=cape.melee_tp, -- 0% cure, 0% SIRD, 0% DT (This needs till next month because used all ambu capes :X)
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
    legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}}, -- 0% cure, 20% SIRD, 0% DT
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

sets.midcast_stoneskin = sets.midcast_cure


sets.midcast_phalanx = {
    head={ name="Odyssean Helm", augments={'AGI+5','Rng.Acc.+1 Rng.Atk.+1','Phalanx +4','Accuracy+16 Attack+16',}},
    body={ name="Valorous Mail", augments={'Crit.hit rate+1','AGI+1','Phalanx +3','Accuracy+18 Attack+18','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
    hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    back={ name="Weard Mantle", augments={'VIT+1','DEX+2','Enmity+2','Phalanx +4',}},
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
    right_ear="Crep. Earring",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    back=cape.melee_tp,
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
    back=cape.melee_tp,
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
    neck="Combatant's Torque",
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
    back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},    
}