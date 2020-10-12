function get_sets()
    mote_include_version = 2
    include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'TP', 'Refresh');
	-- state.DefenseMode:options('PDT', 'DT')
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function user_unload()

end


function init_gear_sets()
	sets.precastGear = {
        ammo="Incantor Stone",
        head="Nahtirah Hat",
        body="Inyanga Jubbah +2",
        hands="Gendewitha Gages",
        legs="Aya. Cosciales +2",
        feet="Hippomenes Socks +1",
        neck="Orunmila's Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear="Malignance Earring",
        left_ring="Kishar Ring",
        right_ring="Rahab Ring",
        back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
    }

    sets.regenGear = {
        ammo="Staunch Tathlum",        
        head="Inyanga Tiara +2",
        body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +4',}},
        hands="Ebers Mitts",
        legs="Aya. Cosciales +2",
        feet="Hippomenes Socks",
        neck="Loricate Torque +1",
        waist="Channeler's Stone",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Shneddick Ring",
        right_ring="Defending Ring",
        back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

    sets.refresh = {
        ammo="Staunch Tathlum",
        head="Inyanga Tiara +2",
        body="Ebers Bliaud +1",
        hands="Inyan. Dastanas +2",
        legs="Inyanga Shalwar +2",
        feet="Inyan. Crackows +2",
        neck="Loricate Torque +1",
        waist="Channeler's Stone",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

	sets.lowTierNukeGear = {
		ammo="Pemphredo Tathlum",
		head={ name="Chironic Hat", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+10','"Mag.Atk.Bns."+15',}},
		body={ name="Chironic Doublet", augments={'"Mag.Atk.Bns."+30','MND+5','Mag. Acc.+15',}},
		hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+1','"Mag.Atk.Bns."+10',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Spell interruption rate down -10%','"Mag.Atk.Bns."+6',}},
		feet={ name="Chironic Slippers", augments={'"Mag.Atk.Bns."+30','"Conserve MP"+6','MND+13','Mag. Acc.+12',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Alaunus's Cape", augments={'Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}
		
	sets.occultAcumenGear = {

	}
	
	sets.nukeGear = {
		ammo="Pemphredo Tathlum",
		head={ name="Chironic Hat", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+10','"Mag.Atk.Bns."+15',}},
		body={ name="Chironic Doublet", augments={'"Mag.Atk.Bns."+30','MND+5','Mag. Acc.+15',}},
		hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+1','"Mag.Atk.Bns."+10',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Spell interruption rate down -10%','"Mag.Atk.Bns."+6',}},
		feet={ name="Chironic Slippers", augments={'"Mag.Atk.Bns."+30','"Conserve MP"+6','MND+13','Mag. Acc.+12',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Alaunus's Cape", augments={'Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
    }

	sets.enfeebleGear = {
		ammo="Pemphredo Tathlum",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Regal Cuffs",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Spell interruption rate down -10%','"Mag.Atk.Bns."+6',}},
		feet="Theo. Duckbills +3",
		neck="Henic Torque",
		waist="Luminary Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Spell interruption rate down-10%',}},
	}

	-- Precast sets to enhance JAs
	sets.precast.JA['Mana Wall'] = {
    
    }
	
	sets.meleeTP = {
        ammo="Amar Cluster",
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +2",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +2",
        neck="Lissome Necklace",
        waist="Grunfeld Rope",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

	sets.buffGear = {
        ammo="Staunch Tathlum",
        head="Befouled Crown",
        body="Ebers Bliaud +1",
        hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
        legs={ name="Piety Pantaln. +1", augments={'Enhances "Afflatus Misery" effect',}},
        feet="Theo. Duckbills +3",
        neck="Melic Torque",
        waist="Channeler's Stone",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
	
	sets.precastWS = {
		ammo="Floestone",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Hippomenes Socks",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Accuracy+20 Attack+20','Accuracy+2','Weapon skill damage +10%',}},
    }

	sets.precastWSIntGear = {

    }

	sets.magicPrecastWSGear = {
		ammo="Pemphredo Tathlum",
		head={ name="Chironic Hat", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+10','"Mag.Atk.Bns."+15',}},
		body={ name="Chironic Doublet", augments={'"Mag.Atk.Bns."+30','MND+5','Mag. Acc.+15',}},
		hands={ name="Chironic Gloves", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+1','"Mag.Atk.Bns."+10',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','Spell interruption rate down -10%','"Mag.Atk.Bns."+6',}},
		feet={ name="Chironic Slippers", augments={'"Mag.Atk.Bns."+30','"Conserve MP"+6','MND+13','Mag. Acc.+12',}},
		neck="Mizu. Kubikazari",
		waist="Orpheus's Sash",
		left_ear="Malignance Earring",
		right_ear="Ishvara Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Alaunus's Cape", augments={'MND+20','Accuracy+20 Attack+20','Accuracy+2','Weapon skill damage +10%',}},
    }
	
	sets.maxMP = {

    }

	sets.cureGear = {
        ammo="Staunch Tathlum",
        head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        body="Ebers Bliaud +1",
        hands="Theophany Mitts +3",
        legs="Ebers Pant. +1",
        feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="Loricate Torque +1",
        waist="Emphatikos Rope",
        left_ear="Mendi. Earring",
        right_ear="Genmei Earring",
        left_ring="Warden's Ring",
        right_ring="Defending Ring",
        back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }

	sets.precast.WS = sets.precastWS;
	
	sets.precast.WS['Rock Crusher'] = sets.magicPrecastWSGear
	sets.precast.WS['Earth Crusher'] = sets.magicPrecastWSGear
	sets.precast.WS['Starburst'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
	})
	sets.precast.WS['Sunburst'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
	})
	sets.precast.WS['Cataclysm'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
	})
	sets.precast.WS['Shining Strike'] = sets.magicPrecastWSGear
	sets.precast.WS['Seraph Strike'] = sets.magicPrecastWSGear
	sets.precast.WS['Flash Nova'] = sets.magicPrecastWSGear
	sets.precast.WS['Myrkr'] = sets.maxMP
	sets.precast.WS['Shattersoul'] = sets.precastWSIntGear
	sets.precast.WS['Gate of Tartarus'] = sets.precastWSIntGear

	sets.precast.JA.Manafont = {body="Sorcerer's Coat +2"}
	
	sets.precast.FC = sets.precastGear
	
	sets.precast.FC['Impact'] = set_combine(sets.precast.FC, {body="Twilight Cloak"})
	
	sets.midcast['Impact'] = {
		ammo="Pemphredo Tathlum",
		neck="Sanctity Necklace",
		ear1="Friomisi Earring",
		ear2="Regal Earring",
		hands="Amalric Gages +1",
		ring1="Shiva Ring +1",
		ring2="Shiva Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		waist="Orpheus's Sash",
		legs="Amalric Slops +1",
    	feet="Arch. Sabots +3"
	}

    sets.midcast['Cure'] = sets.cureGear
    sets.midcast['Cure II'] = sets.cureGear
    sets.midcast['Cure III'] = sets.cureGear
    sets.midcast['Cure IV'] = sets.cureGear
    sets.midcast['Cure V'] = sets.cureGear
    sets.midcast['Cure VI'] = sets.cureGear
    sets.midcast['Full Cure'] = sets.cureGear
    sets.midcast['Curaga'] = sets.cureGear
    sets.midcast['Curaga II'] = sets.cureGear
    sets.midcast['Curaga III'] = sets.cureGear
    sets.midcast['Curaga IV'] = sets.cureGear
    sets.midcast['Curaga V'] = sets.cureGear

    sets.midcast['Regen'] = sets.regenGear
    sets.midcast['Regen II'] = sets.regenGear
    sets.midcast['Regen III'] = sets.regenGear
    sets.midcast['Regen IV'] = sets.regenGear
    sets.midcast['Regen V'] = sets.regenGear
	sets.midcast['Blink'] = sets.buffGear
	sets.midcast['Stoneskin'] = sets.buffGear
	sets.midcast['Aquaveil'] = set_combine(sets.buffGear, {hands="Regal Cuffs", head="Chironic Hat", waist="Emphatikos rope", feet="Amalric Nails +1"})
	sets.midcast['Refresh'] = set_combine(sets.buffGear, {head="Amalric Coif +1"})
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Phalanx'] = set_combine(sets.buffGear, {
		legs={ name="Merlinic Shalwar", augments={'Potency of "Cure" effect received+1%','Pet: "Mag.Atk.Bns."+28','Phalanx +2',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Enmity+4','Phalanx +2','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
	})
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

	sets.midcast['Protect V'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shell V'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra V'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra V'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protect IV'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shell IV'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra IV'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra IV'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protect III'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shell III'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra III'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra III'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protect II'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shell II'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra II'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra II'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protect'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shell'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Protectra'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})
	sets.midcast['Shellra'] = set_combine(sets.buffGear, {ring1 = "Sheltered Ring"})

	sets.midcast['Comet'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})

	sets.midcast['Death'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		body="Amalric Doublet +1",
		ring1="Mephitas's Ring",
		ring2="Archon Ring",
	})
	
	sets.midcast['Meteor'] = sets.nukeGear
	sets.midcast['Drain'] = sets.enfeebleGear

	sets.midcast['Banish'] = sets.lowTierNukeGear
	sets.midcast['Banish II'] = sets.lowTierNukeGear
	sets.midcast['Banish III'] = sets.lowTierNukeGear
	sets.midcast['Banishga'] = sets.lowTierNukeGear
	sets.midcast['Banishga II'] = sets.lowTierNukeGear
	sets.midcast['Holy'] = sets.lowTierNukeGear
	sets.midcast['Holy II'] = sets.lowTierNukeGear

	sets.midcast['Stone'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Stone II'] = sets.lowTierNukeGear
	sets.midcast['Stone III'] = sets.nukeGear
	sets.midcast['Stone IV'] = sets.nukeGear
	sets.midcast['Stone V'] = sets.nukeGear
	sets.midcast['Stone VI'] = sets.nukeGear
	sets.midcast['Stonega'] = sets.lowTierNukeGear
	sets.midcast['Stonega II'] = sets.lowTierNukeGear
	sets.midcast['Stonega III'] = sets.nukeGear
	sets.midcast['Stoneja'] = sets.nukeGear
	
	sets.midcast['Water'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Water II'] = sets.lowTierNukeGear
	sets.midcast['Water III'] = sets.nukeGear
	sets.midcast['Water IV'] = sets.nukeGear
	sets.midcast['Water V'] = sets.nukeGear
	sets.midcast['Water VI'] = sets.nukeGear
	sets.midcast['Waterga'] = sets.lowTierNukeGear
	sets.midcast['Waterga II'] = sets.lowTierNukeGear
	sets.midcast['Waterga III'] = sets.nukeGear
	sets.midcast['Waterja'] = sets.nukeGear
	
	sets.midcast['Aero'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Aero II'] = sets.lowTierNukeGear
	sets.midcast['Aero III'] = sets.nukeGear
	sets.midcast['Aero IV'] = sets.nukeGear
	sets.midcast['Aero V'] = sets.nukeGear
	sets.midcast['Aero VI'] = sets.nukeGear
	sets.midcast['Aeroga'] = sets.lowTierNukeGear
	sets.midcast['Aeroga II'] = sets.lowTierNukeGear
	sets.midcast['Aeroga III'] = sets.nukeGear
	sets.midcast['Aeroja'] = sets.nukeGear
	
	sets.midcast['Fire'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Fire II'] = sets.lowTierNukeGear
	sets.midcast['Fire III'] = sets.nukeGear
	sets.midcast['Fire IV'] = sets.nukeGear
	sets.midcast['Fire V'] = sets.nukeGear
	sets.midcast['Fire VI'] = sets.nukeGear
	sets.midcast['Firaga'] = sets.lowTierNukeGear
	sets.midcast['Firaga II'] = sets.lowTierNukeGear
	sets.midcast['Firaga III'] = sets.nukeGear
	sets.midcast['Firaja'] = sets.nukeGear
	
	sets.midcast['Blizzard'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Blizzard II'] = sets.lowTierNukeGear
	sets.midcast['Blizzard III'] = sets.nukeGear
	sets.midcast['Blizzard IV'] = sets.nukeGear
	sets.midcast['Blizzard V'] = sets.nukeGear
	sets.midcast['Blizzard VI'] = sets.nukeGear
	sets.midcast['Blizzaga'] = sets.lowTierNukeGear
	sets.midcast['Blizzaga II'] = sets.lowTierNukeGear
	sets.midcast['Blizzaga III'] = sets.nukeGear
	sets.midcast['Blizzaja'] = sets.nukeGear
	
	sets.midcast['Thunder'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Thunder II'] = sets.lowTierNukeGear
	sets.midcast['Thunder III'] = sets.nukeGear
	sets.midcast['Thunder IV'] = sets.nukeGear
	sets.midcast['Thunder V'] = sets.nukeGear
	sets.midcast['Thunder VI'] = sets.nukeGear
	sets.midcast['Thundaga'] = sets.lowTierNukeGear
	sets.midcast['Thundaga II'] = sets.lowTierNukeGear
	sets.midcast['Thundaga III'] = sets.nukeGear
	sets.midcast['Thundaja'] = sets.nukeGear

	sets.midcast['Quake II'] = sets.nukeGear
	sets.midcast['Flood II'] = sets.nukeGear
	sets.midcast['Tornado II'] = sets.nukeGear
	sets.midcast['Flare II'] = sets.nukeGear
	sets.midcast['Freeze II'] = sets.nukeGear
	sets.midcast['Burst II'] = sets.nukeGear

	sets.midcast['Burn'] = sets.enfeebleGear
	sets.midcast['Choke'] = sets.enfeebleGear
	sets.midcast['Rasp'] = sets.enfeebleGear
	sets.midcast['Frost'] = sets.enfeebleGear
	sets.midcast['Shock'] = sets.enfeebleGear
	sets.midcast['Drown'] = sets.enfeebleGear
	sets.midcast['Slow'] = sets.enfeebleGear
	sets.midcast['Paralyze'] = sets.enfeebleGear
	sets.midcast['Blind'] = sets.enfeebleGear
	sets.midcast['Gravity'] = sets.enfeebleGear
	sets.midcast['Dispel'] = sets.enfeebleGear
	sets.midcast['Sleep'] = sets.enfeebleGear
	sets.midcast['Sleep II'] = sets.enfeebleGear
	sets.midcast['Sleepga'] = sets.enfeebleGear
	sets.midcast['Sleepga II'] = sets.enfeebleGear
	sets.midcast['Break'] = sets.enfeebleGear
	sets.midcast['Breakga'] = sets.enfeebleGear
	sets.midcast['Bind'] = sets.enfeebleGear
	sets.midcast['Stun'] = set_combine(sets.enfeebleGear, {
		hands="Spaekona's Gloves +3",
	})

	sets.midcast['Cursna'] = {
        ammo="Staunch Tathlum",
        head="Aya. Zucchetto +2",
        body="Inyanga Jubbah +2",
        hands={ name="Fanatic Gloves", augments={'MP+30','Healing magic skill +5','"Conserve MP"+4',}},
        legs="Aya. Cosciales +2",
        feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="Loricate Torque +1",
        waist="Channeler's Stone",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Shneddick Ring",
        right_ring="Defending Ring",
        back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
    
	sets.midcast['Stun'] = set_combine(sets.enfeebleGear, {
		hands="Spaekona's Gloves +3",
	})
    
	sets.midcast['Geohelix'] = sets.lowTierNukeGear
	sets.midcast['Hydrohelix'] = sets.lowTierNukeGear
	sets.midcast['Anemohelix'] = sets.lowTierNukeGear
	sets.midcast['Pyrohelix'] = sets.lowTierNukeGear
	sets.midcast['Cryohelix'] = sets.lowTierNukeGear
	sets.midcast['Ionohelix'] = sets.lowTierNukeGear
	sets.midcast['Noctohelix'] = sets.lowTierNukeGear
	sets.midcast['Luminohelix'] = sets.lowTierNukeGear
	
	sets.midcast['Burn'] = set_combine(sets.enfeebleGear, {
		feet="Arch. sabots +3",
	})
	sets.midcast['Choke'] = set_combine(sets.enfeebleGear, {
		feet="Arch. sabots +3",
	})
	sets.midcast['Rasp'] = set_combine(sets.enfeebleGear, {
		feet="Arch. sabots +3",
	})
	sets.midcast['Frost'] = set_combine(sets.enfeebleGear, {
		feet="Arch. sabots +3",
	})
	sets.midcast['Shock'] = set_combine(sets.enfeebleGear, {
		feet="Arch. sabots +3",
	})
	sets.midcast['Drown'] = set_combine(sets.enfeebleGear, {
		feet="Arch. sabots +3",
	})
	
	sets.midcast['Drain'] = set_combine(sets.enfeebleGear, sets.drainGear);
	sets.midcast['Aspir'] = set_combine(sets.enfeebleGear, sets.aspirGear);
	sets.midcast['Aspir II'] = set_combine(sets.enfeebleGear, sets.aspirGear);
	sets.midcast['Aspir III'] = set_combine(sets.enfeebleGear, sets.aspirGear);
	sets.midcast['Stoneskin'] = set_combine(sets.buffGear, {
		waist="Siegel Sash",
		neck="Nodens Gorget"
	})

	sets.PDT = {
	    ammo="Staunch Tathlum",
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +2",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Hippomenes Socks +1",
        neck="Loricate Torque +1",
        waist="Channeler's Stone",
        left_ear="Telos Earring",
        right_ear="Dedition Earring",
        left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		--back="Mecistopins mantle"
        back={ name="Alaunus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Volte Bracers",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		right_ear="Dominance earring",
	}
	
	sets.manaWall = {
		--back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	
	sets.magic_burst = {
		-- head="Ea Hat +1",
		-- legs="Ea Slops +1",
		hands="Amalric Gages +1",
		ring1="Mujin Band"
	}

end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.skill == 'Enfeebling Magic' then
		equip({hands="Regal Cuffs"});
	end

	if spell.skill == 'Elemental Magic' and (buffactive['Manawell'] == 1 or buffactive['Manafont']) then
		equip({body="Amalric Doublet +1"})
	end

	if spell.skill == 'Elemental Magic' and state.OffenseMode.value == 'MB' then
        equip(sets.magic_burst)
	elseif state.OffenseMode.value == 'AOE' then
		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'TH' then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
	end

	if state.OffenseMode.value == 'Occult' and S{"Breakga"}:contains(spell.english) then
		equip({
			hands={ name="Merlinic Dastanas", augments={'Potency of "Cure" effect received+3%','Accuracy+11','"Treasure Hunter"+2','Accuracy+16 Attack+16','Mag. Acc.+8 "Mag.Atk.Bns."+8',}},
			waist="Chaac belt",
		})
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
    elseif state.OffenseMode.value == 'Refresh' then
        equip(sets.refresh)
	else
		equip(sets.PDT)
	end

	if buffactive['Mana Wall'] == 1 or spell.english == 'Mana Wall' then
		equip(sets.manaWall)
	end
end
--
---------------------------------------------------------------------------------------------------------------------
---- Job-specific hooks for non-casting events.
---------------------------------------------------------------------------------------------------------------------
--
---- Called when a player gains or loses a buff.
---- buff == buff gained or lost
---- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    -- Unlock feet when Mana Wall buff is lost.
	if buff == "Mana Wall" and not gain then
		equip(sets.PDT)
        --enable('feet')
        --enable('back')
	end
end
--
---- Handle notifications of general user state change.
function job_state_change(stateField, newValue, oldValue)
	-- send_command('input /echo test' .. state.OffenseMode.value)
end