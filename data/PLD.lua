function get_sets()
    mote_include_version = 2
    
    include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'TP', 'Absorb')
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	-- 68%
	sets.precastSpells = {
		ammo="Sapience Orb", --2
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --14
		body="Rev. Surcoat +3", --10
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8
		legs="Sulev. Cuisses +2", --0
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+24','"Fast Cast"+5','"Mag.Atk.Bns."+8',}}, --10
		neck="Orunmila's Torque", --5
		waist="Goading Belt", --0
		left_ear="Loquac. Earring", --2
		right_ear="Etiolation Earring", --1
		left_ring="Kishar Ring", --4
		right_ring="Prolix Ring", --2
		back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}}, --10
	}
    
	sets.PDT = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		-- feet="Hippomenes Socks +1",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Sanare Earring",
		right_ear="Etiolation Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Mag. Evasion+15',}},
		
		--neck="Loricate Torque +1",
		--hands="Rev. Gauntlets +3",
	}
	
	-- Total Counter: 39% (47% Monk Sub & 80% Counterstance)
	sets.counterGear = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sacro Breastplate", -- 15
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		-- neck="Bathy Choker +1", -- 10
		waist="Sailfi Belt +1",
		left_ear="Genmei Earring", -- 1
		right_ear="Cryptic Earring", -- 4
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','"System: 1 ID: 640 Val: 4"',}}, -- 10
	}

	-- Total Regen: 37 (67 w/ Excalibur)
	sets.regenGear = {
		ammo="Staunch Tathlum +1",
		head="Loess Barbuta +1",
		body="Sacro Breastplate", -- 13
		-- hands="Regal Gauntlets", -- 10
		hands="Sakpata's Gauntlets",
		-- legs="Volte Brayettes" -- 3
		legs="Sakpata's Cuisses",
		feet="Volte Sollerets", -- 2
		-- neck="Bathy Choker +1", -- 3
		-- waist="Flume Belt",
		left_ear="Odnowa Earring +1",
		-- right_ear="Infused Earring", -- 1
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		-- back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Regen+5',}}, -- 5
	}

	sets.enfeebleGear = {
		ammo="Pemphredo Tathlum",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Rev. Surcoat +3",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Henic Torque",
		waist="Luminary Sash",
		left_ear="Sanare Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%',}},
	}

	sets.superTank = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		-- neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Sanare Earring",
		-- right_ear="Arete Del Luna +1",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Mag. Evasion+15',}},
	}
	
	sets.interruptDownGear = {
		-- waist="Audumbla Sash",
		
	}

	sets.TP = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Lissome Necklace",
		waist="Sailfi Belt +1",
		left_ear="Dedition Earring",
		right_ear="Telos Earring",
		left_ring="Moonlight Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}}, -- 10
	}
    
	sets.precastWS = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Thrud Earring",
		left_ring="Regal Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
    
    sets.enmityGear = {
        ammo="Sapience Orb",
        head="Loess Barbuta +1",
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
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		neck="Loricate Torque +1",
		waist="Gishdubar sash",
		left_ear="Nourish. Earring +1",
		right_ear="Mendi. Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Mag. Evasion+15',}},
	}
	
	sets.nukeGearINT = {
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Sacro Breastplate",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Ishvara Earring",
		right_ear="Friomisi Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%',}},
	}

	sets.nukeGearMND = {
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Sacro Breastplate",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Ishvara Earring",
		right_ear="Friomisi Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%',}},
	}
	
	sets.buffGear = {
		
	}
	
	sets.precast.JA = sets.enmityGear;

	sets.precast.JA['Fealty'] = {
		body={ name="Cab. Surcoat +3", augments={'Enhances "Fealty" effect',}},
	}

	sets.precast.FC = sets.precastSpells
	sets.precast.WS = sets.precastWS;
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	});
	sets.precast.WS['Aeolian Edge'] = sets.magicPrecastWSGear
	sets.precast.WS['Atonement'] = sets.enmityGear
							
	sets.midcast['Flash'] = sets.enmityGear;
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
	sets.midcast['Phalanx'] = set_combine(sets.buffGear, {
		head={ name="Odyssean Helm", augments={'AGI+5','Rng.Acc.+1 Rng.Atk.+1','Phalanx +4','Accuracy+16 Attack+16',}},
		body={ name="Valorous Mail", augments={'Crit.hit rate+1','AGI+1','Phalanx +3','Accuracy+18 Attack+18','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
		hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		back={ name="Weard Mantle", augments={'VIT+1','DEX+2','Enmity+2','Phalanx +4',}},
    });

	sets.midcast['Crusade'] = {
		
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		-- feet="Hippomenes Socks +1",
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
		left_ear="Sanare Earring",
		right_ear="Etiolation Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Mag. Evasion+15',}},
		
	}
	sets.midcast['Blaze Spikes'] = sets.buffGear
	sets.midcast['Ice Spikes'] = sets.buffGear
	
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
		-- windower.add_to_chat(160, "Equipping TP")
        equip(sets.TP)
    else
		equip(sets.PDT)
    end

end