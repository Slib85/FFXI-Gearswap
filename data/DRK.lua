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
	precastSpells = {
		--ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body="Vatic Byrnie",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Flamma Dirs +1",
		feet="Flam. Gambieras 2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Steelflash Earring",
		right_ear="Loquac. Earring",
		left_ring="Prolix Ring",
		right_ring="Weather. Ring",
		--back="Atheling Mantle",
	}
	
	precastWS = {
		ammo="Knobkierrie",
		head="Sulevia's Mask +2",
		body="Hjarrandi Breastplate",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	
	darkGear = {
		
	}
	
	magicPrecastWSGear = {
		
	}
	
	cureGear = {
		
	}
	
	nukeGear = {
		
	}
	
	buffGear = {
		
	}
	
	enfeebleGear = {
		
	}
	
	sets.precast.JA['Nether Void'] = {
		legs="Heath. Flanchard +1"
	}
	
	sets.precast.JA['Nether Void'] = {
		back="Ankou's Mantle"
	}

	sets.precast.FC = precastSpells
	sets.precast.WS = precastWS;
	                          
	sets.midcast['Cure'] = cureGear
	sets.midcast['Cure II'] = cureGear
	sets.midcast['Cure III'] = cureGear
	sets.midcast['Cure IV'] = cureGear
	sets.midcast['Cure V'] = cureGear
	sets.midcast['Cure VI'] = cureGear
	sets.midcast['Curaga'] = cureGear
	sets.midcast['Curaga II'] = cureGear
	sets.midcast['Curaga III'] = cureGear
	sets.midcast['Curaga IV'] = cureGear
	sets.midcast['Curaga V'] = cureGear
	sets.midcast['Cura'] = cureGear
	sets.midcast['Cura II'] = cureGear
	sets.midcast['Cura III'] = cureGear
	
	sets.midcast['Blink'] = buffGear
	sets.midcast['Stoneskin'] = buffGear
	sets.midcast['Aquaveil'] = buffGear
	sets.midcast['Auspice'] = buffGear
	sets.midcast['Phalanx'] = buffGear
	sets.midcast['Blaze Spikes'] = buffGear
	sets.midcast['Ice Spikes'] = buffGear
	
	sets.midcast['Barstonra'] = buffGear
	sets.midcast['Barwatera'] = buffGear     
	sets.midcast['Baraera'] = buffGear
	sets.midcast['Barfira'] = buffGear
	sets.midcast['Barblizzara'] = buffGear
	sets.midcast['Barthundra'] = buffGear
	sets.midcast['Barsleepra'] = buffGear
	sets.midcast['Barpoisonra'] = buffGear
	sets.midcast['Barparalyzra'] = buffGear
	sets.midcast['Barblindra'] = buffGear
	sets.midcast['Barsilencera'] = buffGear
	sets.midcast['Barpetra'] = buffGear
	sets.midcast['Barvira'] = buffGear
	sets.midcast['Baramnesra'] = buffGear
	
	sets.midcast['Boost-STR'] = buffGear
	sets.midcast['Boost-DEX'] = buffGear
	sets.midcast['Boost-VIT'] = buffGear
	sets.midcast['Boost-AGI'] = buffGear
	sets.midcast['Boost-INT'] = buffGear
	sets.midcast['Boost-MND'] = buffGear
	sets.midcast['Boost-CHR'] = buffGear
	
	sets.midcast['Banish'] = nukeGear
	sets.midcast['Banish II'] = nukeGear
	sets.midcast['Banish III'] = nukeGear
	sets.midcast['Banishga'] = nukeGear
	sets.midcast['Banishga II'] = nukeGear
	sets.midcast['Holy'] = nukeGear
	sets.midcast['Holy II'] = nukeGear
	
	sets.midcast['Repose'] = enfeebleGear
	sets.midcast['Paralyze'] = enfeebleGear
	sets.midcast['Slow'] = enfeebleGear
	sets.midcast['Repose'] = enfeebleGear
	sets.midcast['Silence'] = enfeebleGear
	sets.midcast['Addle'] = enfeebleGear
	
	-- BLACK MAGIC
	sets.midcast['Stone'] = nukeGear
	sets.midcast['Stone II'] = nukeGear
	sets.midcast['Stone III'] = nukeGear
	sets.midcast['Stone IV'] = nukeGear
	sets.midcast['Stone V'] = nukeGear
	sets.midcast['Stone VI'] = nukeGear
	sets.midcast['Stonega'] = nukeGear
	sets.midcast['Stonega II'] = nukeGear
	sets.midcast['Stonega III'] = nukeGear
	sets.midcast['Stoneja'] = nukeGear
	
	sets.midcast['Water'] = nukeGear
	sets.midcast['Water II'] = nukeGear
	sets.midcast['Water III'] = nukeGear
	sets.midcast['Water IV'] = nukeGear
	sets.midcast['Water V'] = nukeGear
	sets.midcast['Water VI'] = nukeGear
	sets.midcast['Waterga'] = nukeGear
	sets.midcast['Waterga II'] = nukeGear
	sets.midcast['Waterga III'] = nukeGear
	sets.midcast['Waterja'] = nukeGear
	
	sets.midcast['Aero'] = nukeGear
	sets.midcast['Aero II'] = nukeGear
	sets.midcast['Aero III'] = nukeGear
	sets.midcast['Aero IV'] = nukeGear
	sets.midcast['Aero V'] = nukeGear
	sets.midcast['Aero VI'] = nukeGear
	sets.midcast['Aeroga'] = nukeGear
	sets.midcast['Aeroga II'] = nukeGear
	sets.midcast['Aeroga III'] = nukeGear
	sets.midcast['Aeroja'] = nukeGear
	
	sets.midcast['Fire'] = nukeGear
	sets.midcast['Fire II'] = nukeGear
	sets.midcast['Fire III'] = nukeGear
	sets.midcast['Fire IV'] = nukeGear
	sets.midcast['Fire V'] = nukeGear
	sets.midcast['Fire VI'] = nukeGear
	sets.midcast['Firaga'] = nukeGear
	sets.midcast['Firaga II'] = nukeGear
	sets.midcast['Firaga III'] = nukeGear
	sets.midcast['Firaja'] = nukeGear
	
	sets.midcast['Blizzard'] = nukeGear
	sets.midcast['Blizzard II'] = nukeGear
	sets.midcast['Blizzard III'] = nukeGear
	sets.midcast['Blizzard IV'] = nukeGear
	sets.midcast['Blizzard V'] = nukeGear
	sets.midcast['Blizzard VI'] = nukeGear
	sets.midcast['Blizzaga'] = nukeGear
	sets.midcast['Blizzaga II'] = nukeGear
	sets.midcast['Blizzaga III'] = nukeGear
	sets.midcast['Blizzaja'] = nukeGear
	
	sets.midcast['Thunder'] = nukeGear
	sets.midcast['Thunder II'] = nukeGear
	sets.midcast['Thunder III'] = nukeGear
	sets.midcast['Thunder IV'] = nukeGear
	sets.midcast['Thunder V'] = nukeGear
	sets.midcast['Thunder VI'] = nukeGear
	sets.midcast['Thundaga'] = nukeGear
	sets.midcast['Thundaga II'] = nukeGear
	sets.midcast['Thundaga III'] = nukeGear
	sets.midcast['Thundaja'] = nukeGear

	sets.midcast['Sleep'] = enfeebleGear
	sets.midcast['Sleep II'] = enfeebleGear
	sets.midcast['Sleepga'] = enfeebleGear
	sets.midcast['Blind'] = enfeebleGear
	sets.midcast['Poison'] = enfeebleGear
	sets.midcast['Poison II'] = enfeebleGear
	sets.midcast['Bind'] = enfeebleGear
	sets.midcast['Dispel'] = enfeebleGear
	sets.midcast['Gravity'] = enfeebleGear
	sets.midcast['Distract'] = enfeebleGear
	sets.midcast['Frazzle'] = enfeebleGear
	sets.midcast['Bio'] = enfeebleGear
	sets.midcast['Bio II'] = enfeebleGear
	
	sets.precast.WS['Catastrophe'] = {
		ammo="Knobkierrie",
		head="Sulevia's Mask +2",
		body="Hjarrandi Breastplate",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Lissome Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.precast.WS['Cataclysm'] = magicPrecastWSGear
	sets.precast.WS['Flash Nova'] = magicPrecastWSGear
	sets.precast.WS['Shining Strike'] = magicPrecastWSGear
	sets.precast.WS['Seraph Strike'] = magicPrecastWSGear
	
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

	sets.defense.PDT = {
		ammo="Amar Cluster",
		head="Sulevia's Mask +2",
		body="Hjarrandi Breastplate",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Sarissapho. Belt",
		left_ear="Dedition Earring",
		right_ear="Telos Earring",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10',}},
	}

	sets.defense.TP = {
		ammo="Staunch Tathlum",
		head="Flam. Zucchetto +2",
		body="Hjarrandi Breastplate",
		hands="Sulev. Gauntlets +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Lissome Necklace",
		waist="Sarissapho. Belt",
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Moonlight Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10',}},
	}
end


function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == 'TP' then
		equip(sets.defense.TP)
	else
		equip(sets.defense.PDT)
    end
end

function user_setup()
	state.OffenseMode:options('Normal', 'TP')
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end