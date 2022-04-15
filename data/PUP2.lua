function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('normal', 'tp', 'petTank', 'petRanged', 'petMelee');
end

function init_gear_sets()
    -- Put Generic Fast Cast gear here.
	sets.precastGear = {

	}

    -- This is for spells that are affected by Enhancing Gear
	sets.buffGear = {
		ammo="Staunch Tathlum",
		head="Befouled Crown",
		neck="Melic Torque",
		waist="Olympus Sash",
		left_ear="Augment. Earring",
		right_ear="Andoaa Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
		back="Perimede Cape",	
    }
    
    -- This should be a generic setup for your WS Gear.  See below for individual Weapon Skills
	sets.precastWS = {
		ammo="Automat. Oil +3",
		Head="Rao Kabuto +1",
		body="Foire Tobe +3",
		hands={ name="Pitre Dastanas +3", augments={'Enhances "Fine-Tuning" effect',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'Accuracy+4','Pet: Haste+1','Weapon skill damage +7%','Accuracy+19 Attack+19','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		neck="Fotia Gorget",
		--neck="Pup. Collar +2",
		waist="Fotia Belt",
		left_ear="Mache Earring +1",
		right_ear="Mache Earring +1",
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }

    -- This is precast for magical WS's
    sets.magicPrecastWSGear = {

	}
    
    -- This set is for you personally to build fast TP. 
	sets.meleeTP = {
		head={ name="Herculean Helm", augments={'Accuracy+22 Attack+22','"Triple Atk."+1','VIT+10',}},
		body={ name="Herculean Vest", augments={'Attack+29','"Triple Atk."+3','DEX+1','Accuracy+10',}},
		hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+3',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+21','"Triple Atk."+4','STR+8','Attack+4',}},
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		ear1="Rimeice Earring",
		ear2="Domesticator's Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Epona's Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}},
    }
    
    
    -- pet tank gear
	sets.petTank = {
        main="Ohrmazd",
        range="Animator P +1",
        ammo="Automat. Oil +3",
        head="Heyoka Cap",
        neck="Shepherd's Chain",
        ear1="Enmerkar earring",
        ear2="Domesticator's earring",
        body="Heyoka Harness +1",
        hands="Heyoka mittens",
        ring1="Thurandaut Ring",
        ring2="Overbearing Ring",
        back={name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+6 Pet: Rng. Acc.+6','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
        waist="Isa belt",
        legs="Heyoka subligar",
        feet="Heyoka Leggings +1"
    }
    
    -- pet range gear
	sets.petRanged = {
        main="Ohtas",
        ammo="Automat. Oil +3",
        range="animator P II",
        head={ name="Herculean Helm", augments={'Pet: Accuracy+28 Pet: Rng. Acc.+28','Pet: "Store TP"+9','Pet: DEX+12','Pet: Attack+5 Pet: Rng.Atk.+5','Pet: "Mag.Atk.Bns."+9',}},
        hands={ name="Herculean Gloves", augments={'Pet: Accuracy+26 Pet: Rng. Acc.+26','Pet: "Store TP"+10','Pet: INT+3','Pet: Attack+9 Pet: Rng.Atk.+9','Pet: "Mag.Atk.Bns."+1',}},
        legs={ name="Herculean Trousers", augments={'Pet: Accuracy+27 Pet: Rng. Acc.+27','Pet: "Store TP"+10','Pet: "Mag.Atk.Bns."+1',}},
        feet={ name="Herculean Boots", augments={'Pet: Accuracy+26 Pet: Rng. Acc.+26','Pet: "Store TP"+8','Pet: Attack+2 Pet: Rng.Atk.+2','Pet: "Mag.Atk.Bns."+11',}},
        left_ring="Varar Ring",
        right_ring="Varar Ring",
        ear1="Enmerkar earring",
        ear2="burana earring",
        back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Haste+10',}},        
        body="Pitre Tobe +1", 
        waist="Ukko sash"
    }
    
    -- pet melee gear
	sets.petMelee = {
        main="Ohtas",
        ammo="Automat. Oil +3",
        range="animator P",
        head={ name="Herculean Helm", augments={'Pet: Accuracy+28 Pet: Rng. Acc.+28','Pet: "Store TP"+9','Pet: DEX+12','Pet: Attack+5 Pet: Rng.Atk.+5','Pet: "Mag.Atk.Bns."+9',}},
        hands={ name="Herculean Gloves", augments={'Pet: Accuracy+26 Pet: Rng. Acc.+26','Pet: "Store TP"+10','Pet: INT+3','Pet: Attack+9 Pet: Rng.Atk.+9','Pet: "Mag.Atk.Bns."+1',}},
        legs={ name="Herculean Trousers", augments={'Pet: Accuracy+27 Pet: Rng. Acc.+27','Pet: "Store TP"+10','Pet: "Mag.Atk.Bns."+1',}},
        feet={ name="Herculean Boots", augments={'Pet: Accuracy+26 Pet: Rng. Acc.+26','Pet: "Store TP"+8','Pet: Attack+2 Pet: Rng.Atk.+2','Pet: "Mag.Atk.Bns."+11',}},
        left_ring="Varar Ring",
        right_ring="Varar Ring",
        neck="Shulmanu collar",
        ear1="Enmerkar earring",
        ear2="Domesticator's earring",
        back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Haste+10',}},
        body="Pitre Tobe +1",
        waist="Moonbow Belt +1"
    }

    -- This is your generic after any action idle gear that will protect you to the maximum
	sets.PDT = {
	    ammo="Staunch Tathlum",
		head={ name="Merlinic Hood", augments={'Damage taken-3%','CHR+1',}},
	    body="Mallquis Saio +2",
		hands={ name="Merlinic Dastanas", augments={'Enmity-2','Crit. hit damage +2%','Damage taken-5%',}},
		legs={ name="Merlinic Shalwar", augments={'Accuracy+6','Damage taken-2%','INT+6','Mag. Acc.+3','"Mag.Atk.Bns."+7',}},
	    feet="Hippomenes Socks",
	    neck="Loricate Torque +1",
	    waist="Grunfeld Rope",
	    left_ear="Dominance Earring",
	    right_ear="Genmei Earring",
	    left_ring="Shneddick Ring",
	    right_ring="Defending Ring",
		back={ name="Taranus's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Phys. dmg. taken-10%',}},
    }
    
    sets.precast.WS['Howling'] = {
		ammo="Automat. Oil +3",
		Head="Pitre Taj +3",
		body="Foire Tobe +3",
		hands={ name="Pitre Dastanas +3", augments={'Enhances "Fine-Tuning" effect',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'Accuracy+4','Pet: Haste+1','Weapon skill damage +7%','Accuracy+19 Attack+19','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		--neck="Fotia Gorget",
		neck="Pup. Collar +2",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
 
    sets.precast.WS['Victory Smite'] = {
		head="Rao Kabuto +1",
		body="Abnoba Kaftan",
		hands="Pitre Dastanas +3",
		legs="Hiza. Hizayoroi +2",
		feet="Ryuo Sune-Ate +1",
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		left_ear="Mache Earring +1",
		right_ear="Brutal Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}},
	}
	
    --sets.precast.WS['Stringing pummel'] = sets.precast.WS['Victory Smite']
	
	sets.precast.WS['Stringing Pummel'] = {
		head="Rao Kabuto +1",
		body="Abnoba Kaftan",
		hands="Pitre Dastanas +3",
		legs="Hiza. Hizayoroi +2",
		feet="Ryuo Sune-Ate +1",
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		left_ear="Mache Earring +1",
		right_ear="Brutal Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}},
	}
     
    sets.precast.WS['Shijin SPiral'] = {
		ammo="Automat. Oil +3",
		Head="Pitre Taj +3",
		body="Foire Tobe +3",
		hands={ name="Pitre Dastanas +3", augments={'Enhances "Fine-Tuning" effect',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'Accuracy+4','Pet: Haste+1','Weapon skill damage +7%','Accuracy+19 Attack+19','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		neck="Fotia Gorget",
		--neck="Pup. Collar +2",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
    
    -- This is for when you precast a job ability.  You can set specific job abilities and the gear you want to put with it.
	sets.precast.JA['Mana Wall'] = {
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
    
    sets.midcast['Blink'] = set_combine(sets.buffGear, sets.buffGearDuration)
    sets.midcast['Aquaveil'] = set_combine(set_combine(sets.buffGearDuration, sets.buffGear), {hands="Regal Cuffs", head="Amalric Coif +1", waist="Emphatikos rope", feet="Amalric Nails +1"})
    sets.midcast['Refresh'] = set_combine(sets.buffGear, sets.buffGearDuration, {head="Amalric Coif +1"})
    sets.midcast['Barstonra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barwatera'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Baraera'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barfira'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barblizzara'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barthundra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barsleepra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barpoisonra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barparalyzra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barblindra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barsilencera'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barpetra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barvira'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Baramnesra'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barstone'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barwater'] = set_combine(sets.buffGearDuration, sets.buffGear)     
    sets.midcast['Baraero'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barfire'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barblizzard'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barthunder'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barsleep'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barpoison'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barparalyze'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barblind'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barsilence'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barpetrify'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Barvirus'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Baramnesia'] = set_combine(sets.buffGearDuration, sets.buffGear)
    sets.midcast['Protect V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shell V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protectra V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shellra V'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protect IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shell IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protectra IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shellra IV'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protect III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shell III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protectra III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shellra III'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protect II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shell II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protectra II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shellra II'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protect'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shell'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Protectra'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Shellra'] = set_combine(set_combine(sets.buffGear, sets.buffGearDuration), {ring1 = "Sheltered Ring"})
    sets.midcast['Haste'] = set_combine(sets.buffGear, sets.buffGearDuration)
    sets.midcast['Stoneskin'] = set_combine(set_combine(sets.buffGearDuration, sets.buffGear), {
        waist="Siegel Sash",
        neck="Nodens Gorget"
    })


    -- Midcast Sets
    sets.midcast.Cure ={ 
		waist="Bishop's Sash", 
		back="Tempered Cape +1", 
		body="Vrikodara Jupon",
		hands="Weatherspoon Cuffs +1",
		neck="Incanter's Torque",
		feet="Regal pumps",
        left_ring="Sirona's Ring", 
		right_ring="Lebeche Ring", 
		left_ear="Mendicant's Earring",
		right_ear="Loquacious Earring",
		neck="Phalaina Locket",
	}

    sets.midcast.FastRecast = {
        head="Haruspex Hat",ear2="Loquacious Earring",
        body="Otronif Harness +1",hands="Regimen Mittens",
        legs="Manibozho Brais",feet="Otronif Boots +1"}


    -- Midcast sets for pet actions
    sets.midcast.Pet.Cure = {main={ name="Nibiru Sainti", augments={'Melee skill +20','Ranged skill +20','Magic skill +20',}},
    head={ name="Naga Somen", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
    body={ name="Naga Samue", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
    hands={ name="Naga Tekko", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
    legs="Foire Churidars +2",
    feet={ name="Naga Kyahan", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
    neck="Adad Amulet",
    waist="Ukko Sash",
    left_ear="Enmerkar Earring",
    right_ear="Burana Earring",}

    sets.midcast.Pet['Elemental Magic'] = {
            main={ name="Nibiru Sainti", augments={'Melee skill +20','Ranged skill +20','Magic skill +20',}},
            range="Animator P",
            ammo="Automat. Oil +3",
            head={ name="Rawhide Mask", augments={'Attack+15','Pet: Mag. Acc.+20','Pet: "Mag.Atk.Bns."+15',}},
            body={ name="Herculean Vest", augments={'Pet: Mag. Acc.+27','Pet: INT+1','Pet: Attack+11 Pet: Rng.Atk.+11','Pet: "Mag.Atk.Bns."+15',}},
            hands={ name="Naga Tekko", augments={'Pet: MP+80','Pet: Mag. Acc.+20','Pet: "Mag.Atk.Bns."+20',}},
            legs={ name="Herculean Trousers", augments={'Pet: Mag. Acc.+24','Pet: "Store TP"+8','Pet: STR+5','Pet: "Mag.Atk.Bns."+12',}},
            feet="Foire Babouches +3",
            neck="Adad Amulet",
            waist="Ukko Sash",
            left_ear="Burana Earring",
            right_ear="Enmerkar Earring",
            left_ring="Varar Ring",
            right_ring="Varar Ring",
            back={ name="Visucius's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20',}},
    }
end

function job_post_midcast(spell, action, spellMap, eventArgs)

end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "TP" then
        equip(sets.meleeTP)
    elseif state.OffenseMode.value == "petTank" then
        equip(sets.petTank)
    elseif state.OffenseMode.value == "petRanged" then
        equip(sets.petRanged)
    elseif state.OffenseMode.value == "petMelee" then
        equip(sets.petMelee) 
	else
		equip(sets.PDT)
	end
end

function job_buff_change(buff, gain)
    
end