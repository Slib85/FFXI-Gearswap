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
    
	state.OffenseMode:options('Normal', 'Extra Song');
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
--	
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
		range="Gjallarhorn",
		head="Fili Calot +1",
		body="Zendik Robe",
		neck="Orunmila's Torque",
		left_ear="Etiolation Earring",
		left_ring="Kishar Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+7','"Fast Cast"+10',}},
	}

	sets.songGear = {
        -- main={ name="Kali", augments={'DMG:+15','CHR+15','Mag. Acc.+15',}},
        -- sub="Ammurapi Shield",
        head="Fili Calot +1",
        body="Fili Hongreline +1",
        hands="Fili Manchettes +1",
        legs="Fili Rhingrave +1",
        feet="Brioso Slippers +2",
        neck="Mnbw. Whistle +1",
        waist="Porous Rope",
        left_ear="Dominance Earring",
        right_ear="Genmei Earring",
        left_ring="Gelatinous Ring",
        right_ring="Defending Ring",
        back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+7','"Fast Cast"+10',}},
    }
		
	
	sets.lowTierNukeGear = {

	}
		
	sets.occultAcumenGear = {
		
	}
	
	sets.nukeGear = {
		
	}

	sets.enfeebleGear = {
		
	}

	-- Precast sets to enhance JAs
	sets.precast.JA['Mana Wall'] = {

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
		back={ name="Taranus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Haste+10',}},
	}

	sets.buffGear = {

	}
	
	sets.precastWS = {
		
	}

	sets.precastWSIntGear = {
		
	}

	sets.magicPrecastWSGear = {
		
	}
	
	sets.maxMP = {
		
	}

	sets.aspirGear = {
		
	}

	sets.drainGear = {
		
	}

	sets.cureGear = {
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
	
	sets.precast.WS['Rock Crusher'] = sets.magicPrecastWSGear
	sets.precast.WS['Earth Crusher'] = sets.magicPrecastWSGear
	sets.precast.WS['Starburst'] = sets.magicPrecastWSGear
	sets.precast.WS['Sunburst'] = sets.magicPrecastWSGear
	sets.precast.WS['Vidohunir'] = sets.magicPrecastWSGear
	sets.precast.WS['Cataclysm'] = sets.magicPrecastWSGear
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

	sets.midcast.Cure = sets.cureGear

	sets.midcast["Foe Requiem"] = sets.songGear
	sets.midcast["Foe Requiem II"] = sets.songGear
	sets.midcast["Foe Requiem III"] = sets.songGear
	sets.midcast["Foe Requiem IV"] = sets.songGear
	sets.midcast["Foe Requiem V"] = sets.songGear
	sets.midcast["Foe Requiem VI"] = sets.songGear
	sets.midcast["Army's Paeon"] = sets.songGear
	sets.midcast["Army's Paeon II"] = sets.songGear
	sets.midcast["Army's Paeon III"] = sets.songGear
	sets.midcast["Army's Paeon IV"] = sets.songGear
	sets.midcast["Army's Paeon V"] = sets.songGear
	sets.midcast["Army's Paeon VI"] = sets.songGear
	sets.midcast["Horde Lullaby"] = sets.songGear
	sets.midcast["Horde Lullaby II"] = sets.songGear
	sets.midcast["Mage's Ballad"] = sets.songGear
	sets.midcast["Mage's Ballad II"] = sets.songGear
	sets.midcast["Mage's Ballad III"] = sets.songGear
	sets.midcast["Knight's Minne"] = set_combine(sets.songGear, {legs="Mousai Seraweels"})
	sets.midcast["Knight's Minne II"] = set_combine(sets.songGear, {legs="Mousai Seraweels"})
	sets.midcast["Knight's Minne III"] = set_combine(sets.songGear, {legs="Mousai Seraweels"})
	sets.midcast["Knight's Minne IV"] = set_combine(sets.songGear, {legs="Mousai Seraweels"})
	sets.midcast["Knight's Minne V"] = set_combine(sets.songGear, {legs="Mousai Seraweels"})
	sets.midcast["Valor Minuet"] = sets.songGear
	sets.midcast["Valor Minuet II"] = sets.songGear
	sets.midcast["Valor Minuet III"] = sets.songGear
	sets.midcast["Valor Minuet IV"] = sets.songGear
	sets.midcast["Valor Minuet V"] = sets.songGear
	sets.midcast["Sword Madrigal"] = sets.songGear
	sets.midcast["Blade Madrigal"] = sets.songGear
	sets.midcast["Hunter's Prelude"] = sets.songGear
	sets.midcast["Archer's Prelude"] = sets.songGear
	sets.midcast["Sheepfoe Mambo"] = sets.songGear
	sets.midcast["Dragonfoe Mambo"] = sets.songGear
	sets.midcast["Fowl Aubade"] = sets.songGear
	sets.midcast["Herb Pastoral"] = sets.songGear
	sets.midcast["Shining Fantasia"] = sets.songGear
	sets.midcast["Puppet's Operetta"] = sets.songGear
	sets.midcast["Gold Capriccio"] = sets.songGear
	sets.midcast["Warding Round"] = sets.songGear
	sets.midcast["Advancing March"] = sets.songGear
	sets.midcast["Victory March"] = sets.songGear
	sets.midcast["Magic Finale"] = sets.songGear
	sets.precast.FC['Honor March'] = set_combine(sets.precast.FC, {range="Marsyas"})
	sets.midcast["Honor March"] = sets.songGear
	sets.midcast["Battlefield Elegy"] = sets.songGear
	sets.midcast["Carnage Elegy"] = sets.songGear
	sets.midcast["Sinewy Etude"] = sets.songGear
	sets.midcast["Dextrous Etude"] = sets.songGear
	sets.midcast["Vivacious Etude"] = sets.songGear
	sets.midcast["Quick Etude"] = sets.songGear
	sets.midcast["Learned Etude"] = sets.songGear
	sets.midcast["Sage Etude"] = sets.songGear
	sets.midcast["Spirited Etude"] = sets.songGear
	sets.midcast["Enchanting Etude"] = sets.songGear
	sets.midcast["Herculean Etude"] = sets.songGear
	sets.midcast["Uncanny Etude"] = sets.songGear
	sets.midcast["Vital Etude"] = sets.songGear
	sets.midcast["Bewitching Etude"] = sets.songGear
	sets.midcast["Fire Carol"] = sets.songGear
	sets.midcast["Fire Carol II"] = sets.songGear
	sets.midcast["Ice Carol"] = sets.songGear
	sets.midcast["Ice Carol II"] = sets.songGear
	sets.midcast["Wind Carol"] = sets.songGear
	sets.midcast["Wind Carol II"] = sets.songGear
	sets.midcast["Earth Carol"] = sets.songGear
	sets.midcast["Earth Carol II"] = sets.songGear
	sets.midcast["Lightning Carol"] = sets.songGear
	sets.midcast["Lightning Carol II"] = sets.songGear
	sets.midcast["Water Carol"] = sets.songGear
	sets.midcast["Water Carol II"] = sets.songGear
	sets.midcast["Light Carol"] = sets.songGear
	sets.midcast["Light Carol II"] = sets.songGear
	sets.midcast["Dark Carol"] = sets.songGear
	sets.midcast["Dark Carol II"] = sets.songGear
	sets.midcast["Fire Threnody"] = sets.songGear
	sets.midcast["Fire Threnody II"] = sets.songGear
	sets.midcast["Ice Threnody"] = sets.songGear
	sets.midcast["Ice Threnody II"] = sets.songGear
	sets.midcast["Wind Threnody"] = sets.songGear
	sets.midcast["Wind Threnody II"] = sets.songGear
	sets.midcast["Earth Threnody"] = sets.songGear
	sets.midcast["Earth Threnody II"] = sets.songGear
	sets.midcast["Ltng. Threnody"] = sets.songGear
	sets.midcast["Ltng. Threnody II"] = sets.songGear
	sets.midcast["Water Threnody"] = sets.songGear
	sets.midcast["Water Threnody II"] = sets.songGear
	sets.midcast["Light Threnody"] = sets.songGear
	sets.midcast["Light Threnody II"] = sets.songGear
	sets.midcast["Dark Threnody"] = sets.songGear
	sets.midcast["Dark Threnody II"] = sets.songGear
	sets.midcast["Goddess's Hymnus"] = sets.songGear
	sets.midcast["Raptor Mazurka"] = sets.songGear
	sets.midcast["Chocobo Mazurka"] = sets.songGear
	sets.midcast["Maiden's Virelai"] = sets.songGear
	sets.midcast["Sentinel's Scherzo"] = sets.songGear
	sets.midcast["Pining Nocturne"] = sets.songGear


	sets.midcast['Blink'] = sets.buffGear
	sets.midcast['Stoneskin'] = sets.buffGear
	sets.midcast['Aquaveil'] = set_combine(sets.buffGear, {hands="Regal Cuffs", head="Amalric Coif +1", waist="Emphatikos rope", feet="Amalric Nails +1"})
	sets.midcast['Refresh'] = set_combine(sets.buffGear, {head="Amalric Coif +1"})
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Phalanx'] = set_combine(sets.buffGear, {
		legs={ name="Merlinic Shalwar", augments={'Potency of "Cure" effect received+1%','Pet: "Mag.Atk.Bns."+28','Phalanx +2',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Enmity+4','Phalanx +2','Mag. Acc.+18 "Mag.Atk.Bns."+18',}},
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
		head="Aya. Zucchetto +1",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +1",
		legs="Aya. Cosciales +2",
		--feet="Aya. Gambieras +1",
		feet="Fili Cothurnes +1",
		neck="Loricate Torque +1",
		neck="Bard's Charm +2",
		waist="Anguinus Belt",
		left_ear="Dominance Earring",
		right_ear="Genmei Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.precast.JA['Nightingale'] = {
		feet="Bihu Slippers +1",
	}

	sets.precast.JA['Troubadour'] = {
		body="Bihu Jstcorps. +3",
	}
	sets.precast.JA['Soul Voice'] = {
		legs="Bihu Cannions +1",
	}
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == 'Extra Song' then
		equip({range="Daurdabla"})
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