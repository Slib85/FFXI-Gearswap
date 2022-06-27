function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'MeleeTP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'TP')
end

function init_gear_sets()
	set_macro_page(2, 13)

	include(player.name .. "/NIN_gear.lua")

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
    
	sets.precast.WS = sets.precast_ws

    -- ##############
    -- ### Katana ###
    -- ##############

    sets.precast.WS['Blade: Rin'] = set_combine(sets.precast_ws, sets.precast_ws_critical, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Retsu'] = set_combine(sets.precast_ws, sets.precast_ws_multi_hit, {
    
    })

    sets.precast.WS['Blade: Teki'] = set_combine(sets.precast_ws_magic, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: To'] = set_combine(sets.precast_ws_magic, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Chi'] = set_combine(sets.precast_ws_magic, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ei'] = set_combine(sets.precast_ws_magic, {
        head="Pixie Hairpin +1",
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
        ring1="Archon Ring",
    })

    sets.precast.WS['Blade: Jin'] = set_combine(sets.precast_ws, sets.precast_ws_multi_hit, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ten'] = set_combine(sets.precast_ws, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Ku'] = set_combine(sets.precast_ws, sets.precast_ws_multi_hit, {
    
    })

    sets.precast.WS['Blade: Yu'] = set_combine(sets.precast_ws_magic, {
    
    })

    sets.precast.WS['Blade: Shun'] = set_combine(sets.precast_ws, sets.precast_ws_multi_hit, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

    sets.precast.WS['Blade: Metsu'] = set_combine(sets.precast_ws, {
    
    })

    sets.precast.WS['Blade: Kamu'] = set_combine(sets.precast_ws, {
    
    })

    sets.precast.WS['Blade: Hi'] = set_combine(sets.precast_ws, sets.precast_ws_critical, {
        left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    })

	-- #############
	-- ### Sword ###
	-- #############
	sets.precast.WS['Fast Blade'] = set_combine(sets.precast_ws, sets.precast_ws_multi_hit, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Burning Blade'] = set_combine(sets.precast_ws_magic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Red Lotus Blade'] = set_combine(sets.precast_ws_magic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Flat Blade'] = set_combine(sets.precast_ws, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Shining Blade'] = set_combine(sets.precast_ws_magic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Seraph Blade'] = set_combine(sets.precast_ws_magic, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Circle Blade'] = sets.precast_ws
	sets.precast.WS['Spirits Within'] = set_combine(sets.precast_ws, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Vorpal Blade'] = set_combine(sets.precast_ws, sets.precast_ws_critical)
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast_ws_magic, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Requiescat'] = set_combine(sets.precast_ws, sets.pprecast_ws_multi_hit, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})
	sets.precast.WS['Knights Of Round'] = sets.precast_ws
	sets.precast.WS['Chant du Cygne'] = set_combine(sets.precast_ws, sets.precast_ws_critical, {
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast_ws, sets.pprecast_ws_multi_hit, {
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	})


	-- ##############
	-- ### Dagger ###
	-- ##############
	sets.precast.WS['Aeolian Edge'] = sets.precast_ws_magic
    

    -- ##############
    -- ### Spells ###
    -- ##############

    sets.precast.FC = sets.precast_spell

    sets.midcast['Tonko: Ichi'] = sets.midcast_nuke
    sets.midcast['Utsusemi: Ichi'] = set_combine(sets.midcast_nuke, {
        feet="Hattori Kyahan +1",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}},
    });
    sets.midcast['Katon: Ichi'] = sets.midcast_nuke
    sets.midcast['Suiton: Ichi'] = sets.midcast_nuke
    sets.midcast['Doton: Ichi'] = sets.midcast_nuke
    sets.midcast['Hyoton: Ichi'] = sets.midcast_nuke
    sets.midcast['Huton: Ichi'] = sets.midcast_nuke
    sets.midcast['Raiton: Ichi'] = sets.midcast_nuke
    sets.midcast['Kurayami: Ichi'] = sets.midcast_nuke
    sets.midcast['Hojo: Ichi'] = sets.midcast_nuke
    sets.midcast['Monomi: Ichi'] = sets.midcast_nuke
    sets.midcast['Dokumori: Ichi'] = sets.midcast_nuke
    sets.midcast['Jubaku: Ichi'] = sets.midcast_nuke
    sets.midcast['Tonko: Ni'] = sets.midcast_nuke
    sets.midcast['Utsusemi: Ni'] = set_combine(sets.midcast_nuke, {
        feet="Hattori Kyahan +1",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}},
    });
    sets.midcast['Katon: Ni'] = sets.midcast_nuke
    sets.midcast['Suiton: Ni'] = sets.midcast_nuke
    sets.midcast['Doton: Ni'] = sets.midcast_nuke
    sets.midcast['Hyoton: Ni'] = sets.midcast_nuke
    sets.midcast['Huton: Ni'] = sets.midcast_nuke
    sets.midcast['Raiton: Ni'] = sets.midcast_nuke
    sets.midcast['Kurayami: Ni'] = sets.midcast_nuke
    sets.midcast['Hojo: Ni'] = sets.midcast_nuke
    sets.midcast['Katon: San'] = sets.midcast_nuke
    sets.midcast['Suiton: San'] = sets.midcast_nuke
    sets.midcast['Doton: San'] = sets.midcast_nuke
    sets.midcast['Hyoton: San'] = sets.midcast_nuke
    sets.midcast['Huton: San'] = sets.midcast_nuke
    sets.midcast['Raiton: San'] = sets.midcast_nuke
    sets.midcast['Aisha: Ichi'] = sets.midcast_nuke
    sets.midcast['Yurin: Ichi'] = sets.midcast_nuke
    sets.midcast['Myoshu: Ichi'] = sets.midcast_nuke
    sets.midcast['Migawari: Ichi'] = sets.midcast_nuke
    sets.midcast['Gekka: Ichi'] = sets.midcast_nuke
    sets.midcast['Yain: Ichi'] = sets.midcast_nuke
    sets.midcast['Kakka: Ichi'] = sets.midcast_nuke
    sets.midcast['Utsusemi: San'] = set_combine(sets.midcast_nuke, {
        feet="Hattori Kyahan +1",
        back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}},
    });
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "MeleeTP" then
		equip(sets.aftercast_tp)
	else
		equip(sets.aftercast_dt)
	end
end

function job_buff_change(buff, gain)

end