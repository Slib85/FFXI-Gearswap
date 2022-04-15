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
	sets.precastGear = {

    }
	
	sets.highTierNukeGear = {

    }
	
	sets.enfeebleGear = {
        
    }

    sets.pdt = {
        ammo="Seki Shuriken",
        head="Mpaca's Cap",
        body="Mpaca's Doublet",
        hands="Mpaca's Gloves",
        legs="Mpaca's Hose",
        feet="Mpaca's Boots",
        neck="Ninja Nodowa +2",
        waist="Sailfi Belt +1",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}},
    }

	sets.meleeTP = {
        ammo="Seki Shuriken",
        head="Mpaca's Cap",
        body="Mpaca's Doublet",
        hands="Mpaca's Gloves",
        legs="Mpaca's Hose",
        feet="Mpaca's Boots",
        neck="Ninja Nodowa +2",
        waist="Sailfi Belt +1",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}},
    }

    sets.precastWSPhysical = {
        ammo={ name="Coiste Bodhar", augments={'Path: A',}},
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs={ name="Nyame Flanchard", augments={'Path: B',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Epaminondas's Ring",
        right_ring="Regal Ring",
        back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
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
        head={ name="Mochi. Hatsuburi +3", augments={'Enhances "Yonin" and "Innin" effect',}},
    }
    
	sets.precast.JA['Innin'] = {
        head={ name="Mochi. Hatsuburi +3", augments={'Enhances "Yonin" and "Innin" effect',}},
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
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Retsu'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
    
    })

    sets.precast.WS['Blade: Teki'] = set_combine(sets.precastWSHybrid, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: To'] = set_combine(sets.precastWSHybrid, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Chi'] = set_combine(sets.precastWSHybrid, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ei'] = set_combine(sets.precastWSHybrid, {
        head="Pixie Hairpin +1",
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        ring1="Archon Ring",
    })

    sets.precast.WS['Blade: Jin'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ten'] = set_combine(sets.precastWSPhysical, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ku'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
    
    })

    sets.precast.WS['Blade: Yu'] = set_combine(sets.precastWSHybrid, {
    
    })

    sets.precast.WS['Blade: Shun'] = set_combine(sets.precastWSPhysical, sets.recastWSMultiHit, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Metsu'] = set_combine(sets.precastWSPhysical, {
    
    })

    sets.precast.WS['Blade: Kamu'] = set_combine(sets.precastWSPhysical, {
    
    })

    sets.precast.WS['Blade: Hi'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

	-- #############
	-- ### Sword ###
	-- #############
	sets.precast.WS['Fast Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Burning Blade'] = set_combine(sets.precastWSMagic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Red Lotus Blade'] = set_combine(sets.precastWSMagic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Flat Blade'] = set_combine(sets.precastWSPhysical, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Shining Blade'] = set_combine(sets.precastWSMagic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Seraph Blade'] = set_combine(sets.precastWSMagic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Circle Blade'] = sets.precastWsPhysical
	sets.precast.WS['Spirits Within'] = set_combine(sets.precastWSPhysical, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Vorpal Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical)
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.precastWSMagic, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Requiescat'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Knights Of Round'] = sets.precastWsPhysical
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precastWSPhysical, sets.precastWSCritical, {
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})
	sets.precast.WS['Savage Blade'] = set_combine(sets.precastWSPhysical, sets.precastWSMultiHit, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})


	-- ##############
	-- ### Dagger ###
	-- ##############
	sets.precast.WS['Aeolian Edge'] = sets.precastWSMagic
    

    -- ##############
    -- ### Spells ###
    -- ##############

    sets.precast.FC = sets.precastGear

    sets.midcast['Tonko: Ichi'] = sets.highTierNukeGear
    sets.midcast['Utsusemi: Ichi'] = sets.highTierNukeGear
    sets.midcast['Katon: Ichi'] = sets.highTierNukeGear
    sets.midcast['Suiton: Ichi'] = sets.highTierNukeGear
    sets.midcast['Doton: Ichi'] = sets.highTierNukeGear
    sets.midcast['Hyoton: Ichi'] = sets.highTierNukeGear
    sets.midcast['Huton: Ichi'] = sets.highTierNukeGear
    sets.midcast['Raiton: Ichi'] = sets.highTierNukeGear
    sets.midcast['Kurayami: Ichi'] = sets.highTierNukeGear
    sets.midcast['Hojo: Ichi'] = sets.highTierNukeGear
    sets.midcast['Monomi: Ichi'] = sets.highTierNukeGear
    sets.midcast['Dokumori: Ichi'] = sets.highTierNukeGear
    sets.midcast['Jubaku: Ichi'] = sets.highTierNukeGear
    sets.midcast['Tonko: Ni'] = sets.highTierNukeGear
    sets.midcast['Utsusemi: Ni'] = sets.highTierNukeGear
    sets.midcast['Katon: Ni'] = sets.highTierNukeGear
    sets.midcast['Suiton: Ni'] = sets.highTierNukeGear
    sets.midcast['Doton: Ni'] = sets.highTierNukeGear
    sets.midcast['Hyoton: Ni'] = sets.highTierNukeGear
    sets.midcast['Huton: Ni'] = sets.highTierNukeGear
    sets.midcast['Raiton: Ni'] = sets.highTierNukeGear
    sets.midcast['Kurayami: Ni'] = sets.highTierNukeGear
    sets.midcast['Hojo: Ni'] = sets.highTierNukeGear
    sets.midcast['Katon: San'] = sets.highTierNukeGear
    sets.midcast['Suiton: San'] = sets.highTierNukeGear
    sets.midcast['Doton: San'] = sets.highTierNukeGear
    sets.midcast['Hyoton: San'] = sets.highTierNukeGear
    sets.midcast['Huton: San'] = sets.highTierNukeGear
    sets.midcast['Raiton: San'] = sets.highTierNukeGear
    sets.midcast['Aisha: Ichi'] = sets.highTierNukeGear
    sets.midcast['Yurin: Ichi'] = sets.highTierNukeGear
    sets.midcast['Myoshu: Ichi'] = sets.highTierNukeGear
    sets.midcast['Migawari: Ichi'] = sets.highTierNukeGear
    sets.midcast['Gekka: Ichi'] = sets.highTierNukeGear
    sets.midcast['Yain: Ichi'] = sets.highTierNukeGear
    sets.midcast['Kakka: Ichi'] = sets.highTierNukeGear
    sets.midcast['Utsusemi: San'] = sets.highTierNukeGear
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