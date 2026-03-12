res = require('resources')

function contains(list, x)
	for _, v in pairs(list) do
		if v == x then return true end
	end
	return false
end

function item_exists(item_name)
    local items = windower.ffxi.get_items()
    for _, bag in pairs(items) do
        if type(bag) == 'table' and bag.enabled ~= nil then
            for _, item in pairs(bag) do
                if type(item) == 'table' and item.id and item.id ~= 0 then
                    local item_res = res.items[item.id]
                    if item_res and item_res.name:lower() == item_name:lower() then
                        return true
                    end
                end
            end
        end
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
include("lib/binds.lua")