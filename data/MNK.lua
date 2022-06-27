function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options("Melee", "Tank");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	sets.precastGear = {

    }
	
	sets.enmity = {
	
    }

	sets.meleeTP = {
        ammo={ name="Coiste Bodhar", augments={'Path: A',}},
        head="Mpaca's Cap",
        body="Mpaca's Doublet",
        hands="Mpaca's Gloves",
        legs="Mpaca's Hose",
        feet="Mpaca's Boots",
        neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
        waist="Moonbow Belt +1",
        left_ear="Telos Earring",
        right_ear="Sherida Earring",
        left_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}},        
    }

	sets.tank = {
        ammo={ name="Coiste Bodhar", augments={'Path: A',}},
        head="Nyame Helm",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
        waist="Moonbow Belt +1",
        left_ear="Telos Earring",
        right_ear="Sherida Earring",
        left_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Magic dmg. taken-10%',}},
    }

	sets.precastWS = {
        ammo="Knobkierrie",
        head="Nyame Helm",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
        waist="Moonbow Belt +1",
        left_ear="Moonshade Earring",
        right_ear="Sherida Earring",
        left_ring="Epaminondas's Ring",
        right_ring="Niqmaddu ring",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},

        
        head="Mpaca's Cap",
        body="Mpaca's Doublet",
	}

	sets.precastWSIntGear = {

	}

	sets.magicPrecastWSGear = {
        ammo="Knobkierrie",
        head="Nyame Helm",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
        waist="Moonbow Belt +1",
        left_ear="Schere Earring",
        right_ear="Sherida Earring",
        left_ring="Epaminondas's Ring",
        right_ring="Niqmaddu ring",
        back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	
	sets.cureGear = {
	}
	
	sets.precast.WS = sets.precastWS
	sets.precast.FC = sets.precastGear

	-- Precast sets to enhance JAs
	sets.precast.JA['Blade Bash'] = {
        hands="Sakonji Kote +3",
    }

	sets.precast.JA['Meditate'] = {
        head="Wakido Kabuto +3",
        hands="Sakonji Kote +3",
		back="Smertrios's Mantle",
	}
end

function job_post_midcast(spell, action, spellMap, eventArgs)

end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Tank" then
		equip(sets.tank)
	elseif state.OffenseMode.value == "Melee" then
		equip (sets.meleeTP) 
	else
		equip(sets.meleeTP)
	end
end


function job_buff_change(buff, gain)

end

