function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'TP', "DW");
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 11)

	include(player.name .. "/RNG_gear.lua")
	
	sets.precast.FC = sets.precast_spell;
	sets.precast.WS = sets.precast_ws;
    sets.precast.RA = sets.precast_ra;

    sets.midcast.RA = sets.midcast_ra;
    
	-- ================
	-- === Melee WS ===
	-- ================
	sets.precast.WS['Savage Blade'] = set_combine(sets.precast_ws, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.precast_magic_ws, {
		left_ear="Moonshade Earring"
	})



	-- =================
	-- === Ranged WS ===
	-- =================

    
	sets.precast.WS['Blast Arrow'] = set_combine(sets.precast_ra_ws, {
		--left_ear="Moonshade Earring"
	})
    
	sets.precast.WS['Hot Shot'] = set_combine(sets.precast_magic_ra_ws, {
		left_ear="Moonshade Earring"
	})
    
	sets.precast.WS['Split Shot'] = set_combine(sets.precast_ra_ws, {
		left_ear="Moonshade Earring"
	})
    
	sets.precast.WS['Sniper Shot'] = set_combine(sets.precast_ra_ws, {

	})
    
	sets.precast.WS['Slug Shot'] = set_combine(sets.precast_ra_ws, {

	})
    
	sets.precast.WS['Detonator'] = set_combine(sets.precast_ra_ws, {
		left_ear="Moonshade Earring"
	})
	
	sets.precast.WS['Numbing Shot'] = set_combine(sets.precast_ra_ws, {

	})
	
	sets.precast.WS['Last Stand'] = set_combine(sets.precast_ra_ws, {
		left_ear="Moonshade Earring"
	})
	
	sets.precast.WS['Wildfire'] = set_combine(sets.precast_magic_ra_ws, {

	})
	
	sets.precast.WS['Leaden Salute'] = set_combine(sets.precast_magic_ra_ws, {
		left_ear="Moonshade Earring"
	})

	sets.precast.JA["Fighter's Roll"] = sets.precast_roll
	sets.precast.JA["Monk's Roll"] = sets.precast_roll
	sets.precast.JA["Healer's Roll"] = sets.precast_roll
	sets.precast.JA["Wizard's Roll"] = sets.precast_roll
	sets.precast.JA["Warlock's Roll"] = sets.precast_roll
	sets.precast.JA["Rogue's Roll"] = sets.precast_roll
	sets.precast.JA["Gallant's Roll"] = sets.precast_roll
	sets.precast.JA["Chaos Roll"] = sets.precast_roll
	sets.precast.JA["Beast Roll"] = sets.precast_roll
	sets.precast.JA["Choral Roll"] = sets.precast_roll
	sets.precast.JA["Hunter's Roll"] = sets.precast_roll
	sets.precast.JA["Samurai Roll"] = sets.precast_roll
	sets.precast.JA["Ninja Roll"] = sets.precast_roll
	sets.precast.JA["Drachen Roll"] = sets.precast_roll
	sets.precast.JA["Evoker's Roll"] = sets.precast_roll
	sets.precast.JA["Magus's Roll"] = sets.precast_roll
	sets.precast.JA["Corsair's Roll"] = sets.precast_roll
	sets.precast.JA["Puppet Roll"] = sets.precast_roll
	sets.precast.JA["Dancer's Roll"] = sets.precast_roll
	sets.precast.JA["Scholar's Roll"] = sets.precast_roll
	sets.precast.JA["Bolter's Roll"] = sets.precast_roll
	sets.precast.JA["Caster's Roll"] = sets.precast_roll
	sets.precast.JA["Courser's Roll"] = sets.precast_roll
	sets.precast.JA["Blitzer's Roll"] = sets.precast_roll
	sets.precast.JA["Tactician's Roll"] = sets.precast_roll
	sets.precast.JA["Allies' Roll"] = sets.precast_roll
	sets.precast.JA["Miser's Roll"] = sets.precast_roll
	sets.precast.JA["Companion's Roll"] = sets.precast_roll
	sets.precast.JA["Avenger's Roll"] = sets.precast_roll
	sets.precast.JA["Naturalist's Roll"] = sets.precast_roll
	sets.precast.JA["Runeist's Roll"] = sets.precast_roll
	sets.precast.JA["Double-Up"] = sets.precast_roll

	sets.precast.JA["Random Deal"] = {
		body="Lanun Frac +1",
	}
	
	sets.precast.JA["Fold"] = {
		hands="Lanun Gants +3",
	}
	
	sets.precast.JA["Wild Card"] = {
		feet="Lanun Bottes +1",
	}
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if S{"Dream Flower"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			waist="Chaac belt",
			feet={ name="Herculean Boots", augments={'"Fast Cast"+5','Accuracy+9','"Treasure Hunter"+2','Accuracy+14 Attack+14','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		})
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "TP" then
		equip(sets.aftercast_tp)
    elseif state.OffenseMode.value == "DW" then
        equip(sets.aftercast_dw_tp)
	else
		equip(sets.aftercast_dt)
	end
end

function job_buff_change(buff, gain)
	
end

