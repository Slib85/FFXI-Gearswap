-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------
 
-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
 
    -- Load and initialize the include file.
    include('Mote-Include.lua')
 
    -- Organizer
    --include('organizer-lib.lua')
    --include('organizer-items.lua')
end
 
-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff.Sentinel = buffactive.sentinel or false
    state.Buff.Cover = buffactive.cover or false
    state.Buff.Doom = buffactive.Doom or false
end
 
-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------
 
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Normal', 'Block', 'HP', 'Acc')
    state.HybridMode:options('Normal', 'PDT', 'Reraise')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'SIRD', 'Resistant')
    state.PhysicalDefenseMode:options('PDT', 'Block', 'HP')
    state.MagicalDefenseMode:options('MDT', 'Block', 'H{')
    state.IdleMode:options('Normal', 'Refresh')
     
    state.ExtraDefenseMode = M{['description']='Extra Defense Mode', 'None', 'MP', 'Knockback', 'MP_Knockback'}
    state.EquipShield = M(false, 'Equip Shield w/Defense')
     
    target_distance = 5.5 -- Set Default Distance Here --
 
    --update_defense_mode()
     
    --send_command('bind ^f11 gs c cycle MagicalDefenseMode')
    --send_command('bind !f11 gs c cycle ExtraDefenseMode')
    --send_command('bind @f10 gs c toggle EquipShield')
    --send_command('bind @f11 gs c toggle EquipShield')
    --send_command('bind @f12 gs c cycle CastingMode')
    --send_command('pld')
 
    select_default_macro_book()
end
 
function user_unload()
    send_command('unbind ^f11')
    send_command('unbind !f11')
    send_command('unbind @f10')
    send_command('unbind @f11')
    send_command('unbind @f12')
    send_command('gs enable all')
end
 
 
-- Define sets and vars used by this job file.
function init_gear_sets()
 
    --------------------------------------
    -- Precast sets
    --------------------------------------
     
    -- Fast cast sets for spells
     
    sets.precast.FC = {ammo="Sapience Orb",
    head="Chev. Armet +3",
    body="Sacro Breastplate",
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs="Chev. Cuisses +3",
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+23','"Fast Cast"+3','INT+4','"Mag.Atk.Bns."+12',}},
    neck="Voltsurge Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Loquac. Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Mag. Evasion+15',}},
}
 
    sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {})
     
    --Enmity
 
    sets.precast.Enmity = {ammo="Sapience Orb",
    head={ name="Cab. Coronet +1", augments={'Enhances "Iron Will" effect',}},
    body={ name="Souveran Cuirass", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    hands={ name="Cab. Gauntlets +2", augments={'Enhances "Chivalry" effect',}},
    legs={ name="Odyssean Cuisses", augments={'Enmity+5','"Mag.Atk.Bns."+12',}},
    feet={ name="Eschite Greaves", augments={'HP+80','Enmity+7','Phys. dmg. taken -4',}},
    neck="Unmoving Collar +1",
    waist="Plat. Mog. Belt",
    left_ear="Tuisto Earring",
    right_ear="Cryptic Earring",
    left_ring="Moonbeam Ring",
    right_ring="Petrov Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
 
    -- Precast sets to enhance JAs
    sets.precast.JA['Invincible'] = set_combine(sets.precast.Enmity, {legs="Caballarius Breeches +1"})
    sets.precast.JA['Holy Circle'] = set_combine(sets.precast.Enmity, {feet="Reverence Leggings +2"})
    sets.precast.JA['Shield Bash'] = set_combine(sets.precast.Enmity, {hands="Caballarius Gauntlets +2", ear2="Knightly Earring"})
    sets.precast.JA['Sentinel'] = set_combine(sets.precast.Enmity, {feet="Caballarius Leggings +1"})
    sets.precast.JA['Rampart'] = set_combine(sets.precast.Enmity, {head="Caballarius Coronet +1"})
    sets.precast.JA['Fealty'] = set_combine(sets.precast.Enmity, {body="Sakpata's Plate"})
    sets.precast.JA['Divine Emblem'] = set_combine(sets.precast.Enmity, {feet="Chevalier's Sabatons +1"})
    sets.precast.JA['Sepulcher'] = sets.precast.Enmity
    sets.precast.JA['Palisade'] = sets.precast.Enmity
    sets.precast.JA['Cover'] = set_combine(sets.precast.Enmity, {head="Reverence Coronet +1"})
 
    -- add mnd for Chivalry
    sets.precast.JA['Chivalry'] = {head="Caballarius Coronet +1",ear2="Lifestorm Earring",
        body="Sakpata's Plate",hands="Caballarius Gauntlets +2",ring1="Stikini Ring",ring2="Stikini Ring",
        legs="Chev. Cuisses +3",feet="Caballarius Leggings +1"}
     
    -- /WAR
    sets.precast.JA['Provoke'] = set_combine(sets.precast.Enmity, {})
    sets.precast.JA['Berserk'] = set_combine(sets.precast.Enmity, {})
    sets.precast.JA['Warcry'] = set_combine(sets.precast.Enmity, {})
    sets.precast.JA['Aggressor'] = set_combine(sets.precast.Enmity, {})
    sets.precast.JA['Defender'] = set_combine(sets.precast.Enmity, {})
     
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {head="Sulevia's Mask +2",body="Sulevia's Platemail +2",hands="Sulevia's Gauntlets +2",legs="Sulevia's Cuisses +2",feet="Sulevia's Leggings +2"}
         
    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}
     
    sets.precast.Step = {ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Lissome Necklace",
    waist="Sailfi Belt +1",
    left_ear="Lifestorm Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Regal Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
         
    sets.precast.Flourish1 = {ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Lissome Necklace",
    waist="Sailfi Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Regal Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
 
   
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
     
    sets.precast.WS = {ammo="Oshasha's Treatise",
    head="Sakpata's Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Cornelia's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
 
    sets.precast.WS.Acc = {ammo="Oshasha's Treatise",
    head="Sakpata's Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Cornelia's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
 
 
     
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = {ammo="Oshasha's Treatise",
    head="Sakpata's Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Cornelia's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
      
    sets.precast.WS['Chant du Cygne'] = {ammo="Oshasha's Treatise",
    head="Sakpata's Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Sakpata's Gauntlets",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Petrov Ring",
    right_ring="Cornelia's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
    
    sets.precast.WS['Knights of Round'] = {ammo="Oshasha's Treatise",
    head="Sakpata's Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Sakpata's Gauntlets",
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Petrov Ring",
    right_ring="Cornelia's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
          
    sets.precast.WS['Atonement'] = {ammo="Sapience Orb",
    head={ name="Cab. Coronet +1", augments={'Enhances "Iron Will" effect',}},
    body={ name="Souveran Cuirass", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
    hands="Rev. Gauntlets +1",
    legs="Rev. Breeches +1",
    feet={ name="Eschite Greaves", augments={'HP+80','Enmity+7','Phys. dmg. taken -4',}},
    neck="Unmoving Collar +1",
    waist="Plat. Mog. Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Cryptic Earring",
    left_ring="Cornelia's ring",
    right_ring="Mephitas's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
         
    sets.precast.WS['Savage Blade'] = {ammo="Oshasha's Treatise",
    head="Sakpata's Helm",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Cornelia's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
}
     
         
         
    --------------------------------------
    -- Midcast sets
    --------------------------------------
 
    sets.midcast.FastRecast = {ammo="Sapience orb",ear2="Loquac. Earring"}
         
    sets.midcast.Enmity = set_combine(sets.precast.Enmity, {})
     
    sets.midcast.SIRD = {ammo="Staunch Tathlum", ear2="Knightly Earring"}
 
    sets.midcast.Flash = set_combine(sets.midcast.Enmity, {neck="Knight's Bead Necklace +1"})
    sets.midcast.Flash.SIRD = set_combine(sets.midcast.Flash, sets.midcast.SIRD)
     
    sets.midcast.Stun = set_combine(sets.midcast.Enmity, {})
    sets.midcast.Stun.SIRD = set_combine(sets.midcast.Stun, sets.midcast.SIRD)
     
    sets.midcast.Cure = {ammo="Sapience Orb",
    head="Chev. Armet +3",
    body={ name="Sakpata's Plate", augments={'Path: A',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Chev. Cuisses +3",
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+23','"Fast Cast"+3','INT+4','"Mag.Atk.Bns."+12',}},
    neck="Voltsurge Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Nourish. Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
    sets.midcast.Cure.SIRD = set_combine(sets.midcast.Cure, sets.midcast.SIRD)
 
    sets.midcast['Blue Magic'] = set_combine(sets.midcast.Enmity, {})
    sets.midcast['Blue Magic'].SIRD = set_combine(sets.midcast['Blue Magic'], sets.midcast.SIRD)
    sets.midcast['Blue Magic']['Wild Carrot'] = set_combine(sets.midcast.Enmity, sets.midcast.Cure)
    sets.midcast['Blue Magic']['Wild Carrot'].SIRD = set_combine(sets.midcast['Blue Magic']['Wild Carrot'], sets.midcast.SIRD)
     
    sets.midcast['Enhancing Magic'] = {ear2="Loquacious Earring",}
    sets.midcast['Enhancing Magic'].SIRD = set_combine(sets.midcast['Enhancing Magic'], sets.midcast.SIRD)
     
    sets.midcast.Protect = {ring2="Sheltered Ring"}
    sets.midcast.Protect.SIRD = set_combine(sets.midcast.Protect, sets.midcast.SIRD)
    sets.midcast.Shell = {ring2="Sheltered Ring"}
    sets.midcast.Shell.SIRD = set_combine(sets.midcast.Shell, sets.midcast.SIRD)
    
    sets.midcast.Phalanx = {legs="sakpata's cuisses"}
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
 
    sets.Reraise = {head="Twilight Helm", body="Twilight Mail"} 
 
    -- Idle sets
    sets.idle = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body={ name="Sakpata's Plate", augments={'Path: A',}},
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
 
    sets.idle.Refresh = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sacro Breastplate",
    hands="Chev. Gauntlets +1",
    legs="Sakpata's cuisses",
    feet="Sakpata's leggings",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Warden's ring",
    right_ring="Shneddick ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
 
    sets.idle.Town = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sacro Breastplate",
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs="Chev. Cuisses +3",
    feet="Sakpata's leggings",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonbeam Ring",
    right_ring="Shneddick ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
     
    sets.Kiting = {right_ring="Shneddick ring"}
 
    sets.latent_refresh = {waist="Fucho-no-obi"}
 
 
    --------------------------------------
    -- Defense sets
    --------------------------------------
     
    -- Extra defense sets.  Apply these on top of melee or defense sets.
    sets.Knockback = {back="Repulse Mantle"}
    sets.MP = {right_ring="Mephitas's Ring"}
    sets.MP_Knockback = set_combine(sets.MP, sets.Knockback)
     
   -- If EquipShield toggle is on (Win+F10 or Win+F11), equip the weapon/shield combos here
    -- when activating or changing defense mode:
    sets.PhysicalShield = {sub="Duban"}
    sets.MagicalShield = {sub="Aegis"}
 
    -- Basic defense sets.
         
    sets.defense.PDT = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body={ name="Sakpata's Plate", augments={'Path: A',}},
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}

    sets.defense.HP = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Cryptic Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
    sets.defense.Reraise = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Tuisto Earring",
    right_ear="Cryptic Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
    sets.defense.Block = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Thureous Earring",
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
    -- To cap MDT with Shell IV (52/256), need 76/256 in gear.
    -- Shellra V can provide 75/256, which would need another 53/256 in gear.
    sets.defense.MDT = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Tuisto Earring",
    right_ear="Cryptic Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
 
 
    --------------------------------------
    -- Engaged sets
    --------------------------------------
     
    sets.engaged = {ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body={ name="Sakpata's Plate", augments={'Path: A',}},
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}
 
sets.engaged.Block = {
    ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Thureous Earring",
    right_ear={ name="Chev. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}

sets.engaged.HP = {
    ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Chev. Cuisses +3",
    feet="Sakpata's Leggings",
    neck={ name="Unmoving Collar +1", augments={'Path: A',}},
    waist="Plat. Mog. Belt",
    left_ear="Cryptic Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}

    sets.engaged.Acc = {ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Lissome Necklace",
    waist="Sailfi Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Moonbeam Ring",
    right_ring="Moonbeam Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5',}},
}

    sets.engaged.DW = set_combine(sets.engaged, {ear1="Cessance Earring",ear2="Telos Earring",legs="Chev. Cuisses +3",})
 
    sets.engaged.DW.Acc = set_combine(sets.engaged.Acc, {ear1="Suppanomimi"})
 
    sets.engaged.PDT = {ammo="Staunch Tathlum",
        neck="Knight's Bead Necklace +1",
        body="Souveran Cuirass",hands="Caballarius Gauntlets +2",
        back=gear.RudianosTP,waist="Plat. Mog. Belt",legs="Sulevia's Cuisses +2",feet="Caballarius Leggings +1"}
     
    sets.engaged.Acc.PDT = sets.engaged.PDT
    sets.engaged.Reraise = set_combine(sets.engaged, sets.Reraise)
    sets.engaged.Acc.Reraise = set_combine(sets.engaged.Acc, sets.Reraise)
 
    sets.engaged.DW.PDT = set_combine(sets.engaged.PDT, {ear1="Suppanomimi",ear2="Brutal Earring"})
    sets.engaged.DW.Acc.PDT = set_combine(sets.engaged.PDT, {ear1="Suppanomimi"})
    sets.engaged.DW.Reraise = set_combine(sets.engaged.DW, sets.Reraise)
    sets.engaged.DW.Acc.Reraise = set_combine(sets.engaged.DW.Acc, sets.Reraise)
 
 
    --------------------------------------
    -- Custom buff sets
    --------------------------------------
 
    sets.buff.Doom = {ring1="Saida Ring", ring2="Purity ring", waist="Gishdubar sash"}
    sets.buff.Cover = {head="Reverence Coronet +1"}
 
end
 
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
 
function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.type == "WeaponSkill" and player.status == 'Engaged' and spell.target.distance > target_distance then -- Cancel WS If You Are Out Of Range --
       eventArgs.cancel=true
       add_to_chat(123, spell.name..' Canceled: [Out of Range]')
       return
    end
end
 
 
function job_midcast(spell, action, spellMap, eventArgs)
    -- If DefenseMode is active, apply that gear over midcast
    -- choices.  Precast is allowed through for fast cast on
    -- spells, but we want to return to def gear before there's
    -- time for anything to hit us.
    -- Exclude Job Abilities from this restriction, as we probably want
    -- the enhanced effect of whatever item of gear applies to them,
    -- and only one item should be swapped out.
    if state.DefenseMode.value ~= 'None' and spell.type ~= 'JobAbility' then
        handle_equipping_gear(player.status)
        eventArgs.handled = true
    end
end
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------
 
-- Called when the player's state changes (e.g. Normal to Acc Engaged mode).
function job_state_change(field, new_value, old_value)
    classes.CustomDefenseGroups:clear()
    classes.CustomDefenseGroups:append(state.ExtraDefenseMode.current)
    if state.EquipShield.value == true then
        classes.CustomDefenseGroups:append(state.DefenseMode.current .. 'Shield')
    end
 
    classes.CustomMeleeGroups:clear()
    classes.CustomMeleeGroups:append(state.ExtraDefenseMode.current)
     
end
 
-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------
 
-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    update_defense_mode()
end
 
-- Called when status changes (Idle to Engaged, Resting, etc.)
function job_status_change(newStatus, oldStatus, eventArgs)
    update_defense_mode()
end
 
-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if world.area:contains('Adoulin') then
        idleSet = set_combine(idleSet, {body="Councilor's Garb"})
    end
    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end
    if state.Buff.Doom then
        idleSet = set_combine(idleSet, sets.buff.Doom)
    end
     
    return idleSet
end
 
-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
    if state.Buff.Doom then
        meleeSet = set_combine(meleeSet, sets.buff.Doom)
    end
     
    return meleeSet
end
 
function customize_defense_set(defenseSet)
    if state.ExtraDefenseMode.value ~= 'None' then
        defenseSet = set_combine(defenseSet, sets[state.ExtraDefenseMode.value])
    end
     
    if state.EquipShield.value == true then
        defenseSet = set_combine(defenseSet, sets[state.DefenseMode.current .. 'Shield'])
    end
     
    if state.Buff.Doom then
        defenseSet = set_combine(defenseSet, sets.buff.Doom)
    end
     
    return defenseSet
end
 
 
function display_current_job_state(eventArgs)
    local msg = 'Melee'
     
    if state.CombatForm.has_value then
        msg = msg .. ' (' .. state.CombatForm.value .. ')'
    end
     
    msg = msg .. ': '
     
    msg = msg .. state.OffenseMode.value
    if state.HybridMode.value ~= 'Normal' then
        msg = msg .. '/' .. state.HybridMode.value
    end
    msg = msg .. ', WS: ' .. state.WeaponskillMode.value
     
    if state.DefenseMode.value ~= 'None' then
        msg = msg .. ', Defense: ' .. state.DefenseMode.value .. ' (' .. state[state.DefenseMode.value .. 'DefenseMode'].value .. ')'
    end
 
    if state.ExtraDefenseMode.value ~= 'None' then
        msg = msg .. ', Extra: ' .. state.ExtraDefenseMode.value
    end
     
    msg = msg .. ', Casting: ' .. state.CastingMode.value
     
    if state.EquipShield.value == true then
        msg = msg .. ', Force Equip Shield'
    end
     
    if state.Kiting.value == true then
        msg = msg .. ', Kiting'
    end
 
    if state.PCTargetMode.value ~= 'default' then
        msg = msg .. ', Target PC: '..state.PCTargetMode.value
    end
 
    if state.SelectNPCTargets.value == true then
        msg = msg .. ', Target NPCs'
    end
 
    add_to_chat(122, msg)
 
    eventArgs.handled = true
end
 
 
-------------------------------------------------------------------------------------------------------------------
-- User self-commands.
-------------------------------------------------------------------------------------------------------------------
 
-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)
    if cmdParams[1] == 'tds' then
        local newTargetDistance = tonumber(cmdParams[2])
        if not newTargetDistance then
            add_to_chat(123, '[Invalid parameter. Example syntax: gs c tds 5.5]')
            return
        end
        if newTargetDistance > 0 then
            target_distance = newTargetDistance
            add_to_chat(122, '[Weaponskill max range set to '..newTargetDistance..' yalms.]')
        else
            add_to_chat(123, '[Invalid parameter. Example syntax: gs c tds 5.5]')
        end
    end
end
 
 
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
 
function update_defense_mode()
    if player.sub_job == 'NIN' or player.sub_job == 'DNC' then
        if player.equipment.sub and not player.equipment.sub:contains('Shield') and
           player.equipment.sub ~= 'Aegis' and player.equipment.sub ~= 'Ochain' then
            state.CombatForm:set('DW')
        else
            state.CombatForm:reset()
        end
    end
end
 
 
-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    if player.sub_job == 'WAR' then
        set_macro_page(1, 7)
    elseif player.sub_job == 'DNC' then
        set_macro_page(7, 1)
    elseif player.sub_job == 'THF' then
        set_macro_page(7, 1)
    elseif player.sub_job == 'SAM' then
        set_macro_page(7, 1)
    elseif player.sub_job == 'RNG' then
        set_macro_page(7, 1)
    elseif player.sub_job == 'PLD' then
        set_macro_page(7, 1)
    elseif player.sub_job == 'WHM' then
        set_macro_page(7, 7)
    elseif player.sub_job == 'RDM' then
        set_macro_page(7, 3)
    elseif player.sub_job == 'SCH' then
        set_macro_page(7, 4)
    elseif player.sub_job == 'BLU' then
        set_macro_page(2, 7)
    elseif player.sub_job == 'DRK' then
        set_macro_page(7, 5)
    elseif player.sub_job == 'RUN' then
        set_macro_page(7, 6)
    elseif player.sub_job == 'NIN' then
        set_macro_page(7, 1)
    else
        set_macro_page(7, 7)  --BRD
    end
end
