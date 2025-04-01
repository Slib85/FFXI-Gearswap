function contains(list, x)
	for _, v in pairs(list) do
		if v == x then return true end
	end
	return false
end

-- function remove(list, str)
--    for i = 1, table.getn(list) do
--        if list[i] == str then
--            table.remove(list, i)  
--            return list
--        end
--    end
--
--    return list
--end

active_buffs = {}

include("lib/weapon_skills.lua")
include("lib/magic.lua")
include("lib/items.lua")
include("lib/abilities.lua")
include("lib/pet_abilities.lua")
include("lib/precast.lua")
include("lib/midcast.lua")
include("lib/aftercast.lua")