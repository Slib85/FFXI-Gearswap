function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('MeleeHybrid', 'MeleeTP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
    sets.idle = {
        ammo="Hachiya Shuriken",
        head="Ken. Jinpachi",
        body="Ken. Samue",
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Herculean Trousers", augments={'Accuracy+14','"Triple Atk."+2','STR+10','Attack+11',}},
        feet={ name="Herculean Boots", augments={'Attack+28','"Triple Atk."+2','Accuracy+14',}},
        neck="Moonbeam Nodowa",
        waist="Dynamic Belt",
        left_ear="Odr Earring",
        right_ear="Eabani Earring",
        left_ring="Shneddick Ring",
        right_ring="Hetairoi Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

	sets.precastGear = {
        head={ name="Herculean Helm", augments={'Accuracy+1','"Fast Cast"+4','MND+8',}},
        hands={ name="Leyline Gloves", augments={'Accuracy+7','"Mag.Atk.Bns."+10',}},
        neck="Magoraga Beads",
	}
	
	sets.highTierNukeGear = {
        ammo="Hachiya Shuriken",
        head={ name="Mochi. Hatsuburi +2", augments={'Enhances "Yonin" and "Innin" effect',}},
        body="Ken. Samue",
        hands={ name="Leyline Gloves", augments={'Accuracy+7','"Mag.Atk.Bns."+10',}},
        legs={ name="Herculean Trousers", augments={'Mag. Acc.+22','"Store TP"+6','INT+7','"Mag.Atk.Bns."+11',}},
        feet={ name="Herculean Boots", augments={'"Store TP"+1','"Cure" potency +3%','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
        neck="Deviant Necklace",
        waist="Dynamic Belt",
        left_ear="Odr Earring",
        right_ear="Eabani Earring",
        left_ring="Ilabrat Ring",
        right_ring="Regal Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.enfeebleGear = {
        
    }

	sets.meleeTP = {
        ammo="Hachiya Shuriken",
        head="Ken. Jinpachi",
        body="Ken. Samue",
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Herculean Trousers", augments={'Accuracy+14','"Triple Atk."+2','STR+10','Attack+11',}},
        feet={ name="Herculean Boots", augments={'Attack+28','"Triple Atk."+2','Accuracy+14',}},
        neck="Moonbeam Nodowa",
        waist="Dynamic Belt",
        left_ear="Odr Earring",
        right_ear="Eabani Earring",
        left_ring="Ilabrat Ring",
        right_ring="Hetairoi Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.meleeHybrid = {
        ammo="Hachiya Shuriken",
        head="Ken. Jinpachi",
        body="Ken. Samue",
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Herculean Trousers", augments={'Accuracy+14','"Triple Atk."+2','STR+10','Attack+11',}},
        feet={ name="Herculean Boots", augments={'Attack+28','"Triple Atk."+2','Accuracy+14',}},
        neck="Moonbeam Nodowa",
        waist="Dynamic Belt",
        left_ear="Odr Earring",
        right_ear="Eabani Earring",
        left_ring="Ilabrat Ring",
        right_ring="Hetairoi Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
    
    sets.engaged = sets.meleeHybrid

    sets.precastWSPhysical = {
        ammo="Hachiya Shuriken",
        head="Ken. Jinpachi",
        body="Ken. Samue",
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="Jokushu Haidate",
        feet={ name="Herculean Boots", augments={'Attack+28','"Triple Atk."+2','Accuracy+14',}},
        neck="Moonbeam Nodowa",
        waist="Dynamic Belt",
        left_ear="Odr Earring",
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        left_ring="Ilabrat Ring",
        right_ring="Regal Ring",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

	sets.precastWSCritical = {

	}

	sets.precastWSMultiHit = {

	}

	sets.precastWSMagic = {
        head={ name="Mochi. Hatsuburi +2", augments={'Enhances "Yonin" and "Innin" effect',}},
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

    sets.precast.WS['Blade: Teki'] = set_combine(sets.precastWSMagic, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: To'] = set_combine(sets.precastWSMagic, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Chi'] = set_combine(sets.precastWSMagic, {
        right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ei'] = set_combine(sets.precastWSMagic, {
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

    sets.precast.WS['Blade: Yu'] = set_combine(sets.precastWSMagic, {
    
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
		equip(sets.meleeTPHybrid)
	end
end

function job_buff_change(buff, gain)

end