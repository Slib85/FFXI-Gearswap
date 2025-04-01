-- Character Basics
sets.precast_magic = {
    ammo = "Sapience Orb", -- 2%
    head ="Carmine Mask +1", -- 14%
    neck = "Orunmila's Torque", -- 5%
    left_ear = "Enchntr. Earring", -- 2%
    right_ear = "Etiolation Earring", -- 2%
    body="Hashishin Mintan +3", --16%
    hands= "Leyline Gloves", --8%
    left_ring = "Kishar Ring", -- 4%
    right_ring = "Prolix Ring", -- 2%
    waist = "Witful Belt", -- 3%
    legs = "Psycloth Lappas", -- 7%
    feet="Carmine Greaves +1", -- 8%
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10'}}, -- 10%
}
sets.precast_ws_physical = {
    ammo="Crepuscular Pebble",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Mirage Stole +2",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    --right_ear="Telos Earring",
    left_ring="Epaminondas's ring",
    right_ring="Ilabrat Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+7','Weapon skill damage +10%','Phys. dmg. taken-6%',}},
    --ammo=empty,head=empty,body=empty,hands=empty,legs=empty,feet=empty,neck=empty,waist=empty,left_ear=empty,right_ear=empty,left_ring=empty,right_ring="Defending Ring",back=empty
}

sets.precast_ws_magic = {
    ammo="Ghastly Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Src. Stole +2", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear="Regal Earring",
    left_ring="Shiva Ring +1",
    right_ring="Metamorph Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

sets.midcast_hybrid_accuracy = {
    ammo="Pemphredo Tathlum",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Hashishin Tayt +2",
    feet="Hashi. Basmak +3",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Telos Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null Shawl",
}

sets.midcast_magic_accuracy = {
    ammo="Pemphredo Tathlum",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashishin Bazubands +3",
    legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +3",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear="Crep. Earring",
    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}
    
sets.midcast_magic_damage = {
    ammo="Ghastly Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashishin Bazubands +3",
    legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +3",
    neck="Sanctity Necklace",
    --waist="Orpheus's Sash",
    waist="Acuity Belt +1",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
    --waist="Hachirin-no-Obi",
}

sets.midcast_cure = {
    ammo="Staunch Tathlum +1",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body="Nyame Mail",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Elite Royal Collar",
    waist="Plat. Mog. Belt",
    left_ear="Telos Earring",
    right_ear="Etiolation Earring",
    left_ring="Naji's Loop",
    right_ring="Ilabrat Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.idle_defense = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Nyame Helm",
    body="Hashishin Mintan +3", --16%
    hands="Nyame Gauntlets",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Dedition Earring",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.melee_tp = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Reiki Yotai",
    left_ear="Telos Earring",
    right_ear="Dedition Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.midcast_enhancing_skill = {

    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
}