-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
    
    -- Load and initialize the include file.
    include('Mote-Include.lua')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

---- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
	-- Options: Override default values
    
	state.OffenseMode:options('Normal', 'MB', 'VagaryMBNoKill');
	-- state.DefenseMode:options('PDT', 'DT')
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
--	
	-- state.MagicBurst = M(true, 'Magic Burst')
--	lowTierNukes = S{'Stone', 'Water', 'Aero', 'Fire', 'Blizzard', 'Thunder',
--		'Stone II', 'Water II', 'Aero II', 'Fire II', 'Blizzard II', 'Thunder II',
--		'Stone III', 'Water III', 'Aero III', 'Fire III', 'Blizzard III', 'Thunder III',
--		'Stonega', 'Waterga', 'Aeroga', 'Firaga', 'Blizzaga', 'Thundaga',
--		'Stonega II', 'Waterga II', 'Aeroga II', 'Firaga II', 'Blizzaga II', 'Thundaga II'}
--	
--	gear.macc_hagondes = {name="Hagondes Cuffs", augments={'Phys. dmg. taken -3%','Mag. Acc.+29'}}
--	`
--	-- Additional local binds
	--send_command('bind NUM2 input /ma Stun <t>')
	
	--send_command('bind 1 gs c activate MagicBurst')
--	
--	select_default_macro_book()
end

-- Called when this job file is unloaded (eg: job change)
function user_unload()
	--send_command('unbind NUM2')
	--send_command('unbind NUM1')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
	---- Precast Sets ----
	sets.precastGear = {
		ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'"Fast Cast"+5',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+25','"Fast Cast"+5','MND+3','"Mag.Atk.Bns."+1',}},
    	hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+5',}},
		legs={ name="Merlinic Shalwar", augments={'"Fast Cast"+5',}},
		feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+6','CHR+3',}},
		neck="Orunmila's Torque",
		left_ear="Malignance Earring",
		right_ear="Etiolation Earring",
		left_ring="Kishar Ring",
		back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
	}

	sets.lowTierNukeGear = {
		main="Bunzi's Rod",
		sub="Culminus",
		ammo="Ghastly Tathlum +1",
		head="Agwu's Cap",
		body="Agwu's Robe",
		hands="Agwu's Gages",
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		--waist="Acuity Belt +1",
		waist="Orpheus's Sash",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Metamor. Ring +1",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.nukeGear = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		head="Agwu's Cap",
		body="Agwu's Robe",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		--waist="Acuity Belt +1",
		waist="Orpheus's Sash",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Metamor. Ring +1",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}

	sets.enfeebleGear = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Mall. Chapeau +2",
		body="Mallquis Saio +2",
		hands="Mallquis Cuffs +2",
		legs="Mallquis Trews +2",
		feet="Mallquis Clogs +2",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Freke Ring",
		right_ring="Mallquis Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
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
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Pedagogy Gown +3",
		hands="",
		neck="Melic Torque",
		waist="Olympus Sash",
		left_ear="Augment. Earring",
		right_ear="Andoaa Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 2"},
		back="Perimede Cape",	
	}
	sets.buffGearDuration = {
		main="Musa",
		body="Pedagogy Gown +3",
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		body="Telchine Chasuble",
		legs="Telchine Braconi",
		feet="Telchine Pigaches",
		waist="Embla Sash",
	}
	
	sets.precastWS = {
		ammo="Amar Cluster",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Sanctity Necklace",
		waist="Fotia Belt",
		left_ear="Steelflash Earring",
		right_ear="Telos Earring",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Haste+10','Phys. dmg. taken-10%',}},
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
		ear1="Friomisi Earring",
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
		head={ name="Merlinic Hood", augments={'Mag. Acc.+24','"Drain" and "Aspir" potency +11','"Mag.Atk.Bns."+4',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+30','"Drain" and "Aspir" potency +8','STR+7',}},
		legs="Spaekona's Tonban +3",
		ring1="Evanescence Ring",
		waist="Fucho-no-Obi"
	}

	sets.drainGear = {
		head="Pixie Hairpin +1",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+30','"Drain" and "Aspir" potency +8','STR+7',}},
		ring1="Evanescence Ring",
		ring2="Archon Ring",
		waist="Fucho-no-Obi"
	}

	sets.cureGear = {
		main="Daybreak",
		sub="Genmei shield",
		ammo="Staunch Tathlum +1",
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

	sets.precast.WS = sets.precastWS;
	
	sets.precast.WS['Shattersoul'] = sets.precastWSIntGear
	sets.precast.WS['Rock Crusher'] = sets.magicPrecastWSGear
	sets.precast.WS['Earth Crusher'] = sets.magicPrecastWSGear
	sets.precast.WS['Starburst'] = sets.magicPrecastWSGear
	sets.precast.WS['Sunburst'] = sets.magicPrecastWSGear
	sets.precast.WS['Vidohunir'] = sets.magicPrecastWSGear
	sets.precast.WS['Cataclysm'] = sets.magicPrecastWSGear
	sets.precast.WS['Myrkr'] = sets.maxMP

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
		waist="Acuity Belt +1",
		legs="Amalric Slops +1",
    	feet="Arch. Sabots +3"
	}

	sets.midcast.Cure = sets.cureGear

	sets.midcast["Sandstorm II"] = sets.buffGearDuration;
	sets.midcast["Rainstorm II"] = sets.buffGearDuration;
	sets.midcast["Windstorm II"] = sets.buffGearDuration;
	sets.midcast["Firestorm II"] = sets.buffGearDuration;
	sets.midcast["Hailstorm II"] = sets.buffGearDuration;
	sets.midcast["Thunderstorm II"] = sets.buffGearDuration;
	sets.midcast["Voidstorm II"] = sets.buffGearDuration;
	sets.midcast["Aurorastorm II"] = sets.buffGearDuration;

	sets.midcast["Animus Minuo"] = sets.buffGearDuration;
	sets.midcast["Animus Augeo"] = sets.buffGearDuration;



	sets.midcast.Regen = set_combine(sets.buffGearDuration, {
		main="Musa",
		head="Arbatel Bonnet +1",
		neck="Incanter's Torque",
		body="Telchine Chasuble",
		hands="Arbatel Bracers +1",
		legs="Telchine Braconi",
		feet="Telchine Pigaches",
		back="Bookworm's Cape"
	})

	sets.midcast["Rainstorm II"] = sets.buffGearDuration

	sets.midcast['Blink'] = sets.buffGear
	sets.midcast['Stoneskin'] = sets.buffGear
	sets.midcast['Aquaveil'] = set_combine(sets.buffGear, {hands="Regal Cuffs", head="Amalric Coif +1", waist="Emphatikos rope", feet="Amalric Nails +1"})
	sets.midcast['Refresh'] = set_combine(sets.buffGear, {head="Amalric Coif +1"})
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Phalanx'] = set_combine(sets.buffGearDuration, sets.buffGear, {
		head={ name="Merlinic Hood", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','"Fast Cast"+1','Phalanx +3',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23','DEX+2','Phalanx +3','Accuracy+8 Attack+8',}},
		hands={ name="Merlinic Dastanas", augments={'INT+2','"Dbl.Atk."+4','Phalanx +3','Accuracy+10 Attack+10',}},
		body={ name="Merlinic Jubbah", augments={'Crit.hit rate+1','Pet: AGI+1','Phalanx +4','Accuracy+13 Attack+13','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		feet={ name="Merlinic Crackows", augments={'"Cure" potency +3%','Pet: STR+7','Phalanx +4','Accuracy+8 Attack+8','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
		waist="Embla Sash",
	})
	sets.midcast['Blaze Spikes'] = sets.buffGear
	sets.midcast['Ice Spikes'] = sets.buffGear
	
	sets.midcast['Curaga'] = sets.cureGear
	sets.midcast['Curaga II'] = sets.cureGear

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

	sets.midcast['Embrava'] = sets.buffGearDuration
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


	sets.midcast['Haste'] = sets.buffGearDuration
	sets.midcast['Flurry'] = sets.buffGearDuration

	sets.midcast['Comet'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})

	sets.midcast['Death'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		body="Amalric Doublet +1",
		feet="Amalric Nails +1",
		ring1="Mephitas's Ring",
		ring2="Archon Ring",
	})
	
	sets.midcast['Meteor'] = sets.nukeGear
	sets.midcast['Drain'] = sets.enfeebleGear
	sets.midcast['Silence'] = sets.enfeebleGear
	sets.midcast['Holy'] = sets.lowTierNukeGear
	sets.midcast['Banish'] = sets.lowTierNukeGear
	sets.midcast['Banish II'] = sets.lowTierNukeGear

	sets.midcast['Stone'] = sets.lowTierNukeGear
	sets.midcast['Stone II'] = sets.lowTierNukeGear
	sets.midcast['Stone III'] = sets.nukeGear
	sets.midcast['Stone IV'] = sets.nukeGear
	sets.midcast['Stone V'] = sets.nukeGear
	sets.midcast['Stone VI'] = sets.nukeGear
	sets.midcast['Stonega'] = sets.lowTierNukeGear
	sets.midcast['Stonega II'] = sets.lowTierNukeGear
	sets.midcast['Stonega III'] = sets.nukeGear
	sets.midcast['Stoneja'] = sets.nukeGear
	
	sets.midcast['Water'] = sets.lowTierNukeGear
	sets.midcast['Water II'] = sets.lowTierNukeGear
	sets.midcast['Water III'] = sets.nukeGear
	sets.midcast['Water IV'] = sets.nukeGear
	sets.midcast['Water V'] = sets.nukeGear
	sets.midcast['Water VI'] = sets.nukeGear
	sets.midcast['Waterga'] = sets.lowTierNukeGear
	sets.midcast['Waterga II'] = sets.lowTierNukeGear
	sets.midcast['Waterga III'] = sets.nukeGear
	sets.midcast['Waterja'] = sets.nukeGear
	
	sets.midcast['Aero'] = sets.lowTierNukeGear
	sets.midcast['Aero II'] = sets.lowTierNukeGear
	sets.midcast['Aero III'] = sets.nukeGear
	sets.midcast['Aero IV'] = sets.nukeGear
	sets.midcast['Aero V'] = sets.nukeGear
	sets.midcast['Aero VI'] = sets.nukeGear
	sets.midcast['Aeroga'] = sets.lowTierNukeGear
	sets.midcast['Aeroga II'] = sets.lowTierNukeGear
	sets.midcast['Aeroga III'] = sets.nukeGear
	sets.midcast['Aeroja'] = sets.nukeGear
	
	sets.midcast['Fire'] = sets.lowTierNukeGear
	sets.midcast['Fire II'] = sets.lowTierNukeGear
	sets.midcast['Fire III'] = sets.nukeGear
	sets.midcast['Fire IV'] = sets.nukeGear
	sets.midcast['Fire V'] = sets.nukeGear
	sets.midcast['Fire VI'] = sets.nukeGear
	sets.midcast['Firaga'] = sets.lowTierNukeGear
	sets.midcast['Firaga II'] = sets.lowTierNukeGear
	sets.midcast['Firaga III'] = sets.nukeGear
	sets.midcast['Firaja'] = sets.nukeGear
	
	sets.midcast['Blizzard'] = sets.lowTierNukeGear
	sets.midcast['Blizzard II'] = sets.lowTierNukeGear
	sets.midcast['Blizzard III'] = sets.nukeGear
	sets.midcast['Blizzard IV'] = sets.nukeGear
	sets.midcast['Blizzard V'] = sets.nukeGear
	sets.midcast['Blizzard VI'] = sets.nukeGear
	sets.midcast['Blizzaga'] = sets.lowTierNukeGear
	sets.midcast['Blizzaga II'] = sets.lowTierNukeGear
	sets.midcast['Blizzaga III'] = sets.nukeGear
	sets.midcast['Blizzaja'] = sets.nukeGear
	
	sets.midcast['Thunder'] = sets.lowTierNukeGear
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

	sets.midcast['Geohelix'] = sets.lowTierNukeGear
	sets.midcast['Hydrohelix'] = sets.lowTierNukeGear
	sets.midcast['Anemohelix'] = sets.lowTierNukeGear
	sets.midcast['Pyrohelix'] = sets.lowTierNukeGear
	sets.midcast['Cryohelix'] = sets.lowTierNukeGear
	sets.midcast['Ionohelix'] = sets.lowTierNukeGear
	sets.midcast['Noctohelix'] = set_combine(sets.lowTierNukeGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
	})
	sets.midcast['Luminohelix'] = set_combine(sets.lowTierNukeGear, {
		main="Daybreak",
	})
	sets.midcast['Geohelix II'] = sets.lowTierNukeGear
	sets.midcast['Hydrohelix II'] = sets.lowTierNukeGear
	sets.midcast['Anemohelix II'] = sets.lowTierNukeGear
	sets.midcast['Pyrohelix II'] = sets.lowTierNukeGear
	sets.midcast['Cryohelix II'] = sets.lowTierNukeGear
	sets.midcast['Ionohelix II'] = sets.lowTierNukeGear
	sets.midcast['Noctohelix II'] = set_combine(sets.lowTierNukeGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
	})
	sets.midcast['Luminohelix II'] = set_combine(sets.lowTierNukeGear, {
		main="Daybreak",
	})
	sets.midcast['Kaustra'] = set_combine(sets.lowTierNukeGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring",
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
		main="Malignance Pole",
		sub="Kaja Grip",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Warder's charm",
		waist="Carrier's Sash",
		left_ear="Dominance Earring",
		right_ear="Genmei Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back={ name="Lugh's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity-10','Mag. Evasion+15',}},
	}
	
	sets.manaWall = {
		--back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		feet="Wicce Sabots +1"
	}
	
	
	sets.magic_burst = {
		hands="Amalric Gages +1",
		legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+26','Magic burst dmg.+8%','INT+10',}},
		ring2="Mujin Band"
	}

end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.skill == 'Enfeebling Magic' then
		equip({hands="Regal Cuffs"});
	end

	if spell.skill == 'Elemental Magic' and (buffactive['Manawell'] == 1 or buffactive['Manafont']) then
		equip({body="Amalric Doublet +1"})
	end

	if spell.skill == 'Enhancing Magic' and (buffactive['Accession']) then
		--equip(set_combine(sets.buffGearDuration, sets.buffGear))
	end

	if spell.skill == 'Elemental Magic' and (state.OffenseMode.value == 'MB') then
		equip(sets.magic_burst)
	end
	
	if spell.skill == 'Elemental Magic' and state.OffenseMode.value == 'VagaryMBNoKill' then 
		equip({
			main="Malignance Pole",
			sub="Niobid Strap",
			ammo="Pemphredo Tathlum",
			head="Mall. Chapeau +2",
			body="Mallquis Saio +2",
			hands="Mallquis Cuffs +2",
			legs="Jhakri Slops +2",
			feet="Mallquis Clogs +2",
			neck="Sanctity Necklace",
			waist="Acuity Belt +1",
			left_ear="Malignance Earring",
			right_ear="Genmei Earring",
			left_ring="Gelatinous Ring",
			right_ring="Defending Ring",
			back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
		})
		
		if buffactive['Immanence'] == 1 then
			equip({
				ammo="Pemphredo Tathlum",
				head="Nahtirah Hat",
				body="Arbatel Gown",
				hands="Arbatel Bracers +1",
				legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+26','Magic burst dmg.+8%','INT+10',}},
				feet="Herald's Gaiters",
				neck="Loricate Torque +1",
				waist="Carrier's Sash",
				left_ear="Dominance Earring",
				right_ear="Genmei Earring",
				left_ring="Gelatinous Ring",
				right_ring="Defending Ring",
				back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
			})
		end
	end

	if buffactive['Perpetuance'] == 1 then
		equip({
			hands="Arbatel bracers +1"
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