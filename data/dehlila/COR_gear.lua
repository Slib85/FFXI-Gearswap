-- Character Basics

Cape = {}
Cape.SNAPSHOT           = {name="Camulus's Mantle", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Snapshot"+10','Mag. Evasion+15',}}
Cape.AGI_MAGIC_WS       = {name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Phys. dmg. taken-10%'}}
Cape.STR_PHYSICAL_WS    = {name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%'}}
Cape.RANGED_WS          = {name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%','Phys. dmg. taken-10%'}}
Cape.MELEE_TP           = {name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
Cape.RANGED_TP          = {name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10','Phys. dmg. taken-10%',}}
Cape.INT_MAGIC_WS       = {name="Camulus's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}

sets.precast_spell = {

}

sets.precast_roll = {
    main={ name="Rostam", augments={'Path: C',}},
    range="Compensator",
    head={ name="Lanun Tricorne +3", augments={'Enhances "Winning Streak" effect',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Chasseur's Gants +1",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Regal Necklace",
    waist="Carrier's Sash",
    left_ear="Arete del Luna +1",
    right_ear="Genmei Earring",
    left_ring="Luzaf's Ring",
    right_ring="Defending Ring",
    back=Cape.RANGED_TP,
}

sets.precast_ws = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Commodore Charm +2",
    waist="Sailfi Belt +1",
    left_ear="Telos Earring",
    right_ear="Ishvara Earring",
    left_ring="Ilabrat ring",
    right_ring="Regal Ring",
    back=Cape.STR_PHYSICAL_WS,
}

sets.precast_ra_ws = {
    ammo=gear.WSbullet,
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
    right_ear="Telos Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back=Cape.RANGED_WS
}

sets.precast_magic_ws = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck={ name="Commodore Charm +2", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back=Cape.INT_MAGIC_WS,
}

sets.precast_magic_ra_ws = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +3",
    neck={ name="Commodore Charm +2", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back=Cape.INT_MAGIC_WS,
}

sets.aftercast_dt = {
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame Gauntlets",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Warder's Charm",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back=Cape.MELEE_TP,
}

sets.aftercast_tp = {
    head="Nyame Helm",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Iskur Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring="Epona's Ring",
    right_ring="Defending Ring",
    back=Cape.MELEE_TP,
}

sets.precast_ra = {
    ammo="Chrono Bullet",
    head="Ikenga's Hat",
    --head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}}, 
    body="Ikenga's Vest",
    --body="Laksa. Frac +3",
    hands="Lanun Gants +3", 
    legs="Ikenga's Trousers",
    --legs={ name="Adhemar Kecks +1", augments={'AGI+12','"Rapid Shot"+13','Enmity-6',}},
    feet="Meg. Jam. +2",
    neck="Commodore charm +2",
    --waist="Yemaya Belt",  -- Duke Vepar
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    left_ring="Crepuscular Ring",
    right_ring="Defending Ring",
    back=Cape.SNAPSHOT,
}

sets.midcast_ra = {
    ammo="Chrono Bullet",
    head="Ikenga's hat",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Ikenga's Trousers",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    --feet="Malignance Boots",
    neck="Iskur Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    --waist="Yemaya Belt", -- Duke Vepar
    left_ear="Telos Earring",
    right_ear="Crepuscular Earring",
    --right_ear="Crepuscular Earring",
    left_ring="Dingir Ring",
    right_ring="Ilabrat Ring",
    back=Cape.RANGED_TP,
}