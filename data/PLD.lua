function get_sets()
    mote_include_version = 2
    
    include('Mote-Include.lua')
end

function job_setup()

end

function user_unload()
	send_command('unbind ^`')
	send_command('unbind @`')
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
    
	sets.defense.PDT = {
		ammo="Staunch Tathlum",
		head="Hjarrandi Helm",
		body="Chev. Cuirass +1",
		hands="Chev. Gauntlets +1",
		legs="Chev. Cuisses +1",
		feet="Chev. Sabatons +1",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear="Cryptic Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10','Phys. dmg. taken-10%',}},
    }
    
    sets.SUPER = {
        ammo="Staunch Tathlum",
        head="Sulevia's Mask +2",
		body="Rev. Surcoat +3",
        hands="Rev. Gauntlets +3",
        legs="Sulev. Cuisses +2",
        feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        neck="Loricate Torque +1",
        waist="Eschan Stone",
        left_ear="Odnowa Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Moonlight Ring",
        right_ring="Defending Ring",
        back="Moonlight Cape",
	}

	sets.TP = {
		ammo="Ginsen",
		head="Sulevia's Mask +2",
		body={ name="Cab. Surcoat +3", augments={'Enhances "Fealty" effect',}},
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Flam. Gambieras +2",
		neck="Lissome Necklace",
		waist="Sarissapho. Belt",
		left_ear="Dedition Earring",
		right_ear="Telos Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10','Phys. dmg. taken-10%',}},
    }
    
	sets.precastWS = {
		ammo="Ginsen",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Grunfeld Rope",
		left_ear="Dominance Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Petrov Ring",
		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
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
        back={ name="Weard Mantle", augments={'VIT+1','DEX+2','Enmity+2','Phalanx +4',}},
    }
	
	sets.magicPrecastWSGear = {
		ammo="Pemphredo Tathlum",
		head={ name="Jumalik Helm", augments={'MND+9','"Mag.Atk.Bns."+13','Magic burst dmg.+9%',}},
		body={ name="Found. Breastplate", augments={'Accuracy+13','Mag. Acc.+14','Attack+13','"Mag.Atk.Bns."+13',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Sulev. Cuisses +2",
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Potency of "Cure" effect received+1%','MND+3','"Mag.Atk.Bns."+15',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Ishvara Earring",
		right_ear="Friomisi Earring",
		left_ring="Shiva Ring +1",
		right_ring="Shiva Ring +1",
		back={ name="Rudianos's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%',}},
	}
	
	sets.cureGear = {
		ammo="Staunch Tathlum",
		head="Sulevia's Mask +2",
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		legs="Sulev. Cuisses +2",
		feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		neck="Loricate Torque +1",
		waist="Eschan Stone",
		left_ear="Nourish. Earring +1",
		right_ear="Mendi. Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back="Moonlight Cape",
	}
	
	sets.nukeGearINT = {
		ammo="Pemphredo Tathlum",
		head={ name="Jumalik Helm", augments={'MND+9','"Mag.Atk.Bns."+13','Magic burst dmg.+9%',}},
		body={ name="Found. Breastplate", augments={'Accuracy+13','Mag. Acc.+14','Attack+13','"Mag.Atk.Bns."+13',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Sulev. Cuisses +2",
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Potency of "Cure" effect received+1%','MND+3','"Mag.Atk.Bns."+15',}},
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
		head={ name="Jumalik Helm", augments={'MND+9','"Mag.Atk.Bns."+13','Magic burst dmg.+9%',}},
		body={ name="Found. Breastplate", augments={'Accuracy+13','Mag. Acc.+14','Attack+13','"Mag.Atk.Bns."+13',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Sulev. Cuisses +2",
		feet={ name="Odyssean Greaves", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Potency of "Cure" effect received+1%','MND+3','"Mag.Atk.Bns."+15',}},
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
	

	sets.precast.FC = sets.precastSpells
	sets.precast.WS = sets.precastWS;
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	});
	sets.precast.WS['Aeolian Edge'] = sets.magicPrecastWSGear
							
	sets.midcast['Flash'] = sets.enmityGear;

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
		hands={ name="Souv. Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		legs={ name="Odyssean Cuisses", augments={'MND+2','CHR+6','Phalanx +4',}},
		feet={ name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
		back={ name="Weard Mantle", augments={'VIT+1','DEX+2','Enmity+2','Phalanx +4',}},
    });

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
	
	sets.midcast['Banish'] = sets.nukeGearMND
	sets.midcast['Banish II'] = sets.nukeGearMND
	sets.midcast['Banish III'] = sets.nukeGearMND
	sets.midcast['Banishga'] = sets.nukeGearMND
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
	sets.midcast['Stone'] = sets.nukeGear
	sets.midcast['Stone II'] = sets.nukeGear
	sets.midcast['Stone III'] = sets.nukeGear
	sets.midcast['Stone IV'] = sets.nukeGear
	sets.midcast['Stone V'] = sets.nukeGear
	sets.midcast['Stone VI'] = sets.nukeGear
	sets.midcast['Stonega'] = sets.nukeGear
	sets.midcast['Stonega II'] = sets.nukeGear
	sets.midcast['Stonega III'] = sets.nukeGear
	sets.midcast['Stoneja'] = sets.nukeGear
	
	sets.midcast['Water'] = sets.nukeGear
	sets.midcast['Water II'] = sets.nukeGear
	sets.midcast['Water III'] = sets.nukeGear
	sets.midcast['Water IV'] = sets.nukeGear
	sets.midcast['Water V'] = sets.nukeGear
	sets.midcast['Water VI'] = sets.nukeGear
	sets.midcast['Waterga'] = sets.nukeGear
	sets.midcast['Waterga II'] = sets.nukeGear
	sets.midcast['Waterga III'] = sets.nukeGear
	sets.midcast['Waterja'] = sets.nukeGear
	
	sets.midcast['Aero'] = sets.nukeGear
	sets.midcast['Aero II'] = sets.nukeGear
	sets.midcast['Aero III'] = sets.nukeGear
	sets.midcast['Aero IV'] = sets.nukeGear
	sets.midcast['Aero V'] = sets.nukeGear
	sets.midcast['Aero VI'] = sets.nukeGear
	sets.midcast['Aeroga'] = sets.nukeGear
	sets.midcast['Aeroga II'] = sets.nukeGear
	sets.midcast['Aeroga III'] = sets.nukeGear
	sets.midcast['Aeroja'] = sets.nukeGear
	
	sets.midcast['Fire'] = sets.nukeGear
	sets.midcast['Fire II'] = sets.nukeGear
	sets.midcast['Fire III'] = sets.nukeGear
	sets.midcast['Fire IV'] = sets.nukeGear
	sets.midcast['Fire V'] = sets.nukeGear
	sets.midcast['Fire VI'] = sets.nukeGear
	sets.midcast['Firaga'] = sets.nukeGear
	sets.midcast['Firaga II'] = sets.nukeGear
	sets.midcast['Firaga III'] = sets.nukeGear
	sets.midcast['Firaja'] = sets.nukeGear
	
	sets.midcast['Blizzard'] = sets.nukeGear
	sets.midcast['Blizzard II'] = sets.nukeGear
	sets.midcast['Blizzard III'] = sets.nukeGear
	sets.midcast['Blizzard IV'] = sets.nukeGear
	sets.midcast['Blizzard V'] = sets.nukeGear
	sets.midcast['Blizzard VI'] = sets.nukeGear
	sets.midcast['Blizzaga'] = sets.nukeGear
	sets.midcast['Blizzaga II'] = sets.nukeGear
	sets.midcast['Blizzaga III'] = sets.nukeGear
	sets.midcast['Blizzaja'] = sets.nukeGear
	
	sets.midcast['Thunder'] = sets.nukeGear
	sets.midcast['Thunder II'] = sets.nukeGear
	sets.midcast['Thunder III'] = sets.nukeGear
	sets.midcast['Thunder IV'] = sets.nukeGear
	sets.midcast['Thunder V'] = sets.nukeGear
	sets.midcast['Thunder VI'] = sets.nukeGear
	sets.midcast['Thundaga'] = sets.nukeGear
	sets.midcast['Thundaga II'] = sets.nukeGear
	sets.midcast['Thundaga III'] = sets.nukeGear
	sets.midcast['Thundaja'] = sets.nukeGear

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
end


function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == 'SUPER' then
        equip(sets.SUPER)
    elseif state.OffenseMode.value == 'TP' then
        equip(sets.TP)
    else
		equip(sets.defense.PDT)
    end
end

function user_setup()
	state.OffenseMode:options('Normal', 'SUPER', 'TP')
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end