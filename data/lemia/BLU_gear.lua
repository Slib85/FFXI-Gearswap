-- Character Basics
sets.gear_precast_spell = {
    ammo = "Sapience Orb", -- 2%
    head ="Carmine Mask +1", -- 14%
    neck = "Orunmila's Torque", -- 5%
    left_ear = "Enchntr. Earring", -- 2%
    right_ear = "Etiolation Earring", -- 2%
    body="Taeon Tabard", --9%
    hands= "Leyline Gloves", --8%
    left_ring = "Kishar Ring", -- 4%
    right_ring = "Prolix Ring", -- 2%
    waist = "Witful Belt", -- 3%
    legs = "Psycloth Lappas", -- 7%
    feet="Carmine Greaves +1", -- 8%
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10'}}, -- 10%
}

sets.gear_precast_ws = {
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

sets.gear_precast_magicWS = {
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

sets.magic_accuracy = {
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
    
sets.gear_midcast_nuke = {
    ammo="Ghastly Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashishin Bazubands +3",
    legs="Hashishin Tayt +2",
    feet="Hashishin Basmak +3",
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

sets.gear_midcast_cure = {
    ammo="Staunch Tathlum +1",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Gishdubar Sash",
    left_ear="Telos Earring",
    right_ear="Dedition Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.gear_aftercast_dt = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Nyame Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
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

sets.gear_aftercast_tp = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Malignance Chapeau",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Malignance Gloves",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Dedition Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.enhancing_skill = {

    left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
}