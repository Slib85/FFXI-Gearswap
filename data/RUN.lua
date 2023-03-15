function get_sets()
    mote_include_version = 2
    
    include('Mote-Include.lua')
end

function job_setup()

end

function user_setup()
	state.OffenseMode:options('Normal', 'Melee', 'Super')
	state.CastingMode:options('Normal', 'Resistant', 'Proc')
	state.IdleMode:options('Normal', 'PDT')
end

function init_gear_sets()
	set_macro_page(2, 22)
	
	include(player.name .. "/RUN_gear.lua")
	
	-- Base Settings
	sets.precast.FC = sets.precastSpells
	sets.precast.JA = sets.enmityGear;

	sets.precast.JA['Lunge'] = sets.nukeGear;
	sets.precast.JA["Battuta"] = {
		head="Futhark Bandeau +1",
	};
	sets.precast.JA["Elemental Sforzo"] = {
		body="Futhark Coat +1",
	};
	sets.precast.JA["Rayke"] = {
		feet="Futhark Boots",
	};
	sets.precast.JA["Gambit"] = {
		hands="Runeist Mitons",
	};

	sets.precast.WS = sets.precastWS;

	sets.precast.WS['Sanguine Blade'] = set_combine(sets.magicPrecastWSGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	});
	sets.precast.WS['Aeolian Edge'] = sets.magicPrecastWSGear
	sets.precast.WS['Atonement'] = sets.enmityGear

	sets.midcast['Flash'] = sets.enmityGear;	
	sets.midcast['Foil'] = sets.enmityGear;	
	
	sets.midcast['Jettatura'] = sets.enmityGear;
	sets.midcast['Geist Wall'] = set_combine(sets.enmityGear);

	sets.midcast['Cure'] = sets.cureGear
	sets.midcast['Cure II'] = sets.cureGear
	sets.midcast['Cure III'] = sets.cureGear
	sets.midcast['Cure IV'] = sets.cureGear
	sets.midcast['Cure V'] = sets.cureGear
	sets.midcast['Cure VI'] = sets.cureGear
	sets.midcast['Curaga'] = sets.cureGear
	sets.midcast['Curaga II'] = sets.cureGear
	sets.midcast['Curaga III'] = sets.cureGear
	sets.midcast['Curaga IV'] = sets.cureGear
	sets.midcast['Curaga V'] = sets.cureGear
	sets.midcast['Cura'] = sets.cureGear
	sets.midcast['Cura II'] = sets.cureGear
	sets.midcast['Cura III'] = sets.cureGear
	
	sets.midcast['Blink'] = sets.buffGear
	sets.midcast['Stoneskin'] = sets.buffGear
	sets.midcast['Aquaveil'] = sets.buffGear
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Temper'] = sets.buffGear
	sets.midcast['Phalanx'] = set_combine(sets.PDT, sets.buffGear, {
		head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect',}},
		hands={ name="Herculean Gloves", augments={'Pet: DEX+7','Phalanx +3',}},
    });

	sets.midcast["Crusade"] = sets.PDT

    sets.midcast['Blaze Spikes'] = sets.buffGear
	sets.midcast['Ice Spikes'] = sets.buffGear
	
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
	
	sets.midcast['Boost-STR'] = sets.buffGear
	sets.midcast['Boost-DEX'] = sets.buffGear
	sets.midcast['Boost-VIT'] = sets.buffGear
	sets.midcast['Boost-AGI'] = sets.buffGear
	sets.midcast['Boost-INT'] = sets.buffGear
	sets.midcast['Boost-MND'] = sets.buffGear
	sets.midcast['Boost-CHR'] = sets.buffGear
	
	sets.midcast['Banish'] = sets.nukeGearMND
	sets.midcast['Banish II'] = sets.nukeGearMND
	sets.midcast['Banish III'] = sets.nukeGearMND
	sets.midcast['Banishga'] = set_combine(sets.nukeGearMND, {
	});
	sets.midcast['Banishga II'] = sets.nukeGearMND
	sets.midcast['Holy'] = sets.nukeGearMND
	sets.midcast['Holy II'] = sets.nukeGearMND
	
	sets.midcast['Repose'] = sets.enfeebleGear
	sets.midcast['Paralyze'] = sets.enfeebleGear
	sets.midcast['Slow'] = sets.enfeebleGear
	sets.midcast['Repose'] = sets.enfeebleGear
	sets.midcast['Silence'] = sets.enfeebleGear
	sets.midcast['Addle'] = sets.enfeebleGear
	
	-- BLACK MAGIC
	sets.midcast['Stone'] = sets.nukeGearINT
	sets.midcast['Stone II'] = sets.nukeGearINT
	sets.midcast['Stone III'] = sets.nukeGearINT
	sets.midcast['Stone IV'] = sets.nukeGearINT
	sets.midcast['Stone V'] = sets.nukeGearINT
	sets.midcast['Stone VI'] = sets.nukeGearINT
	sets.midcast['Stonega'] = sets.nukeGearINT
	sets.midcast['Stonega II'] = sets.nukeGearINT
	sets.midcast['Stonega III'] = sets.nukeGearINT
	sets.midcast['Stoneja'] = sets.nukeGearINT
	
	sets.midcast['Water'] = sets.nukeGearINT
	sets.midcast['Water II'] = sets.nukeGearINT
	sets.midcast['Water III'] = sets.nukeGearINT
	sets.midcast['Water IV'] = sets.nukeGearINT
	sets.midcast['Water V'] = sets.nukeGearINT
	sets.midcast['Water VI'] = sets.nukeGearINT
	sets.midcast['Waterga'] = sets.nukeGearINT
	sets.midcast['Waterga II'] = sets.nukeGearINT
	sets.midcast['Waterga III'] = sets.nukeGearINT
	sets.midcast['Waterja'] = sets.nukeGearINT
	
	sets.midcast['Aero'] = sets.nukeGearINT
	sets.midcast['Aero II'] = sets.nukeGearINT
	sets.midcast['Aero III'] = sets.nukeGearINT
	sets.midcast['Aero IV'] = sets.nukeGearINT
	sets.midcast['Aero V'] = sets.nukeGearINT
	sets.midcast['Aero VI'] = sets.nukeGearINT
	sets.midcast['Aeroga'] = sets.nukeGearINT
	sets.midcast['Aeroga II'] = sets.nukeGearINT
	sets.midcast['Aeroga III'] = sets.nukeGearINT
	sets.midcast['Aeroja'] = sets.nukeGearINT
	
	sets.midcast['Fire'] = sets.nukeGearINT
	sets.midcast['Fire II'] = sets.nukeGearINT
	sets.midcast['Fire III'] = sets.nukeGearINT
	sets.midcast['Fire IV'] = sets.nukeGearINT
	sets.midcast['Fire V'] = sets.nukeGearINT
	sets.midcast['Fire VI'] = sets.nukeGearINT
	sets.midcast['Firaga'] = sets.nukeGearINT
	sets.midcast['Firaga II'] = sets.nukeGearINT
	sets.midcast['Firaga III'] = sets.nukeGearINT
	sets.midcast['Firaja'] = sets.nukeGearINT
	
	sets.midcast['Blizzard'] = sets.nukeGearINT
	sets.midcast['Blizzard II'] = sets.nukeGearINT
	sets.midcast['Blizzard III'] = sets.nukeGearINT
	sets.midcast['Blizzard IV'] = sets.nukeGearINT
	sets.midcast['Blizzard V'] = sets.nukeGearINT
	sets.midcast['Blizzard VI'] = sets.nukeGearINT
	sets.midcast['Blizzaga'] = sets.nukeGearINT
	sets.midcast['Blizzaga II'] = sets.nukeGearINT
	sets.midcast['Blizzaga III'] = sets.nukeGearINT
	sets.midcast['Blizzaja'] = sets.nukeGearINT
	
	sets.midcast['Thunder'] = sets.nukeGearINT
	sets.midcast['Thunder II'] = sets.nukeGearINT
	sets.midcast['Thunder III'] = sets.nukeGearINT
	sets.midcast['Thunder IV'] = sets.nukeGearINT
	sets.midcast['Thunder V'] = sets.nukeGearINT
	sets.midcast['Thunder VI'] = sets.nukeGearINT
	sets.midcast['Thundaga'] = sets.nukeGearINT
	sets.midcast['Thundaga II'] = sets.nukeGearINT
	sets.midcast['Thundaga III'] = sets.nukeGearINT
	sets.midcast['Thundaja'] = sets.nukeGearINT

	sets.midcast['Sleep'] = sets.enfeebleGear
	sets.midcast['Sleep II'] = sets.enfeebleGear
	sets.midcast['Sleepga'] = sets.enfeebleGear
	sets.midcast['Blind'] = sets.enfeebleGear
	sets.midcast['Poison'] = sets.enfeebleGear
	sets.midcast['Poison II'] = sets.enfeebleGear
	sets.midcast['Bind'] = sets.enfeebleGear
	sets.midcast['Dispel'] = sets.enfeebleGear
	sets.midcast['Gravity'] = sets.enfeebleGear
	sets.midcast['Distract'] = sets.enfeebleGear
	sets.midcast['Frazzle'] = sets.enfeebleGear
	sets.midcast['Bio'] = sets.enfeebleGear
	sets.midcast['Bio II'] = sets.enfeebleGear
	

	
	sets.precast.FC.Cure = set_combine(
		sets.precast.FC, {
			body = "Heka's Kalasiris",
			feet = "Vanya Clogs"
		}
	)
	
	sets.midcast['Absorb-TP'] = set_combine(
		sets.precast.FC, {
			hands = "Heath. Gauntlets +1"
		}
	)
	
	sets.midcast['Dread Spikes'] = set_combine(
		sets.precast.FC, {
			body = "Heath. Cuirass +1"
		}
	)
	
	
	
	sets.midcast['Cursna'] = set_combine(
		sets.midcast['Cursna'], {
			body = "Ebers Bliaud +1",
			neck = "Henic torque",
			legs = "Piety Pantaloons +1",
			feet = "Vanya Clogs",
			back = { 
				name = "Alaunus's Cape", 
				augments = {
					'STR+20',
					'Accuracy+20 Attack+20',
					'Accuracy+2',
					'Weapon skill damage +10%'
				}
			},	
		}
	)
	sets.midcast['Aquaveil'] = set_combine(
		sets.midcast['Aquaveil'], {
			head = "Chironic Hat"	
		}
	)
	
	sets.midcast['Protectra V'] = set_combine(
		sets.midcast['Protectra V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	sets.midcast['Protect V'] = set_combine(
		sets.midcast['Protect V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	sets.midcast['Shellra V'] = set_combine(
		sets.midcast['Shellra V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	sets.midcast['Shell V'] = set_combine(
		sets.midcast['Shell V'], {
			ring2 = "Sheltered Ring"	
		}
	)
	
	-- include('ALLitems.lua')

end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.OffenseMode.value == "Normal" then
        equip(sets.normal)
    elseif state.OffenseMode.value == "Melee" then
        equip(sets.TP)
	elseif state.OffenseMode.value == "Super" then
		equip(sets.PDT)
    end
end