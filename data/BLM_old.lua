--send_command('bind NUM2 input /ma Stun <t>')

function get_sets()
    mote_include_version = 2
    
	include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'AOEOccult', 'Occult', 'MB', 'TP');
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 4)

	include(player.name .. "/BLM_gear.lua")
 	--include("lib/weapon_skills.lua")
	--include("lib/magic.lua")
	-- windower.add_to_chat(123, player.TP)

	-- windower.add_to_chat(123, magic["Thunder VI"].affinity)

	sets.precast.WS = sets.precastWS;

	sets.precast.WS['Shattersoul'] = sets.precastWSIntGear
	sets.precast.WS['Rock Crusher'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Aeolian Edge'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Earth Crusher'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Starburst'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Sunburst'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Vidohunir'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})
	sets.precast.WS['Cataclysm'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring",
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})

	sets.precast.WS['Gate of Tartarus'] = {
		ammo="Floestone",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		--neck="Fotia Gorget",
		--waist="Fotia Belt",
		left_ear="Regal Earring",
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
		neck="Sorcerer's Stole +2",
		waist="Acuity Belt +1",
	}

	sets.precast.WS['Myrkr'] = set_combine(sets.maxMP, {
		right_ear="Moonshade Earring"
	})
	sets.precast.WS['Spiral Hell'] = {
		ammo="Floestone",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Src. Stole +2", augments={'Path: A',}},
		waist={ name="Acuity Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		left_ring="Epaminondas's Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
	}
	sets.precast.WS['Shining Strike'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Seraph Strike'] = set_combine(sets.magicPrecastWSGear, {
		left_ear="Moonshade Earring"
	})
	sets.precast.WS['Flash Nova'] = sets.magicPrecastWSGear

	sets.precast.JA.Manafont = {body="Archmage's Coat +3"}

	sets.precast.FC = sets.precastGear

	sets.precast.FC['Impact'] = set_combine(sets.precast.FC, {body="Twilight Cloak"})
	sets.precast.FC['Meteor'] = sets.PDT

	sets.midcast['Impact'] = {
		ammo="Ghastly Tathlum +1",
		neck="Sorcerer's Stole +2",
		ear1="Malignance Earring",
		ear2="Regal Earring",
		body="Twilight Cloak",
		hands="Spaekona's Gloves +3",
		ring1="Freke Ring",
		ring2="Metamorph Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		--waist = "Orpheus's Sash", 
		waist="Acuity Belt +1",
		legs="Spaekona's Tonban +3",
	    feet="Spaekona's Sabots +3",
		neck="Sorcerer's Stole +2",
	}

	include('BLMspells.lua')
	include('ALLitems.lua')
end

function job_post_precast(spell, action, spellMap, eventArgs)
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if magic[spell.name] ~= nil then
		-- Matching double weather (w/o day conflict).
		if spell.element == world.weather_element and (get_weather_intensity() == 2 and spell.element ~= elements.weak_to[world.day_element]) and magic[spell.name].use_midcast_affinity == 1 then
			equip({waist="Hachirin-no-Obi"})
		-- Target distance under 1.7 yalms.
		elseif spell.target.distance < (1.7 + spell.target.model_size) and magic[spell.name].use_midcast_damage == 1 then
			equip({waist="Orpheus's Sash"})
		-- Matching day and weather.
		elseif spell.element == world.day_element and spell.element == world.weather_element and magic[spell.name].use_midcast_affinity == 1 then
			equip({waist="Hachirin-no-Obi"})
		-- Target distance under 8 yalms.
		elseif spell.target.distance < (8 + spell.target.model_size) and magic[spell.name].use_midcast_damage == 1 then
			equip({waist="Orpheus's Sash"})
		-- Match day or weather.
		elseif (spell.element == world.day_element or spell.element == world.weather_element) and magic[spell.name].use_midcast_affinity == 1 then
			equip({waist="Hachirin-no-Obi"})
		end
	end
	
	if spell.skill == 'Elemental Magic' and (buffactive['Manawell'] == 1 or buffactive['Manafont']) and not S{"Impact"}:contains(spell.english) then
		equip({body="Agwu's Robe"})
	end

	if buffactive['Mana Wall'] == 1 and not S{"Cataclysm"}:contains(spell.english) then
		equip(sets.manaWall)
	end

	if spell.skill == 'Elemental Magic' and (state.OffenseMode.value == 'MB') then
		equip(sets.magic_burst)

		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'Occult' then
		if spell.skill == 'Elemental Magic' then
			equip(set_combine(sets.occultAcumenGear, {
				body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+4','"Occult Acumen"+11','MND+6',}},
			}))
		end
	elseif state.OffenseMode.value == 'AOEOccult' then
		if spell.skill == 'Elemental Magic' then
			equip(sets.occultAcumenGear)
		end
		
		if buffactive['Mana Wall'] == 1 then
			equip(sets.manaWall)
		end
	elseif state.OffenseMode.value == 'TH' then
		equip({
			ammo="Perfect Lucky Egg",
			body="Volte Jupon",
			waist="Chaac belt",
		})
	end

	if S{"Breakga", "Diaga", "Dia II"}:contains(spell.english) then
		equip({
			ammo="Perfect Lucky Egg",
			body="Volte Jupon",
			waist="Chaac belt",
		})
	end

	if S{"Burn", "Choke", "Rasp", "Frost", "Shock", "Drown"}:contains(spell.english) then
		equip(set_combine(sets.enfeebleGearINT, {
			head={ name="Arch. Petasos +3", augments={'Increases Ancient Magic damage and magic burst damage',}},
			body={ name="Arch. Coat +3", augments={'Enhances "Manafont" effect',}},
			feet="Arch. sabots +3",
			legs="Arch. tonban +3",
			legs="Agwu's Slops",
			hands="Spaekona's Gloves +3",
			left_ring="Stikini Ring +1",
		}));
	end

	if S{"Phalanx"}:contains(spell.english) then
		--oldMain = player.equipment.main
		--oldSub = player.equipment.sub
		
		equip(set_combine(sets.buffGearDuration, sets.buffGear, sets.phalanx))
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

	if oldMain and oldMain ~= '' then
		equip({
			main=oldMain
		})

		oldMain = ''
	end

	if oldSub and oldSub ~= '' then
		equip({
			sub=oldSub
		})

		oldSub = ''
	end
end

function job_buff_change(buff, gain)
	if buff == "Mana Wall" and not gain then
		equip(sets.PDT)
	end
end

