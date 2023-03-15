sets.midcast['Entomb'] = set_combine(sets.gear_midcast_nuke, {
    ammo="Per. Lucky Egg",
    feet={ name="Herculean Boots", augments={'"Fast Cast"+5','Accuracy+9','"Treasure Hunter"+2','Accuracy+14 Attack+14','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    waist="Chaac Belt",
})
sets.midcast['Subduction'] = sets.gear_midcast_nuke
sets.midcast['Magic Hammer'] = sets.gear_midcast_nuke
sets.midcast['Spectral Floe'] = sets.gear_midcast_nuke
sets.midcast['Anvil Lightning'] = sets.gear_midcast_nuke
sets.midcast['Tenebral Crush'] = set_combine(sets.gear_midcast_nuke, {
    head="Pixie Hairpin +1",
    body="Amalric Doublet +1",
    ring1="Archon Ring",
})

sets.midcast['Dream Flower'] = set_combine(sets.gear_midcast_nuke, {
    ammo="Per. Lucky Egg",
    feet={ name="Herculean Boots", augments={'"Fast Cast"+5','Accuracy+9','"Treasure Hunter"+2','Accuracy+14 Attack+14','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    waist="Chaac Belt",
})
sets.midcast['White Wind'] = sets.gear_midcast_cure

sets.midcast['Aquaveil'] = set_combine(sets.buff_duration, sets.enhancing_skill, {
    hands="Regal Cuffs",
    head="Amalric Coif +1", 
    waist="Emphatikos rope", 
})

sets.midcast["Feather Tickle"] = sets.magic_accuracy;
sets.midcast["Silent Storm"] = sets.magic_accuracy;
sets.midcast["Reaving Wind"] = sets.magic_accuracy;
sets.midcast["Cruel Joke"] = sets.magic_accuracy;