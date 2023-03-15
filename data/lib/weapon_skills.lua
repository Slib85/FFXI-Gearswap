sets.precast.WS = sets.precast_ws_physical

weapon_skills = {
    -- BEGIN GREAT SWORD
    ["Hard Slash"] = {
        use_midcast_magic_affinity = 0,
        use_midcast_magic_damage = 0,
        use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
    },
	["Power Slash"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = set_combine(sets.precast_ws_physical_dex, sets.precast_ws_physical_crit),
	},
	["Frostbite"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Freezebite"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Shockwave"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Crescent Moon"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Sickle Moon"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Spinning Slash"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Ground Strike"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Herculean Slash"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_magic,
	},
	["Resolution"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical, sets.precast_ws_pdl),
	},
	["Scourge"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Torcleaver"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical_vit,
	},
	["Dimidiation"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical_dex,
	},
    -- END GREAT SWORD

    -- BEGIN SCYTHE
	["Slice"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws,
	},
	["Dark Harvest"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Shadow of Death"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Nightmare Scythe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Spinning Scythe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Vorpal Scythe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Guillotine"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Cross Reaper"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Spiral Hell"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Infernal Scythe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_magic,
	},
	["Entropy"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical, sets.precast_ws_physical),
	},
	["Catastrophe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Quietus"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Insurgency"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
    -- END SCYTHE

    -- BEGIN SWORD
	["Fast Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Burning Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Red Lotus Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Flat Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Shining Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Seraph Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Circle Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Spirits Within"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Vorpal Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical_dex, sets.precast_ws_physical_crit),
	},
	["Swift Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Savage Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Sanguine Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_magic_mnd_dark,
	},
	["Requiescat"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical_mnd, sets.precast_ws_pdl),
	},
	["Knights of Round"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Chant du Cygne"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical_dex, sets.precast_ws_physical_crit),
	},
	["Death Blossom"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Atonement"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws, sets.midcast_enmity),
	},
	["Expiacion"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Uriel Blade"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Glory Slash"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Fast Blade II"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical_dex,
	},
    -- END SWORD

    -- BEGIN CLUB
	["Shining Strike"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Seraph Strike"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Brainshaker"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Starlight"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Moonlight"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Skullbreaker"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["True Strike"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Judgment"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Hexa Strike"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical, sets.precast_ws_pdl),
	},
	["Black Halo"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Flash Nova"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_magic_mnd,
	},
	["Realmrazer"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_multi_physical, sets.precast_ws_pdl),
	},
	["Randgrith"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Dagan"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.max_mp,
	},
	["Mystic Boon"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Exudation"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
    -- END CLUB

    -- BEGIN GREAT AXE
	["Shield Break"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Iron Tempest"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Sturmwind"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Armor Break"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["keen Edge"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Weapon Break"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Raging Rush"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Full Break"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Steel Cyclone"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Fell Cleave"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Upheaval"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical_vit, sets.precast_ws_pdl),
	},
	["Metatron Torment"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Ukko's Fury"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical, sets.precast_ws_physical_crit),
	},
	["King's Justice"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
    -- END GREAT AXE

    -- BEGIN AXE
	["Raging Axe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Smash Axe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Gale Axe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Avalanche Axe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Spinning Axe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Rampage"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = set_combine(sets.precast_ws_physical, sets.precast_ws_pdl, sets.precast_ws_physical_crit),
	},
	["Calamity"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Mistral Axe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Decimation"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Bora Axe"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical_dex,
	},
	["Ruinator"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = set_combine(sets.precast_ws_physical, sets.precast_ws_pdl),
	},
	["Onslaught"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Cloudsplitter"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Primal Rend"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_chr,
	},
    -- END AXE

	-- BEGIN STAFF
	["Heavy Swing"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Rock Crusher"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_earth,
	},
	["Earth Crusher"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_earth,
	},
	["Starburst"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_dark,
	},
	["Sunburst"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_dark,
	},
	["Shell Crusher"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Full Swing"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Spirit Taker"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Retribution"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Cataclysm"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_dark,
	},
	["Shattersoul"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Gate of Tartarus"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Garland of Bliss"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_magic_light,
	},
	["Omniscience"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_magic_dark,
	},
	["Vidohunir"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_magic_dark,
	},
	["Myrkr"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.midcast_max_mp,
	},
	["Tartarus Torpor"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	-- END STAFF

	-- BEGIN DAGGER
	["Wasp Sting"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Gust Slash"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_int,
	},
	["Shadowstitch"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Viper Bite"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Cyclone"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic_int,
	},
	["Energy Steal"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Energy Drain"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Dancing Edge"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical_pdl,
	},
	["Shark Bite"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Evisceration"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical_crit,
	},
	["Aeolian Edge"] = {
		use_midcast_magic_affinity = 1,
		use_midcast_magic_damage = 1,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_magic,
	},
	["Exenterator"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical_pdl,
	},
	["Mercy Stroke"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Rudra's Storm"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 1,
		midcast_set = sets.precast_ws_physical,
	},
	["Mandalic Stab"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Mordant Rime"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical,
	},
	["Pyrrhic Kleos"] = {
		use_midcast_magic_affinity = 0,
		use_midcast_magic_damage = 0,
		use_tp_bonus = 0,
		midcast_set = sets.precast_ws_physical_pdl,
	},
	-- END DAGGER
}
