-- BEGIN AMBUSCADE CAPES
cape = {}
cape.melee_stp = { name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}}
cape.ws_physical_str = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
-- END AMBUSCADE CAPES

-- BEGIN PRECAST SETS
sets.precast_magic = {
}

sets.precast_ws_physical = {
    ammo="Knobkierrie",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Moonshade Earring",
    right_ear="Sherida Earring",
    left_ring="Cornelia's ring",
    right_ring="Niqmaddu ring",
    back=cape.ws_physical_str,
}

sets.precast_ws_pdl = set_combine(sets.precast_ws_physical, {

})

sets.precast_ws_multi_physical = set_combine(sets.precast_ws_physical_pdl, {

})

sets.precast_ws_hybrid = {
    
}

sets.precast_ws_magic_earth = set_combine(sets.precast_ws_magic, {
    
})

sets.precast_ws_magic_light = set_combine(sets.precast_ws_magic, {
    
})

sets.precast_ws_magic_dark = {

}
-- END PRECAST SETS

-- BEGIN MIDCAST SETS
sets.midcast_magic_damage = {
    
}

sets.midcast_magic_damage_low_tier = {

}

sets.midcast_magic_accuracy = {
    
}

sets.midcast_enfeeble_int = sets.midcast_magic_accuracy

sets.midcast_enfeeble_mnd = set_combine(sets.midcast_magic_accuracy, {

})

sets.midcast_enfeeble_duration = {

}

sets.midcast_occult_acumen = {

}

sets.midcast_max_mp = {

}

sets.midcast_aspir = set_combine(sets.midcast_magic_accuracy, {

})

sets.midcast_drain = set_combine(sets.midcast_magic_accuracy, {

})

sets.midcast_cure = {

}

sets.midcast_waltz = {

}

sets.midcast_enhancing_skill = {
    
}

sets.midcast_enhancing_duration = {
    
}

sets.midcast_enmity = {
    
}

sets.midcast_magic_burst = {
    
}

sets.midcast_phalanx = {
    
}

sets.midcast_death = set_combine(sets.midcast_magic_damage, {
    
})
-- END MIDCAST SETS

-- BEGIN MELEE SETS
sets.melee_tp = {
    ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Moonlight Nodowa",
    waist="Moonbow Belt +1",
    left_ear="Schere Earring",
    right_ear="Sherida Earring",
    left_ring="Ilabrat Ring",
    right_ring="Niqmaddu Ring",
    back=cape.melee_stp,
}

sets.melee_dual_wield = set_combine(sets.melee_tp, {
    back=cape.dual_wield_tp
})
-- END MELEE SETS

-- BEGIN IDLE SETS
sets.idle_defense = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back=cape.melee_stp,
}
-- END IDLE SETS
