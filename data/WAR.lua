function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options("Melee", "Subtle");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	sets.precastGear = {
		ammo="Staunch Tathlum +1",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Sacro Breastplate",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+24','"Fast Cast"+5','"Mag.Atk.Bns."+8',}},
		neck="Orunmila's Torque",
		waist="Sarissapho. Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Prolix Ring",
		right_ring="Kishar Ring",
		back={ name="Ankou's Mantle", augments={'"Fast Cast"+10',}},
	}
	
	sets.enmity = {
		head="Loess Barbuta +1",
        ammo="Sapience Orb",
        body="Chev. Cuirass +1",
        hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        legs={ name="Odyssean Cuisses", augments={'MND+2','CHR+6','Phalanx +4',}},
        feet={ name="Yorium Sabatons", augments={'Enmity+10',}},
        neck="Unmoving Collar",
        waist="Goading Belt",
        left_ear="Friomisi Earring",
        right_ear="Cryptic Earring",
        left_ring="Petrov Ring",
        right_ring="Apeile Ring",
		back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Mag. Evasion+15',}},
	}

	sets.meleeTP = {
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
		neck="War. Beads +2",
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 2"},
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.subtle = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",
		body="Dagon Breastplate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="War. Beads +2",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Chirich Ring +1",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.tank = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head={ name="Sakpata's Helm", augments={'Path: A',}},
		body="Sacro Breastplate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet={ name="Sakpata's Leggings", augments={'Path: A',}},
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
	}

	sets.precastWS = {
		ammo="Knobkierrie",
        head="Agoge Mask +3",
        body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
        neck="War. Beads +2",
		waist="Sailfi Belt +1",
        left_ear="Schere Earring",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
        left_ring="Epaminondas's Ring",
        right_ring="Regal Ring",
        back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	sets.precastWSIntGear = {

	}

	sets.magicPrecastWSGear = {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head="Nyame Helm",
		body="Sacro Breastplate",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Malignance Earring",
		right_ear="Ishvara Earring",
		left_ring="Archon Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	}
	
	sets.maxMP = {
	}

	sets.aspirGear = {
	}

	sets.drainGear = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Sacro Breastplate",
		hands="Abyss Gauntlets",
		legs="Heath. Flanchard +1",
		feet="Ratri Sollerets",
		neck="Erra Pendant",
		waist="Orpheus's Sash",
		left_ear="Malignance Earring",
		right_ear="Telos Earring",
		left_ring="Archon Ring",
		right_ring="Evanescence Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

	sets.cureGear = {
	}

	sets.PDT = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Combatant's torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Dedition Earring",
		right_ear="Telos Earring",
		left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
		right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
		left_ring="Chirich Ring +1",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10',}},
	}
	
	sets.precast.WS = sets.precastWS
	sets.precast.FC = sets.precastGear

	sets.precast.WS["Ukko's Fury"] = set_combine(sets.precastWS, {
		waist="Sailfi Belt +1",
	})
	sets.precast.WS["Cloudsplitter"] = set_combine(sets.precastWS, {
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Nyame Mail",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Stikini Ring +1",
		right_ring="Metamorph Ring +1",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},	
	})
	sets.precast.WS["Upheaval"] = set_combine(sets.precastWS, {
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		ring1="Niqmaddu ring",
	})
	sets.precast.WS["Resolution"] = {
		ammo="Knobkierrie",
		head={ name="Sakpata's Helm", augments={'Path: A',}},
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}

	-- Precast sets to enhance JAs
	sets.precast.JA['Berserk'] = {
		body="Pummeler's Lorica +3",
	}
	sets.precast.JA['Tomahawk'] = {
		ammo="Throwing Tomahawk",
	}
	sets.precast.JA['Warcry'] = set_combine(sets.enmity, {
		head="Agoge Mask +3",
	})
	sets.precast.JA["Blood Rage"] = sets.enmity
	sets.precast.JA["Provoke"] = sets.enmity
	
end

function job_midcast(spell, action, spellMap, eventArgs)
	if buffactive['Ancient Circle'] == 1 and S{"Savage Blade"}:contains(spell.english) then
		equip({body="Founder's Breastplate"})
	end
end

function job_post_midcast(spell, action, spellMap, eventArgs)

end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Subtle" then
		equip(sets.subtle)
	elseif state.OffenseMode.value == "Melee" then
		equip (sets.meleeTP) 
	else
		equip(sets.PDT)
	end
end


function job_buff_change(buff, gain)

end

