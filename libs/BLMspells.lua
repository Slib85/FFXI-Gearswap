
	sets.midcast.Cure = sets.cureGear

	sets.midcast['Sneak'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Invisible'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Deodorize'] = set_combine(sets.buffGear, sets.buffGearDuration)
	--send_command('input /console cancel 446')
	sets.midcast['Sandstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Sandstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Rainstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Rainstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Windstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Windstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Firestorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Firestorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Hailstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Hailstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Thunderstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Thunderstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Aurorastorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Aurorastorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Voidstorm'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Voidstorm II'] = set_combine(sets.buffGear, sets.buffGearDuration)

	sets.midcast['Blink'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Aquaveil'] = set_combine(set_combine(sets.buffGearDuration, sets.buffGear), {hands="Regal Cuffs", head="Amalric Coif +1", waist="Emphatikos rope", feet="Amalric Nails +1"})
	sets.midcast['Refresh'] = set_combine(sets.buffGear, sets.buffGearDuration, {
		head="Amalric Coif +1",
		waist="Gishdubar Sash",
	})
	sets.midcast['Auspice'] = sets.buffGear
	sets.midcast['Blaze Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Ice Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Shock Spikes'] = set_combine(sets.buffGearDuration, sets.buffGear)

	sets.midcast['Curaga'] = sets.cureGear
	sets.midcast['Curaga II'] = sets.cureGear
	
	sets.midcast['Regen'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen II'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen III'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen IV'] = set_combine(sets.buffGear, sets.buffGearDuration)
	sets.midcast['Regen V'] = set_combine(sets.buffGear, sets.buffGearDuration)

	sets.midcast['Barstonra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barwatera'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Baraera'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barfira'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblizzara'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barthundra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsleepra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpoisonra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barparalyzra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblindra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsilencera'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpetra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barvira'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Baramnesra'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barstone'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barwater'] = set_combine(sets.buffGearDuration, sets.buffGear)     
	sets.midcast['Baraero'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barfire'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblizzard'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barthunder'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsleep'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpoison'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barparalyze'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barblind'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barsilence'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barpetrify'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Barvirus'] = set_combine(sets.buffGearDuration, sets.buffGear)
	sets.midcast['Baramnesia'] = set_combine(sets.buffGearDuration, sets.buffGear)

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

	sets.midcast['Haste'] = set_combine(sets.buffGear, sets.buffGearDuration)

	sets.midcast['Comet'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		ring2="Archon Ring"
	})

	sets.midcast['Death'] = set_combine(sets.nukeGear, {
		head="Pixie Hairpin +1",
		body="Amalric Doublet +1",
		feet="Amalric Nails +1",
		ring2="Archon Ring",
	})

	sets.midcast['Meteor'] = set_combine(sets.nukeGear, {
		body="Amalric Doublet +1",
		waist="Acuity Belt +1"
	})

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

	sets.midcast['Quake'] = sets.nukeGear
	sets.midcast['Quake II'] = sets.nukeGear
	sets.midcast['Flood'] = sets.nukeGear
	sets.midcast['Flood II'] = sets.nukeGear
	sets.midcast['Tornado'] = sets.nukeGear
	sets.midcast['Tornado II'] = sets.nukeGear
	sets.midcast['Flare'] = sets.nukeGear
	sets.midcast['Flare II'] = sets.nukeGear
	sets.midcast['Freeze'] = sets.nukeGear
	sets.midcast['Freeze II'] = sets.nukeGear
	sets.midcast['Burst'] = sets.nukeGear
	sets.midcast['Burst II'] = sets.nukeGear

	sets.midcast['Poison'] = sets.enfeebleGearINT
	sets.midcast['Poison II'] = sets.enfeebleGearINT
	sets.midcast['Poisonga'] = sets.enfeebleGearINT
	
	sets.midcast['Distract'] = sets.enfeebleGearINT
	sets.midcast['Frazzle'] = sets.enfeebleGearINT

	sets.midcast['Slow'] = sets.enfeebleGearMND
	sets.midcast['Paralyze'] = sets.enfeebleGearMND
	sets.midcast['Silence'] = sets.enfeebleGearMND
	sets.midcast['Blind'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Gravity'] = sets.enfeebleGearINT
	sets.midcast['Dispel'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.precast['Dispelga'] = {
		main="Daybreak",
	}
	sets.midcast['Dispelga'] = set_combine(sets.enfeebleGearINT, {
		main="Daybreak",
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Sleep'] = sets.enfeebleGearINT
	sets.midcast['Sleep II'] = sets.enfeebleGearINT
	sets.midcast['Sleepga'] = sets.enfeebleGearINT
	sets.midcast['Sleepga II'] = sets.enfeebleGearINT
	sets.midcast['Break'] = sets.enfeebleGearINT
	sets.midcast['Breakga'] = sets.enfeebleGearINT
	sets.midcast['Bind'] = sets.enfeebleGearINT
	sets.midcast['Stun'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})

	sets.midcast['Absorb-STR'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-DEX'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-VIT'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-INT'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-AGI'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-CHR'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-MND'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})
	sets.midcast['Absorb-TP'] = set_combine(sets.enfeebleGearINT, {
		hands="Spaekona's Gloves +3",
	})


	sets.midcast['Geohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Hydrohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Anemohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Pyrohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Cryohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Ionohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Noctohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Luminohelix'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Geohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Hydrohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Anemohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Pyrohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Cryohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Ionohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Noctohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})
	sets.midcast['Luminohelix II'] = set_combine(sets.lowTierNukeGear, {body = "Mallquis Saio +2"})


	sets.midcast['Drain'] = set_combine(sets.enfeebleGearINT, sets.drainGear);
	sets.midcast['Aspir'] = set_combine(sets.enfeebleGearINT, sets.aspirGear);
	sets.midcast['Aspir II'] = set_combine(sets.enfeebleGearINT, sets.aspirGear);
	sets.midcast['Aspir III'] = set_combine(sets.enfeebleGearINT, sets.aspirGear);
	sets.midcast['Stoneskin'] = set_combine(set_combine(sets.buffGearDuration, sets.buffGear), {
		waist="Siegel Sash",
		neck="Nodens Gorget"
	})