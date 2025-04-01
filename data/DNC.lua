function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'MeleeTP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 19)

	sets.precastGear = {

    }
	
	sets.highTierNukeGear = {

    }
	
	sets.enfeebleGear = {
        
    }

    sets.pdt = {
        ammo="Yamarang",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Malignance Gloves",
        legs="Malignance Tights",
        feet="Gleti's Boots",
        neck={ name="Loricate Torque +1", augments={'Path: A',}},
        waist="Twilight Belt",
        left_ear="Sherida Earring",
        right_ear="Telos Earring",
        left_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

	sets.meleeTP = {
        ammo="Yamarang",
        head="Gleti's Mask",
        body="Gleti's Cuirass",
        hands="Malignance Gloves",
        legs="Malignance Tights",
        feet="Gleti's Boots",
        neck={ name="Loricate Torque +1", augments={'Path: A',}},
        waist="Twilight Belt",
        left_ear="Sherida Earring",
        right_ear="Telos Earring",
        left_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.precastWSPhysical = {
        ammo="Oshasha's Treatise",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs={ name="Nyame Flanchard", augments={'Path: B',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Rep. Plat. Medal",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Ishvara Earring",
        left_ring="Ilabrat Ring",
        right_ring={ name="Beithir Ring", augments={'Path: A',}},
        back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
    }

	sets.precastWSCritical = {

	}

	sets.precastWSMultiHit = {

	}

	sets.precastWSMagic = {

    }

    sets.precastWSHybrid = {
        ammo="Pemphredo Tathlum",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs={ name="Nyame Flanchard", augments={'Path: B',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Sanctity Necklace",
        waist="Orpheus's Sash",
        left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
        right_ear="Friomisi Earring",
        left_ring="Epaminondas's Ring",
        right_ring="Regal Ring",
        back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
    }

    -- #####################
    -- ### Job Abilities ###
    -- #####################
	sets.precast.JA['Mijin Gakure'] = {
        
    }
    
	sets.precast.JA['Yonin'] = {
        head={ name="Mochi. Hatsuburi +2", augments={'Enhances "Yonin" and "Innin" effect',}},
    }
    
	sets.precast.JA['Innin'] = {
        head={ name="Mochi. Hatsuburi +2", augments={'Enhances "Yonin" and "Innin" effect',}},
    }
    
	sets.precast.JA['Sange'] = {
        
    }
    
	sets.precast.JA['Futae'] = {
        
    }

	sets.precast.JA['Issekigan'] = {
        
    }

	sets.precast.JA['Mikage'] = {
        
    }
    
	sets.precast.WS = sets.precastWSPhysical

    -- ##############
    -- ### Katana ###
    -- ##############

    sets.precast.WS['Blade: Rin'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Retsu'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
    
    })

    sets.precast.WS['Blade: Teki'] = set_combine(sets.precastWSHybrid, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: To'] = set_combine(sets.precastWSHybrid, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Chi'] = set_combine(sets.precastWSHybrid, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ei'] = set_combine(sets.precastWSHybrid, {
        head="Pixie Hairpin +1",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        ring1="Archon Ring",
    })

    sets.precast.WS['Blade: Jin'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ten'] = set_combine(sets.precastWSPhysical, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ku'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
    
    })

    sets.precast.WS['Blade: Yu'] = set_combine(sets.precastWSHybrid, {
    
    })

    sets.precast.WS['Blade: Shun'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Metsu'] = set_combine(sets.precastWSPhysical, {
    
    })

    sets.precast.WS['Blade: Kamu'] = set_combine(sets.precastWSPhysical, {
    
    })

    sets.precast.WS['Blade: Hi'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

	-- #############
	-- ### Sword ###
	-- #############
	sets.precast.WS['Fast Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Burning Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Red Lotus Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Flat Blade'] = set_combine(sets.precastWSPhysical, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Shining Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Seraph Blade'] = set_combine(sets.precastWSMagic, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Circle Blade'] = sets.precastWsPhysical
	sets.precast.WS['Spirits Within'] = set_combine(sets.precastWSPhysical, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Vorpal Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical)
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.precastWSMagic, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Requiescat'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Knights Of Round'] = sets.precastWsPhysical
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical, {
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})
	sets.precast.WS['Savage Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})


	-- ##############
	-- ### Dagger ###
	-- ##############
	sets.precast.WS['Aeolian Edge'] = sets.precastWSMagic
    

    -- ##############
    -- ### Spells ###
    -- ##############

    sets.precast.FC = sets.precastGear
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "MeleeTP" then
		equip(sets.meleeTP)
	else
		equip(sets.pdt)
	end
end

function job_buff_change(buff, gain)

end