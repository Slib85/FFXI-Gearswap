abilities = {
    -- BLM
    ["Manafont"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = {
            body="Arch. Coat +4"
        },
    },
    ["Manawall"] = {
        use_aftercast = 1,
        active = 0,
		midcast_set = {
            feet="Wicce Sabots +3"
        },
    },
    -- DNC
    ["Curing Waltz"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Curing Waltz II"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Curing Waltz III"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Curing Waltz IV"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Curing Waltz V"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Divine Waltz"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Divine Waltz II"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Healing Waltz"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_waltz,
    },
    ["Animated Flourish"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },

    -- RDM
    ["Chainspell"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = {
            body="Vitiation Tabard +3",
        },
    },
    ["Saboteur"] = {
        use_aftercast = 1,
        active = 0,
        use_with = "Enfeebling Magic",
		midcast_set = {
            hands="Lethargy Gantherots +3",
        },
    },
    ["Convert"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = {
            --main="Murgleis",
        },
    },

    -- SCH
    ["Immanence"] = {
        use_aftercast = 1,
        active = 0,
		midcast_set = {},
    },
    ["Perpetuance"] = {
        use_aftercast = 1,
        active = 0,
        use_with = "Enhancing Magic",
		midcast_set = {
            hands="Arbatel Bracers +3"
        },
    },
    ["Ebullience"] = {
        use_aftercast = 1,
        active = 0,
        use_with = "Elemental Magic",
		midcast_set = {
            hands="Arbatel Bonnet +3"
        },
    },
    
    -- WAR
    ["Provoke"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Warcry"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },


    -- PLD
    ["Invincible"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set =  set_combine(sets.midcast_enmity, {
            legs="Caballarius Breeches +4"
        })
    },
    ["Shield Bash"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Holy Circle"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Sentinel"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set =  set_combine(sets.midcast_enmity, {
            feet="Caballarius Leggings +4"
        })
    },
    ["Cover"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Rampart"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set =  set_combine(sets.midcast_enmity, {
            head="Caballarius Coronet +4"
        })
    },
    ["Fealty"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = set_combine(sets.midcast_enmity, {
            body="Caballarius Surcoat +4"
        })
    },
    ["Chivalry"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set =  set_combine(sets.midcast_enmity, {
            hands="Caballarius Gauntlets +4"
        })
    },
    ["Divine Emblem"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Sepulcher"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Palisade"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Intervene"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },

    -- SAM
    ["Hasso"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Seigan"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    

    -- RUN
    ["Elemental Sforzo"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Swordplay"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Embolden"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["One for All"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Odyllic Subterfuge"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Vallation"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Pflug"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Valiance"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Liement"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Battuta"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Swipe"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Lunge"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Gambit"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Rayke"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Vivacious Pulse"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    -- BST
    ["Call Beast"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = {
            hands="Ankusa Gloves +1"
        },
    },
    ["Bestial Loyalty"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = {
            hands="Ankusa Gloves +1"
        },
    },

    -- SAM
    ["Meditate"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = {
            head="Wakido Kabuto +3",
            hands="Sakonji Kote +3",
            back="Smertrios's Mantle",
        },
    },
}
