abilities = {
    -- BLM
    ["Manafont"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = {
            body="Archmage's Coat +3"
        },
    },
    ["Manawall"] = {
        use_aftercast = 1,
        active = 0,
		midcast_set = {
            feet="Wicce Sabots +3"
        },
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
		midcast_set = sets.midcast_enmity,
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
		midcast_set = sets.midcast_enmity,
    },
    ["Cover"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Rampart"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
    },
    ["Fealty"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = set_combine(sets.midcast_enmity, {
            body="Caballarius Surcoat +3"
        })
    },
    ["Chivalry"] = {
        use_aftercast = 0,
        active = 0,
		midcast_set = sets.midcast_enmity,
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
}
