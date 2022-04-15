function get_sets()
    mote_include_version = 2
    
    include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'TP')
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	-- 68%
	sets.precastSpells = {
        ammo="Sapience Orb", -- 2%
        head="Carmine Mask +1", -- 14
        body="Agwu's Robe", -- 8
        hands="Agwu's Gages", -- 6
        legs="Agwu's Slops", -- 7
        feet="Carmine Greaves +1", -- 8%
        neck="Orunmila's Torque", -- 5%
        waist="Goading Belt", -- 3%
        left_ear="Loquac. Earring", -- 2%
        right_ear="Etiolation Earring", -- 1%
        left_ring="Kishar Ring", -- 4%
        right_ring="Prolix Ring", -- 2%
        back={ name="Ogma's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Mag. Evasion+15',}}, -- 10%
	}
    
	sets.PDT = {
        ammo="Staunch Tathlum +1",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs={ name="Nyame Flanchard", augments={'Path: B',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Warder's Charm +1",
        waist="Carrier's Sash",
        left_ear="Eabani Earring",
        right_ear="Sanare Earring",
		left_ring={name="Moonlight Ring", bag="Wardrobe 1"},
		right_ring={name="Moonlight Ring", bag="Wardrobe 2"},
        back={ name="Ogma's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Mag. Evasion+15',}},
	}
	
	sets.enfeebleGear = {

    }

	sets.TP = {
        ammo={ name="Coiste Bodhar", augments={'Path: A',}},
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs={ name="Nyame Flanchard", augments={'Path: B',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Lissome Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Moonlight Ring",
        right_ring="Chirich Ring +1",
        back={ name="Ogma's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Phys. dmg. taken-10%',}},
    }

	sets.nukeGear = {
		ammo="Pemphredo Tathlum",
		head={ name="Agwu's Cap", augments={'Path: A',}},
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet={ name="Agwu's Pigaches", augments={'Path: A',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Cryptic Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Eihwaz Ring",
		back={ name="Ogma's Cape", augments={'INT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Mag. Evasion+15',}},
	}

	sets.nukeGearINT = sets.nukeGear
	sets.nukeGearMND = sets.nukeGear
    
	sets.precastWS = {
		ammo="Knobkierrie",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Moonshade Earring",
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
    
    sets.enmityGear = {
        ammo="Sapience Orb",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Eri. Leg Guards +1",
		feet="Erilaz Greaves +1",
        neck="Unmoving Collar",
        waist="Goading Belt",
        left_ear="Friomisi Earring",
        right_ear="Cryptic Earring",
        left_ring="Eihwaz Ring",
        right_ring="Petrov Ring",
        back={ name="Ogma's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Phys. dmg. taken-10%',}},
    }
	
	sets.magicPrecastWSGear = {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Thrud Earring",
		right_ear="Ishvara Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%',}},
	}
	
	sets.cureGear = {

    }
	
	sets.buffGear = {
        ammo="Staunch Tathlum +1",
        head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body={ name="Nyame Mail", augments={'Path: B',}},
        hands="Regal Gauntlets",
        legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck="Melic Torque",
        waist="Olympus Sash",
        left_ear="Andoaa Earring",
        right_ear="Augment. Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
        back={ name="Ogma's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','VIT+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	sets.precast.JA = sets.enmityGear;

	sets.precast.JA['Lunge'] = sets.nukeGear;

	sets.precast.FC = sets.precastSpells
	sets.precast.WS = sets.precastWS;
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	});
	sets.precast.WS['Aeolian Edge'] = sets.magicPrecastWSGear
	sets.precast.WS['Atonement'] = sets.enmityGear
							
	sets.midcast['Flash'] = sets.enmityGear;	
	sets.midcast['Foil'] = sets.enmityGear;	
	
	sets.midcast['Jettatura'] = sets.enmityGear;
	sets.midcast['Geist Wall'] = set_combine(sets.enmityGear, {
		head={ name="Valorous Mask", augments={'Attack+20','CHR+10','"Treasure Hunter"+2','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		waist="Chaac Belt",
	});

	sets.midcast['Cure'] = sets.cureGear
	sets.midcast['Cure II'] = sets.cureGear
	sets.midcast['Cure III'] = sets.cureGear
	sets.midcast['Cure IV'] = sets.cureGear
	sets.midcast['Cure V'] = sets.cureGear
	sets.midcast['Cure VI'] = sets.cureGear
	sets.midcast['Curaga'] = sets.cureGear
	sets.midcast['Curaga II'] = sets.cureGear
	sets.midcast['Curaga III'] = sets.cureGear
	sets.midcast['Curaga IV'] = sets.cureGear
	sets.midcast['Curaga V'] = sets.cureGear
	sets.midcast['Cura'] = sets.cureGear
	sets.midcast['Cura II'] = sets.cureGear
	sets.midcast['Cura III'] = sets.cureGear
	
	sets.midcast['Blink'] = sets.buffGear
	sets.midcast['Stoneskin'] = sets.buffGear
	sets.midcast['Aquaveil'] = sets.buffGear
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Temper'] = sets.buffGear
	sets.midcast['Phalanx'] = set_combine(sets.buffGear, {

    });

	sets.midcast['Crusade'] = sets.PDT
    
    sets.midcast['Blaze Spikes'] = sets.buffGear
	sets.midcast['Ice Spikes'] = sets.buffGear
	
	sets.midcast['Barstone'] = sets.buffGear
	sets.midcast['Barwater'] = sets.buffGear     
	sets.midcast['Baraero'] = sets.buffGear
	sets.midcast['Barfire'] = sets.buffGear
	sets.midcast['Barblizzard'] = sets.buffGear
	sets.midcast['Barthunder'] = sets.buffGear
	sets.midcast['Barsleep'] = sets.buffGear
	sets.midcast['Barpoison'] = sets.buffGear
	sets.midcast['Barparalyze'] = sets.buffGear
	sets.midcast['Barblind'] = sets.buffGear
	sets.midcast['Barsilence'] = sets.buffGear
	sets.midcast['Barpetrify'] = sets.buffGear
	sets.midcast['Barvirus'] = sets.buffGear
	sets.midcast['Baramnesia'] = sets.buffGear

	sets.midcast['Barstonra'] = sets.buffGear
	sets.midcast['Barwatera'] = sets.buffGear     
	sets.midcast['Baraera'] = sets.buffGear
	sets.midcast['Barfira'] = sets.buffGear
	sets.midcast['Barblizzara'] = sets.buffGear
	sets.midcast['Barthundra'] = sets.buffGear
	sets.midcast['Barsleepra'] = sets.buffGear
	sets.midcast['Barpoisonra'] = sets.buffGear
	sets.midcast['Barparalyzra'] = sets.buffGear
	sets.midcast['Barblindra'] = sets.buffGear
	sets.midcast['Barsilencera'] = sets.buffGear
	sets.midcast['Barpetra'] = sets.buffGear
	sets.midcast['Barvira'] = sets.buffGear
	sets.midcast['Baramnesra'] = sets.buffGear
	
	sets.midcast['Boost-STR'] = sets.buffGear
	sets.midcast['Boost-DEX'] = sets.buffGear
	sets.midcast['Boost-VIT'] = sets.buffGear
	sets.midcast['Boost-AGI'] = sets.buffGear
	sets.midcast['Boost-INT'] = sets.buffGear
	sets.midcast['Boost-MND'] = sets.buffGear
	sets.midcast['Boost-CHR'] = sets.buffGear
	
	sets.midcast['Diaga'] = {
		head={ name="Valorous Mask", augments={'Attack+20','CHR+10','"Treasure Hunter"+2','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		waist="Chaac Belt",
	}
	sets.midcast['Dia II'] = {
		head={ name="Valorous Mask", augments={'Attack+20','CHR+10','"Treasure Hunter"+2','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		waist="Chaac Belt",
	}
	sets.midcast['Banish'] = sets.nukeGearMND
	sets.midcast['Banish II'] = sets.nukeGearMND
	sets.midcast['Banish III'] = sets.nukeGearMND
	sets.midcast['Banishga'] = set_combine(sets.nukeGearMND, {
	});
	sets.midcast['Banishga II'] = sets.nukeGearMND
	sets.midcast['Holy'] = sets.nukeGearMND
	sets.midcast['Holy II'] = sets.nukeGearMND
	
	sets.midcast['Repose'] = sets.enfeebleGear
	sets.midcast['Paralyze'] = sets.enfeebleGear
	sets.midcast['Slow'] = sets.enfeebleGear
	sets.midcast['Repose'] = sets.enfeebleGear
	sets.midcast['Silence'] = sets.enfeebleGear
	sets.midcast['Addle'] = sets.enfeebleGear
	
	-- BLACK MAGIC
	sets.midcast['Stone'] = sets.nukeGearINT
	sets.midcast['Stone II'] = sets.nukeGearINT
	sets.midcast['Stone III'] = sets.nukeGearINT
	sets.midcast['Stone IV'] = sets.nukeGearINT
	sets.midcast['Stone V'] = sets.nukeGearINT
	sets.midcast['Stone VI'] = sets.nukeGearINT
	sets.midcast['Stonega'] = sets.nukeGearINT
	sets.midcast['Stonega II'] = sets.nukeGearINT
	sets.midcast['Stonega III'] = sets.nukeGearINT
	sets.midcast['Stoneja'] = sets.nukeGearINT
	
	sets.midcast['Water'] = sets.nukeGearINT
	sets.midcast['Water II'] = sets.nukeGearINT
	sets.midcast['Water III'] = sets.nukeGearINT
	sets.midcast['Water IV'] = sets.nukeGearINT
	sets.midcast['Water V'] = sets.nukeGearINT
	sets.midcast['Water VI'] = sets.nukeGearINT
	sets.midcast['Waterga'] = sets.nukeGearINT
	sets.midcast['Waterga II'] = sets.nukeGearINT
	sets.midcast['Waterga III'] = sets.nukeGearINT
	sets.midcast['Waterja'] = sets.nukeGearINT
	
	sets.midcast['Aero'] = sets.nukeGearINT
	sets.midcast['Aero II'] = sets.nukeGearINT
	sets.midcast['Aero III'] = sets.nukeGearINT
	sets.midcast['Aero IV'] = sets.nukeGearINT
	sets.midcast['Aero V'] = sets.nukeGearINT
	sets.midcast['Aero VI'] = sets.nukeGearINT
	sets.midcast['Aeroga'] = sets.nukeGearINT
	sets.midcast['Aeroga II'] = sets.nukeGearINT
	sets.midcast['Aeroga III'] = sets.nukeGearINT
	sets.midcast['Aeroja'] = sets.nukeGearINT
	
	sets.midcast['Fire'] = sets.nukeGearINT
	sets.midcast['Fire II'] = sets.nukeGearINT
	sets.midcast['Fire III'] = sets.nukeGearINT
	sets.midcast['Fire IV'] = sets.nukeGearINT
	sets.midcast['Fire V'] = sets.nukeGearINT
	sets.midcast['Fire VI'] = sets.nukeGearINT
	sets.midcast['Firaga'] = sets.nukeGearINT
	sets.midcast['Firaga II'] = sets.nukeGearINT
	sets.midcast['Firaga III'] = sets.nukeGearINT
	sets.midcast['Firaja'] = sets.nukeGearINT
	
	sets.midcast['Blizzard'] = sets.nukeGearINT
	sets.midcast['Blizzard II'] = sets.nukeGearINT
	sets.midcast['Blizzard III'] = sets.nukeGearINT
	sets.midcast['Blizzard IV'] = sets.nukeGearINT
	sets.midcast['Blizzard V'] = sets.nukeGearINT
	sets.midcast['Blizzard VI'] = sets.nukeGearINT
	sets.midcast['Blizzaga'] = sets.nukeGearINT
	sets.midcast['Blizzaga II'] = sets.nukeGearINT
	sets.midcast['Blizzaga III'] = sets.nukeGearINT
	sets.midcast['Blizzaja'] = sets.nukeGearINT
	
	sets.midcast['Thunder'] = sets.nukeGearINT
	sets.midcast['Thunder II'] = sets.nukeGearINT
	sets.midcast['Thunder III'] = sets.nukeGearINT
	sets.midcast['Thunder IV'] = sets.nukeGearINT
	sets.midcast['Thunder V'] = sets.nukeGearINT
	sets.midcast['Thunder VI'] = sets.nukeGearINT
	sets.midcast['Thundaga'] = sets.nukeGearINT
	sets.midcast['Thundaga II'] = sets.nukeGearINT
	sets.midcast['Thundaga III'] = sets.nukeGearINT
	sets.midcast['Thundaja'] = sets.nukeGearINT

	sets.midcast['Sleep'] = sets.enfeebleGear
	sets.midcast['Sleep II'] = sets.enfeebleGear
	sets.midcast['Sleepga'] = sets.enfeebleGear
	sets.midcast['Blind'] = sets.enfeebleGear
	sets.midcast['Poison'] = sets.enfeebleGear
	sets.midcast['Poison II'] = sets.enfeebleGear
	sets.midcast['Bind'] = sets.enfeebleGear
	sets.midcast['Dispel'] = sets.enfeebleGear
	sets.midcast['Gravity'] = sets.enfeebleGear
	sets.midcast['Distract'] = sets.enfeebleGear
	sets.midcast['Frazzle'] = sets.enfeebleGear
	sets.midcast['Bio'] = sets.enfeebleGear
	sets.midcast['Bio II'] = sets.enfeebleGear
	

	
	sets.precast.FC.Cure = set_combine(
		sets.precast.FC, {
			body = "Heka's Kalasiris",
			feet = "Vanya Clogs"
		}
	)
	
	sets.midcast['Absorb-TP'] = set_combine(
		sets.precast.FC, {
			hands = "Heath. Gauntlets +1"
		}
	)
	
	sets.midcast['Dread Spikes'] = set_combine(
		sets.precast.FC, {
			body = "Heath. Cuirass +1"
		}
	)
	
	
	
	sets.midcast['Cursna'] = set_combine(
		sets.midcast['Cursna'], {
			body = "Ebers Bliaud +1",
			neck = "Henic torque",
			legs = "Piety Pantaloons +1",
			feet = "Vanya Clogs",
			back = { 
				name = "Alaunus's Cape", 
				augments = {
					'STR+20',
					'Accuracy+20 Attack+20',
					'Accuracy+2',
					'Weapon skill damage +10%'
				}
			},	
		}
	)
	sets.midcast['Aquaveil'] = set_combine(
		sets.midcast['Aquaveil'], {
			head = "Chironic Hat"	
		}
	)
	
	sets.midcast['Protectra V'] = set_combine(
		sets.midcast['Protectra V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	sets.midcast['Protect V'] = set_combine(
		sets.midcast['Protect V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	sets.midcast['Shellra V'] = set_combine(
		sets.midcast['Shellra V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	sets.midcast['Shell V'] = set_combine(
		sets.midcast['Shell V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	-- include('ALLitems.lua')

end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == 'Absorb' then
        equip(sets.Absorb)
    elseif state.OffenseMode.value == 'TP' then
        equip(sets.TP)
    else
		equip(sets.PDT)
    end
end