cape = {}
cape.ws_physical            = {name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
-- cape.ws_magical               =
-- BEGIN PRECAST SETS
sets.precast_magic = {
    
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
    right_ear="Nukumi Earring +2",
    right_ring="Cornelia's ring",
    left_ring="Epaminondas's Ring",
    back=cape.ws_physical,
}

sets.precast_ws_magic = {
    ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    head="Nyame Helm",
    body="Sacro Breastplate",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Thrud Earring",
    right_ear="Friomisi Earring",
    right_ring="Cornelia's ring",
    left_ring="Epaminondas's Ring",
    back=cape.ws_magical,
}

sets.precast_ws_pdl = {

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
    
}

sets.midcast_magic_accuracy = {

}

sets.midcast_occult_acumen = {

}

sets.midcast_enfeeble_int = {

}

sets.midcast_enfeeble_mnd = {

}

sets.midcast_enhancing_skill = {

}

sets.midcast_enhancing_duration = {

}

sets.midcast_drain = {

}

sets.midcast_aspir = {

}

sets.midcast_cure = {

}

sets.midcast_magic_burst = {

}

sets.midcast_summon = {

}
-- END MIDCAST SETS

-- BEGIN MELEE SETS
sets.melee_tp = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head={ name="Nyame Helm", augments={'Path: A',}},
    body={ name="Nyame Mail", augments={'Path: A',}},
    hands="Gleti's Gauntlets",
    legs={ name="Nyame Flanchard", augments={'Path: A',}},
    feet={ name="Nyame Sollerets", augments={'Path: A',}},
    neck="Anu Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sroda Earring",
    right_ear="Sherida Earring",
    left_ring="Gere Ring",
    right_ring="Epona's Ring",
    back="Null Shawl",
}

sets.melee_dual_wield = {

}

sets.melee_subtle_blow = {

}

sets.melee_tp_hybrid = {

}
-- END MELEE SETS

-- BEGIN IDLE SETS
sets.idle_defense = {
    ammo="Coiste Bodhar",
    head={ name="Nyame Helm", augments={'Path: A',}},
    body={ name="Nyame Mail", augments={'Path: A',}},
    hands={ name="Nyame Gauntlets", augments={'Path: A',}},
    legs={ name="Nyame Flanchard", augments={'Path: A',}},
    feet={ name="Nyame Sollerets", augments={'Path: A',}},
    neck="Bathy Choker +1",
    waist="Null Belt",
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
    right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back=cape.defense,
}
-- END IDLE SETS

sets.midcast_ready_recast = {
    legs="Gleti's Breeches",
}
