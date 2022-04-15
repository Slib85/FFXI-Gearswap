set_macro_page(2, 16)

-- Character Basics
sets.gear_precast_spell = {
    ammo = "Sapience Orb", -- 2%
    head ="Carmine Mask +1", -- 14%
    neck = "Orunmila's Torque", -- 5%
    left_ear = "Enchntr. Earring", -- 2%
    right_ear = "Loquac. Earring", -- 2%
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
    ammo="Amar Cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Telos Earring",
    left_ring="Epaminondas's ring",
    right_ring="Metamorph Ring +1",
    back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10','Phys. dmg. taken-10%',}},
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
    left_ring="Freke Ring",
    right_ring="Metamorph Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}
    
sets.gear_midcast_nuke = {
    ammo="Ghastly Tathlum +1",
    body="Cohort Cloak +1",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Sanctity Necklace",
    neck="Mirage Stole +2",
    waist="Orpheus Sash",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
}

sets.gear_midcast_cure = {

}

sets.gear_aftercast_pdt = {
    ammo="Staunch Tathlum +1",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Mirage Stole +2",
    waist="Reiki Yotai",
    left_ear="Telos Earring",
    right_ear="Dedition Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.gear_aftercast_tp = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Sanctity Necklace",
    waist="Reiki Yotai",
    left_ear="Telos Earring",
    right_ear="Dedition Earring",
    left_ring="Chirich Ring +1",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}