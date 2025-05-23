function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'AOEOccult', 'Occult', 'MB', 'TP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	sets.precastGear = {
		ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'"Fast Cast"+5',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+25','"Fast Cast"+5','MND+3','"Mag.Atk.Bns."+1',}},
    	hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+5',}},
		legs={ name="Merlinic Shalwar", augments={'"Fast Cast"+5',}},
		feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+6','CHR+3',}},
		neck="Orunmila's Torque",
		left_ear="Etiolation Earring",
		left_ring="Kishar Ring",
        back={ name="Taranus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}

	sets.lowTierNukeGear = {
		--main="Daybreak",
		--sub="Culminus",
		ammo="Pemphredo Tathlum",
		head="Agwu's Cap",
		body="Spaekona's Coat +3",
		hands="Agwu's Gages",
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck="Sorcerer's Stole +2",
		waist="Orpheus's Sash",
		--waist="Acuity Belt +1",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
		
	sets.occultAcumenGear = {
		ammo="Seraphic Ampulla",
		head="Mallquis Chapeau +2",
		body="Spaekona's Coat +3",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','"Occult Acumen"+11','MND+3','Mag. Acc.+3','"Mag.Atk.Bns."+8',}},
		legs="Perdition Slops",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+11','MND+1','Mag. Acc.+4','"Mag.Atk.Bns."+13',}},
		--feet="wicce sabots +1",
		neck="Asperity Necklace", --3
		waist="Oneiros Rope", --2
		ear1="Telos Earring", --5
		ear2="Dedition Earring", --8
		ring1="Rajas Ring", --5
		ring2="Petrov Ring", --5
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Store TP"+10','Phys. dmg. taken-10%',}}, --10
	}
	
	sets.nukeGear = {
		--main="Daybreak",
		--sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		neck="Sorcerer's Stole +2",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		ring1="Freke Ring",
		ring2="Metamorph ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		waist="Orpheus's Sash",
		--waist = "Acuity Belt +1",
		head="Arch. Petasos +3",
		body="Spaekona's Coat +3",
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		feet="Arch. sabots +3",
		legs="Arch. Tonban +3",
	}

	sets.enfeebleGearINT = {
		--main="Daybreak",
		--sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Mall. Chapeau +2",
		body="Spaekona's Coat +3",
		hands="Mallquis Cuffs +2",
		legs="Mallquis Trews +2",
		feet="Mallquis Clogs +2",
		neck={ name="Src. Stole +2", augments={'Path: A',}},
		waist="Acuity Belt +1",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Kishar Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.enfeebleGearMND = {
		--main="Daybreak",
		--sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Mall. Chapeau +2",
		body="Spaekona's Coat +3",
		hands="Mallquis Cuffs +2",
		legs="Mallquis Trews +2",
		feet="Mallquis Clogs +2",
		neck={ name="Src. Stole +2", augments={'Path: A',}},
		waist="Acuity Belt +1",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Kishar Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	-- Precast sets to enhance JAs
	sets.precast.JA['Mana Wall'] = {
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	sets.meleeTP = {
		ammo="Amar Cluster",
		head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic II damage',}},
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet={ name="Arch. Sabots +3", augments={'Reduces Ancient Magic II MP cost',}},
		neck="Asperity Necklace",
		waist="Goading Belt",
		left_ear="Telos Earring",
		right_ear="Dedition Earring",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Haste+10','Phys. dmg. taken-10%',}},
	}
	sets.buffGear = {
		ammo="Staunch Tathlum",
		head="Befouled Crown",
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +4',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Melic Torque",
		waist="Olympus Sash",
		left_ear="Augment. Earring",
		right_ear="Andoaa Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
		back="Perimede Cape",	
	}
	
	sets.precastWS = {
		ammo="Amar Cluster",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Telos Earring",
		left_ring="Epaminondas's ring",
		right_ring="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','Haste+10','Phys. dmg. taken-10%',}},
	}

	sets.precastWSIntGear = {
		ammo="Floestone",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Src. Stole +2",
		waist="Fotia Belt",
		left_ear="Regal Earring",
		right_ear="Telos Earring",
		left_ring="Shiva Ring +1",
		right_ring="Shiva Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Accuracy+20 Attack+20','INT+1','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.magicPrecastWSGear = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Amalric Doublet +1",
		hands="Jhakri Cuffs +2",
		legs="Amalric Slops +1",
		feet="Amalric Nails +1",
		neck="Src. Stole +2",
		waist="Orpheus's Sash",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		ring1="Shiva Ring +1",
		ring2="Archon Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
	}
	
	sets.maxMP = {
		head="Amalric Coif +1",
		body="Amalric Doublet +1",
		hands="Spaekona's Gloves +3",
		legs="Amalric Slops +1",
		feet={ name="Psycloth Boots", augments={'MP+50','INT+7','"Conserve MP"+6',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		ring1="Mephitas's Ring",
		ring2="Mephitas's Ring +1",
		left_ear="Etiolation Earring",
		right_ear="Regal Earring",
	}

	sets.aspirGear = {
	    neck="Erra Pendant",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+24','"Drain" and "Aspir" potency +11','"Mag.Atk.Bns."+4',}},
		body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		feet={ name="Merlinic Crackows", augments={'"Drain" and "Aspir" potency +9','"Mag.Atk.Bns."+19','Accuracy+3 Attack+3','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
		legs="Spaekona's Tonban +3",
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		ring1="Evanescence Ring",
		waist="Fucho-no-Obi"
	}

	sets.drainGear = {
	    neck="Erra Pendant",
		head="Pixie Hairpin +1",
		body={ name="Merlinic Jubbah", augments={'AGI+1','"Drain" and "Aspir" potency +8','"Fast Cast"+6','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		feet={ name="Merlinic Crackows", augments={'"Drain" and "Aspir" potency +9','"Mag.Atk.Bns."+19','Accuracy+3 Attack+3','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
		legs="Spaekona's Tonban +3",
		hands={ name="Arch. Gloves +3", augments={'Increases Elemental Magic accuracy',}},
		ring1="Evanescence Ring",
		ring2="Archon Ring",
		waist="Fucho-no-Obi"
	}

	sets.cureGear = {
		ammo="Staunch Tathlum",
		head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		body="Mallquis Saio +2",
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		legs={ name="Vanya Slops", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Nodens Gorget",
		waist="Emphatikos rope",
		left_ear="Mendi. Earring",
		right_ear="Genmei Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.PDT = {
		--main="Malignance Pole",
		--sub="Kaja Grip",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Warder's Charm",
		waist="Carrier's Sash",
		left_ear="Lugalbanda Earring",
		right_ear="Etiolation Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.manaWall = {
		--back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	sets.magic_burst = {
		head="Ea Hat +1",
		legs="Ea Slops +1",
		hands="Agwu's Gages",
		ring1="Mujin Band"
	}

	
	sets.manaWall = {
		--back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	sets.precast.WS = sets.precastWS;

	sets.precast.WS['Shattersoul'] = sets.precastWSIntGear
	sets.precast.WS['Rock Crusher'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Earth Crusher'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Starburst'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Sunburst'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Vidohunir'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Cataclysm'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Myrkr'] = set_combine(sets.maxMP, {
		right_ear="Moonshade Earring"
	})
	sets.precast.WS['Spiral Hell'] = {
		ammo="Floestone",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Freke Ring",
		right_ring="Rufescent Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
	}
	sets.precast.WS['Shining Strike'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Seraph Strike'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Flash Nova'] = sets.magicPrecastWSGear

	sets.precast.JA.Manafont = {body="Archmage's Coat +3"}

	sets.precast.FC = sets.precastGear

	sets.precast.FC['Impact'] = set_combine(sets.precast.FC, {body="Twilight Cloak"})
	sets.precast.FC['Meteor'] = sets.PDT

	sets.midcast['Impact'] = {
		ammo="Seraphic Ampulla", -- 7 occult
		body="Twilight Cloak",
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+3 "Mag.Atk.Bns."+3','"Occult Acumen"+11','MND+3','Mag. Acc.+3','"Mag.Atk.Bns."+8',}}, -- 11 occult
		legs="Perdition Slops", -- 30 occult
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','"Occult Acumen"+11','MND+1','Mag. Acc.+4','"Mag.Atk.Bns."+13',}}, -- 11 occult
		neck="Lissome Necklace", --4 STP
		waist="Oneiros Rope", --2 STP + 20 occult
		ear1="Telos Earring", --5 STP
		ear2="Dedition Earring", --8 STP
		left_ring={name="Chirich Ring +1", bag="Wardrobe 1"}, -- 6 STP
		right_ring={name="Chirich Ring +1", bag="Wardrobe 2"}, -- 6 STP
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Store TP"+10','Phys. dmg. taken-10%',}}, --10 STP
	}


	include('BLMspells.lua')

	sets.midcast['Meteor'] = set_combine(sets.nukeGear, {
		body="Arch. Coat +3",
		waist="Acuity Belt +1",
		ammo="Ghastly Tathlum +1"
	})

	-- Override spells below...
	sets.midcast['Poisonga'] = set_combine(sets.enfeebleGearINT, {
		legs={ name="Merlinic Shalwar", augments={'MND+2','STR+8','"Treasure Hunter"+2',}},
		waist="Chaac belt",
	})
end


function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.skill == 'Elemental Magic' and (buffactive['Manawell'] == 1 or buffactive['Manafont']) and not S{"Impact"}:contains(spell.english) then
		equip({body="Amalric Doublet +1"})
	end

	if buffactive['Mana Wall'] == 1 then
		equip(sets.manaWall)
	end

	if spell.skill == 'Elemental Magic' and (state.OffenseMode.value == 'MB' or state.OffenseMode.value == 'TP') then
		equip(sets.magic_burst)

		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'Occult' then
		if spell.skill == 'Elemental Magic' then
			equip(set_combine(sets.occultAcumenGear, {
				body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+4','"Occult Acumen"+11','MND+6',}},
			}))
		end
	elseif state.OffenseMode.value == 'AOEOccult' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.occultAcumenGear)
		end
		
		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'TH' then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
	end

	if S{"Breakga"}:contains(spell.english) or S{"Diaga"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			legs={ name="Merlinic Shalwar", augments={'MND+2','STR+8','"Treasure Hunter"+2',}},
			waist="Chaac belt",
		})
	end

	if S{"Burn", "Choke", "Rasp", "Frost", "Shock", "Drown"}:contains(spell.english) then
		equip(set_combine(sets.enfeebleGearINT, {
			head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic damage and magic burst damage',}},
			body={ name="Arch. Coat +3", augments={'Enhances "Manafont" effect',}},
			feet="Arch. sabots +3",
			legs="Arch. tonban +3",
			hands="Spaekona's Gloves +3",
			left_ring="Stikini Ring +1",
		}));
	end

	if S{"Phalanx"}:contains(spell.english) then
		oldMain = player.equipment.main
		oldSub = player.equipment.sub
		
		equip(set_combine(sets.buffGearDuration, sets.buffGear, {
			-- main={ name="Gada", augments={'AGI+9','"Mag.Atk.Bns."+24','Phalanx +3','DMG:+8',}},
			-- sub="Ammurapi Shield",
    		head={ name="Merlinic Hood", augments={'INT+13','Mag. Acc.+10','Phalanx +4',}},
			legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23','DEX+2','Phalanx +3','Accuracy+8 Attack+8',}},
			hands={ name="Merlinic Dastanas", augments={'INT+2','"Dbl.Atk."+4','Phalanx +3','Accuracy+10 Attack+10',}},
			body={ name="Merlinic Jubbah", augments={'Crit.hit rate+1','Pet: AGI+1','Phalanx +4','Accuracy+13 Attack+13','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
			feet={ name="Merlinic Crackows", augments={'"Cure" potency +3%','Pet: STR+7','Phalanx +4','Accuracy+8 Attack+8','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
			waist="Embla Sash",
		}))
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	-- Lock feet after using Mana Wall.
	if not spell.interrupted then
		if spell.english == 'Mana Wall' then
			--enable('feet')
			--enable('back')
			--equip(sets.buff['Mana Wall'])
			--disable('feet')
			--disable('back')	
		end
	end

	if state.OffenseMode.value == "TP" then
		equip(sets.meleeTP)
	else
		equip(sets.PDT)
	end

	if buffactive['Mana Wall'] == 1 or spell.english == 'Mana Wall' then
		equip(sets.manaWall)
	end

	if oldMain and oldMain ~= '' then
		equip({
			main=oldMain
		})

		oldMain = ''
	end

	if oldSub and oldSub ~= '' then
		equip({
			sub=oldSub
		})

		oldSub = ''
	end
end

function job_buff_change(buff, gain)
	if buff == "Mana Wall" and not gain then
		equip(sets.PDT)
	end
end

