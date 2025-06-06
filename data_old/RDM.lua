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
--function user_setup()
--	state.OffenseMode:options('None', 'Normal')
--	state.CastingMode:options('Normal', 'Resistant', 'Proc')
--	state.IdleMode:options('Normal', 'PDT')
--	
--	state.MagicBurst = M(false, 'Magic Burst')
--	
--	lowTierNukes = S{'Stone', 'Water', 'Aero', 'Fire', 'Blizzard', 'Thunder',
--		'Stone II', 'Water II', 'Aero II', 'Fire II', 'Blizzard II', 'Thunder II',
--		'Stone III', 'Water III', 'Aero III', 'Fire III', 'Blizzard III', 'Thunder III',
--		'Stonega', 'Waterga', 'Aeroga', 'Firaga', 'Blizzaga', 'Thundaga',
--		'Stonega II', 'Waterga II', 'Aeroga II', 'Firaga II', 'Blizzaga II', 'Thundaga II'}
--	
--	gear.macc_hagondes = {name="Hagondes Cuffs", augments={'Phys. dmg. taken -3%','Mag. Acc.+29'}}
--	
--	-- Additional local binds
--	send_command('bind ^` input /ma Stun <t>')
--	send_command('bind @` gs c activate MagicBurst')
--	
--	select_default_macro_book()
--end

-- Called when this job file is unloaded (eg: job change)
function user_unload()
	send_command('unbind ^`')
	send_command('unbind @`')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- //gs export           to get current set
	
	---- Precast Sets ----
	precastGear = {
		ammo = "Witchstone",
		head = "Nahtirah Hat",
		body = "Twilight Torque",
		ear1 = "Mendi. Earring",
		ear2 = "Nourish. Earring +1",
		body = "Anhur Robe",
		hands = {
			name = "Chironic Gloves",
			augments = {
				'Mag. Acc.+23 "Mag.Atk.Bns."+23',
				'"Fast Cast"+1',
				'"Mag.Atk.Bns."+10'
			}
		},
		ring1 = "Dark Ring",
		ring2 = "Meridian Ring",
		waist = "Grunfeld Rope",
		legs = "Gyve Trousers",
		feet = "Chelona Boots +1"
	}
	
	cureGear = {
		ammo = "Witchstone",
		head = "Vanya Hood",
		neck = "Twilight Torque",
		ear1 = "Mendi. Earring",
		ear2 = "Nourish. Earring +1",
		body = "Ebers Bliaud",
		hands = {
			name = "Chironic Gloves",
			augments = {
				'Mag. Acc.+23 "Mag.Atk.Bns."+23',
				'"Fast Cast"+1',
				'"Mag.Atk.Bns."+10'
			}
		},
		ring1 = "Dark Ring",
		ring2 = "Meridian Ring",
		back = "Alaunus's Cape",
		waist = "Wanion Belt",
		legs = "Ebers Pantaloons",
		feet = "Vanya Clogs"
	}
	
	nukeGear = {
		ammo = "Witchstone",
		head = { 
			name = "Chironic Hat", 
			augments = {
				'Mag. Acc.+22 "Mag.Atk.Bns."+22',
				'Mag. Acc.+13',
				'"Mag.Atk.Bns."+1'
			}
		},
		neck = "Sanctity Necklace",
		ear1 = "Strophadic Earring",
		ear2 = "Hecate's Earring",
		body = "Artsieq Jubbah",
		hands = {
			name = "Chironic Gloves",
			augments = {
				'Mag. Acc.+23 "Mag.Atk.Bns."+23',
				'"Fast Cast"+1',
				'"Mag.Atk.Bns."+10'
			}
		},
		ring1 = "Icesoul Ring",
		ring2 = "Diamond Ring",
		back = "Alaunus's Cape",
		waist = "Eschan Stone",
		legs = {
			name = "Chironic Hose",
			augments = {
				'"Mag.Atk.Bns."+29',
				'"Cure" potency +1%',
				'AGI+4',
				'Mag. Acc.+10'
			}
		},
		feet = {
			name = "Chironic Slippers",
			augments = {
				'"Mag.Atk.Bns."+30',
				'"Conserve MP"+6',
				'MND+13',
				'Mag. Acc.+12'
			}
		}
	}
	
	buffGear = {
		ammo = "Witchstone",
		head = "Umuthi Hat",
		neck = "Sanctity Necklace",
		ear1 = "Strophadic Earring",
		ear2 = "Hecate's Earring",
		body = "Artsieq Jubbah",
		hands = {
			name = "Chironic Gloves",
			augments = {
				'Mag. Acc.+23 "Mag.Atk.Bns."+23',
				'"Fast Cast"+1',
				'"Mag.Atk.Bns."+10'
			}
		},
		ring1 = "Icesoul Ring",
		ring2 = "Diamond Ring",
		back = "Alaunus's Cape",
		waist = "Eschan Stone",
		legs = "Portent Pants",
		feet = "Ebers Duckbills"
	}
	
	enfeebleGear = {
		ammo = "Witchstone",
		head = { 
			name = "Chironic Hat", 
			augments = {
				'Mag. Acc.+22 "Mag.Atk.Bns."+22',
				'Mag. Acc.+13',
				'"Mag.Atk.Bns."+1'
			}
		},
		neck = "Sanctity Necklace",
		ear1 = "Strophadic Earring",
		ear2 = "Hecate's Earring",
		body = "Artsieq Jubbah",
		hands = {
			name = "Chironic Gloves",
			augments = {
				'Mag. Acc.+23 "Mag.Atk.Bns."+23',
				'"Fast Cast"+1',
				'"Mag.Atk.Bns."+10'
			}
		},
		ring1 = "Icesoul Ring",
		ring2 = "Diamond Ring",
		back = "Alaunus's Cape",
		waist = "Eschan Stone",
		legs = {
			name = "Chironic Hose",
			augments = {
				'"Mag.Atk.Bns."+29',
				'"Cure" potency +1%',
				'AGI+4',
				'Mag. Acc.+10'
			}
		},
		feet = {
			name = "Chironic Slippers",
			augments = {
				'"Mag.Atk.Bns."+30',
				'"Conserve MP"+6',
				'MND+13',
				'Mag. Acc.+12'
			}
		}
	}
	-- Precast sets to enhance JAs
	--sets.precast.JA['Mana Wall'] = {
	--	feet="Goetia Sabots +2"
	--}
	
	
	-- sets.precast.JA.Manafont = {body="Sorcerer's Coat +2"}
	
	-- equip to maximize HP (for Tarus) and minimize MP loss before using convert
	
	
	-- Fast cast sets for spells
	sets.precast.FC = precastGear
	                          
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
	
--sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {waist="Siegel Sash"})
--sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {neck="Stoicheion Medal"})
	sets.precast.FC.Cure = set_combine(
		sets.precast.FC, {
			body = "Heka's Kalasiris",
		}
	)
	
	sets.midcast['Aquaveil'] = set_combine(
		sets.midcast['Aquaveil'], {
			head = "Chironic Hat"	
		}
	)
--sets.precast.FC.Curaga = sets.precast.FC.Cure
--
---- Weaponskill sets
---- Default set for any weaponskill that isn't any more specifically defined
--sets.precast.WS = {
--head="Hagondes Hat",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Rajas Ring",ring2="Icesoul Ring",
--back="Refraction Cape",waist="Cognition Belt",legs="Hagondes Pants",feet="Hagondes Sabots"
--}
--
---- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
--sets.precast.WS['Vidohunir'] = {
--ammo="Dosis Tathlum",
--head="Hagondes Hat",neck="Eddy Necklace",ear1="Friomisi Earring",ear2="Hecate's Earring",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Acumen Ring",
--back="Toro Cape",waist="Thunder Belt",legs="Hagondes Pants",feet="Hagondes Sabots"
--}
--
--
------ Midcast Sets ----
--
--sets.midcast.FastRecast = {
--head="Nahtirah Hat",ear2="Loquacious Earring",
--body="Vanir Cotehardie",hands="Bokwus Gloves",ring1="Prolix Ring",
--back="Swith Cape +1",waist="Goading Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
--
--sets.midcast.Cure = {main="Tamaxchi",sub="Genbu's Shield",
--head="Nahtirah Hat",neck="Colossus's Torque",ear2="Loquacious Earring",
--body="Heka's Kalasiris",hands="Bokwus Gloves",ring1="Ephedra Ring",ring2="Sirona's Ring",
--back="Pahtli Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Hagondes Sabots"}
--
--sets.midcast.Curaga = sets.midcast.Cure
--
--sets.midcast['Enhancing Magic'] = {
--neck="Colossus's Torque",
--body="Manasa Chasuble",hands="Ayao's Gages",
--legs="Portent Pants"}
--
--sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {waist="Siegel Sash"})
--
--sets.midcast['Enfeebling Magic'] = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Sturm's Report",
--head="Nahtirah Hat",neck="Weike Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
--body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
--back="Refraction Cape",legs="Bokwus Slops",feet="Bokwus Boots"}
--
--sets.midcast.ElementalEnfeeble = sets.midcast['Enfeebling Magic']
--
--sets.midcast['Dark Magic'] = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Sturm's Report",
--head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
--body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
--back="Refraction Cape",waist="Goading Belt",legs="Bokwus Slops",feet="Bokwus Boots"}
--
--sets.midcast.Drain = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Sturm's Report",
--head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
--body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Excelsis Ring",ring2="Sangoma Ring",
--back="Refraction Cape",waist="Fucho-no-Obi",legs="Bokwus Slops",feet="Goetia Sabots +2"}
--
--sets.midcast.Aspir = sets.midcast.Drain
--
--sets.midcast.Stun = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Sturm's Report",
--head="Nahtirah Hat",neck="Weike Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
--back="Refraction Cape",waist="Witful Belt",legs="Orvail Pants +1",feet="Bokwus Boots"}
--
--sets.midcast.BardSong = {main="Lehbrailg +2",sub="Mephitis Grip",ammo="Sturm's Report",
--head="Nahtirah Hat",neck="Weike Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
--body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
--back="Refraction Cape",legs="Bokwus Slops",feet="Bokwus Boots"}
--
--
---- Elemental Magic sets
--
--sets.midcast['Elemental Magic'] = {main="Lehbrailg +2",sub="Zuuxowu Grip",ammo="Dosis Tathlum",
--head="Hagondes Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Acumen Ring",
--back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Hagondes Sabots"}
--
--sets.midcast['Elemental Magic'].Resistant = {main="Lehbrailg +2",sub="Zuuxowu Grip",ammo="Dosis Tathlum",
--head="Hagondes Hat",neck="Eddy Necklace",ear1="Hecate's Earring",ear2="Friomisi Earring",
--body="Hagondes Coat",hands=gear.macc_hagondes,ring1="Icesoul Ring",ring2="Acumen Ring",
--back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Bokwus Boots"}
--
--sets.midcast['Elemental Magic'].HighTierNuke = set_combine(sets.midcast['Elemental Magic'], {sub="Wizzan Grip"})
--sets.midcast['Elemental Magic'].HighTierNuke.Resistant = set_combine(sets.midcast['Elemental Magic'], {sub="Wizzan Grip"})
--
--
---- Minimal damage gear for procs.
--sets.midcast['Elemental Magic'].Proc = {main="Earth Staff", sub="Mephitis Grip",ammo="Impatiens",
--head="Nahtirah Hat",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
--body="Manasa Chasuble",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
--back="Swith Cape +1",waist="Witful Belt",legs="Nares Trews",feet="Chelona Boots +1"}
--
--
--
---- Sets to return to when not performing an action.
--
---- Resting sets
--sets.resting = {main="Chatoyant Staff",ammo="Clarus Stone",
--head="Nefer Khat +1",neck="Grandiose Chain",
--body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
--waist="Austerity Belt",legs="Nares Trews",feet="Serpentes Sabots"}
--
--
---- Idle sets
--
---- Normal refresh idle set
--sets.idle = {main="Lehbrailg +2", sub="Zuuxowu Grip",ammo="Impatiens",
--head="Nefer Khat +1",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
--body="Heka's Kalasiris",hands="Serpentes Cuffs",ring1="Sheltered Ring",ring2="Paguroidea Ring",
--back="Umbra Cape",waist="Hierarch Belt",legs="Nares Trews",feet="Herald's Gaiters"}
--
---- Idle mode that keeps PDT gear on, but doesn't prevent normal gear swaps for precast/etc.
--sets.idle.PDT = {main="Earth Staff", sub="Zuuxowu Grip",ammo="Impatiens",
--head="Nahtirah Hat",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Defending Ring",ring2=gear.DarkRing.physical,
--back="Umbra Cape",waist="Hierarch Belt",legs="Hagondes Pants",feet="Herald's Gaiters"}
--
---- Idle mode scopes:
---- Idle mode when weak.
--sets.idle.Weak = {main="Bolelabunga",sub="Genbu's Shield",ammo="Impatiens",
--head="Hagondes Hat",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Defending Ring",ring2="Paguroidea Ring",
--back="Umbra Cape",waist="Hierarch Belt",legs="Nares Trews",feet="Hagondes Sabots"}
--
---- Town gear.
--sets.idle.Town = {main="Lehbrailg +2", sub="Zuuxowu Grip",ammo="Impatiens",
--head="Hagondes Hat",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Sheltered Ring",ring2="Paguroidea Ring",
--back="Umbra Cape",waist="Hierarch Belt",legs="Hagondes Pants",feet="Herald's Gaiters"}
--
---- Defense sets
--
--sets.defense.PDT = {main="Earth Staff",sub="Zuuxowu Grip",
--head="Nahtirah Hat",neck="Twilight Torque",
--body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Defending Ring",ring2=gear.DarkRing.physical,
--back="Umbra Cape",waist="Hierarch Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
--
--sets.defense.MDT = {ammo="Demonry Stone",
--head="Nahtirah Hat",neck="Twilight Torque",
--body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Defending Ring",ring2="Shadow Ring",
--back="Tuilha Cape",waist="Hierarch Belt",legs="Bokwus Slops",feet="Hagondes Sabots"}
--
--sets.Kiting = {feet="Herald's Gaiters"}
--
--sets.latent_refresh = {waist="Fucho-no-obi"}
--
---- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
--
--sets.buff['Mana Wall'] = {feet="Goetia Sabots +2"}
--
--sets.magic_burst = {neck="Mizukage-no-Kubikazari"}
--
---- Engaged sets
--
---- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
---- sets if more refined versions aren't defined.
---- If you create a set with both offense and defense modes, the offense mode should be first.
---- EG: sets.engaged.Dagger.Accuracy.Evasion
--
---- Normal melee group
--sets.engaged = {
--head="Zelus Tiara",neck="Asperity Necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
--body="Hagondes Coat",hands="Bokwus Gloves",ring1="Rajas Ring",ring2="K'ayres Ring",
--back="Umbra Cape",waist="Goading Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}
end

---------------------------------------------------------------------------------------------------------------------
---- Job-specific hooks for standard casting events.
---------------------------------------------------------------------------------------------------------------------
--
---- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
---- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
--function job_precast(spell, action, spellMap, eventArgs)
--    if spellMap == 'Cure' or spellMap == 'Curaga' then
--        gear.default.obi_waist = "Goading Belt"
--    elseif spell.skill == 'Elemental Magic' then
--        gear.default.obi_waist = "Sekhmet Corset"
--        if state.CastingMode.value == 'Proc' then
--            classes.CustomClass = 'Proc'
--        end
--    end
--end
--
--
---- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
--function job_midcast(spell, action, spellMap, eventArgs)
--
--end
--
--function job_post_midcast(spell, action, spellMap, eventArgs)
--    if spell.skill == 'Elemental Magic' and state.MagicBurst.value then
--        equip(sets.magic_burst)
--    end
--end
--
--function job_aftercast(spell, action, spellMap, eventArgs)
--    -- Lock feet after using Mana Wall.
--    if not spell.interrupted then
--        if spell.english == 'Mana Wall' then
--            enable('feet')
--            equip(sets.buff['Mana Wall'])
--            disable('feet')
--        elseif spell.skill == 'Elemental Magic' then
--            state.MagicBurst:reset()
--        end
--    end
--end
--
---------------------------------------------------------------------------------------------------------------------
---- Job-specific hooks for non-casting events.
---------------------------------------------------------------------------------------------------------------------
--
---- Called when a player gains or loses a buff.
---- buff == buff gained or lost
---- gain == true if the buff was gained, false if it was lost.
--function job_buff_change(buff, gain)
--    -- Unlock feet when Mana Wall buff is lost.
--    if buff == "Mana Wall" and not gain then
--        enable('feet')
--        handle_equipping_gear(player.status)
--    end
--end
--
---- Handle notifications of general user state change.
--function job_state_change(stateField, newValue, oldValue)
--    if stateField == 'Offense Mode' then
--        if newValue == 'Normal' then
--            disable('main','sub','range')
--        else
--            enable('main','sub','range')
--        end
--    end
--end
--
--
---------------------------------------------------------------------------------------------------------------------
---- User code that supplements standard library decisions.
---------------------------------------------------------------------------------------------------------------------
--
---- Custom spell mapping.
--function job_get_spell_map(spell, default_spell_map)
--    if spell.skill == 'Elemental Magic' and default_spell_map ~= 'ElementalEnfeeble' then
--        --[[ No real need to differentiate with current gear.
--        if lowTierNukes:contains(spell.english) then
--            return 'LowTierNuke'
--        else
--            return 'HighTierNuke'
--        end
--        --]]
--    end
--end
--
---- Modify the default idle set after it was constructed.
--function customize_idle_set(idleSet)
--    if player.mpp < 51 then
--        idleSet = set_combine(idleSet, sets.latent_refresh)
--    end
--    
--    return idleSet
--end
--
--
---- Function to display the current relevant user state when doing an update.
--function display_current_job_state(eventArgs)
--    display_current_caster_state()
--    eventArgs.handled = true
--end
--
---------------------------------------------------------------------------------------------------------------------
---- Utility functions specific to this job.
---------------------------------------------------------------------------------------------------------------------
--
---- Select default macro book on initial load or subjob change.
--function select_default_macro_book()
--    set_macro_page(1, 15)
--end
--
--