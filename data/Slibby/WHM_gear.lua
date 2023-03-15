-- BEGIN AMBUSCADE CAPES
cape = {}
cape.fast_cast = { name="Alaunus's Cape", augments={'"Fast Cast"+10',}}
cape.melee_stp = { name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
cape.ws_physical_str = { name="Taranus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.ws_physical_int = { name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.ws_multi_physical_mnd = {}
cape.ws_magic_int = { name="Alaunus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
cape.magic_int = cape.ws_magic_int
cape.magic_mnd = {}
cape.magic_stp = {}
cape.defense = cape.melee_stp
-- END AMBUSCADE CAPES

-- BEGIN PRECAST SETS
sets.precast_magic = {
    ammo = "Sapience Orb", -- 2%
    head = "Bunzi's Hat", -- 10%
    neck = "Orunmila's Torque", -- 5% (can be 10%)
    left_ear = "Malignance Earring", -- 4%
    right_ear = "Loquac. Earring", -- 2%
    body="Inyanga Jubbah +2", --14%
    --hands= "Agwu's Gages", --6% (Can be 7%)
    left_ring = "Kishar Ring", -- 4%
    right_ring = "Prolix Ring", -- 2%
    waist = "Witful Belt", -- 3%
    legs = "Aya. Cosciales +2", -- 6%
    --feet="", -- 7%
    back=cape.fast_cast, -- 10%
}

sets.precast_ws_physical = {
    ammo="Amar Cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Grunfeld Rope",
    left_ear="Ishvara Earring",
    right_ear="Telos Earring",
    left_ring="Epaminondas's ring",
    right_ring="Rufescent Ring",
    back=cape.ws_physical_str,
}

sets.precast_ws_pdl = set_combine(sets.precast_ws_physical, {

})

sets.precast_ws_multi_physical = set_combine(sets.precast_ws_physical_pdl, {
    back=cape.ws_multi_physical_mnd,
})

sets.precast_ws_int = set_combine(sets.precast_ws_physical, {
    ammo="Floestone",
    neck="Sibyl Scarf",
    waist="Acuity Belt +1",
    left_ear="Regal Earring",
    right_ear="Wicce Earring +2",
    left_ring="Freke Ring",
    right_ring="Metamorph Ring +1",
    back=cape.ws_magic_int,
})

sets.precast_ws_magic = {
    ammo="Ghastly Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Wicce Gloves +3",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Acuity Belt +1",
    left_ear="Regal Earring",
    right_ear="Wicce Earring +2",
    left_ring="Freke Ring",
    right_ring="Metamorph Ring +1",
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
sets.midcast_magic_damage = {
    ammo="Ghastly Tathlum +1",
    head="Bunzi's Hat",
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet="Bunzi's Sabots",
    neck="Sibyl Scarf",
    waist="Acuity belt +1",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Freke Ring",
    right_ring="Metamorph Ring +1",
    back=cape.magic_int,
}

sets.midcast_magic_accuracy = {
    ammo="Pemphredo Tathlum",
    head="Bunzi's Hat",
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet="Bunzi's Sabots",
    neck="Sanctity Necklace",
    waist="Acuity Belt +1",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Kishar Ring",
    right_ring="Metamorph Ring +1",
    back=cape.magic_int,
}

sets.midcast_enfeeble_int = sets.midcast_magic_accuracy

sets.midcast_enfeeble_mnd = set_combine(sets.midcast_magic_accuracy, {
back=cape.magic_mind
})

sets.midcast_cure = {
    ammo="Staunch Tathlum +1",
    head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}}, -- 17
    body="Ebers Bliaut +3",
    hands="Theophany Mitts +3", -- 10
    legs="Ebers Pantaloons +1", -- 7
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}, -- 10
    neck="Cleric's Torque +2", -- 4
    waist="Gishdubar Sash",
    left_ear="Mendi. Earring", -- 5
    left_ring="Kunaji Ring",
    right_ring="Defending Ring",
    back="",
}

sets.midcast_enhancing_skill = {
    ammo="Staunch Tathlum +1",
    head="Befouled Crown",
    neck="Melic Torque",
    waist="Olympus Sash",
    feet="Theophany Duckbill +3",
    left_ear="Augment. Earring",
    right_ear="Andoaa Earring",
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back="Fi Follet Cape",	
}

sets.midcast_enhancing_duration = {
    head="Telchine Cap",
    body="Telchine Chasuble",
    hands="Telchine Gloves",
    legs="Telchine Braconi",
    feet="Telchine Pigaches",
    waist="Embla Sash",
}

sets.midcast_magic_burst = {
    head="Ea Hat +1",
    hands="Agwu's Gages",
}

sets.midcast_regen = {
    head="Inyanga Tiara +2",
    feet="Bunzi's Sabots",
}

sets.midcast_phalanx = {
    hands={ name="Chironic Gloves", augments={'Pet: Attack+26 Pet: Rng.Atk.+26','MND+2','Phalanx +4','Accuracy+14 Attack+14','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
}

sets.midcast_cursna = {
    
}

sets.midcast_divine_caress = {
    back="Mending Cape"
}
-- END MIDCAST SETS

-- BEGIN MELEE SETS
sets.melee_tp = {
    ammo="Amar Cluster",
    head="Bunz's Hat",
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
    back=cape.melee_stp,
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
    left_ear="Lugalbanda Earring",
    right_ear="Arete Del Luna +1",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back=cape.defense,
    body="Shamash Robe",
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
}
-- END IDLE SETS

-- BEGIN OTHER SETS

-- END OTHER SETS
