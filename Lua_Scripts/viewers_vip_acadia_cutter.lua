local API = require("api")
local UTILS = require("viewer_utils")

local acadia_tree_id = 109007
local bank_chest_id = 107737

local acadia_trees_locations = {
    [3180] = {
        [2747] = true,
        [2753] = true
    }
}

local animating = false

API.SetDrawTrackedSkills(true)

local function get_available_acadia_tree()
    local objs = API.ReadAllObjectsArray({ UTILS.OBJECT_TYPES.OBJECT }, { acadia_tree_id }, {})
    for _, obj in ipairs(objs) do
        if obj.Bool1 == 0 then -- this means the tree is a valid object to interact
            local x = math.floor(obj.Tile_XYZ.x)
            local y = math.floor(obj.Tile_XYZ.y)
            if acadia_trees_locations[x] and acadia_trees_locations[x][y] then
                return obj
            end
        end
    end
    return nil
end

local function deposit_logs()
    if not UTILS.is_local_player_animating() then
        if not API.BankOpen2() then
            print("Bank is not open, trying to open it")
            API.DoAction_Object1(0x5, API.OFF_ACT_GeneralObject_route1, { bank_chest_id }, 50)

            UTILS.wait_for_condition(function()
                print("Waiting for bank to be open")
                return API.BankOpen2()
            end, function()
                return API.ReadPlayerMovin()
            end, UTILS.random_float(1.8, 3)
            )
        else
            print("Bank is open, trying to deposit inventory")
            API.DoAction_Interface(0xffffffff, 0xffffffff, 1, 517, 39, -1, API.OFF_ACT_GeneralInterface_route)
            UTILS.wait_for_condition(function()
                print("Waiting for inventory to not be full")
                return not API.InvFull_()
            end, false, UTILS.random_float(1.8, 3)
            )
        end
    end
end

local function close_bank()
    print("Bank is open, trying to close it")
    API.DoAction_Interface(0x24, 0xffffffff, 1, 517, 318, -1, API.OFF_ACT_GeneralInterface_route)
    UTILS.wait_for_condition(function()
        print("Waiting for bank to be closed")
        return not API.BankOpen2()
    end, false, UTILS.random_float(0.5, 1.5)
    )
end

local function chop_tree()
    if not UTILS.is_local_player_animating() then
        print("Player is not animating")
        local acadia_tree = get_available_acadia_tree()
        if acadia_tree then
            if not animating or acadia_tree.Distance >= 2 then
                print("Found a tree, let's try to chop it")
                API.DoAction_Object_Direct(0x3b, API.OFF_ACT_GeneralObject_route0, acadia_tree)
                UTILS.wait_for_condition(function()
                    print("Waiting for player to start animating")
                    return UTILS.is_local_player_animating() or acadia_tree == nil
                end, function()
                    return API.ReadPlayerMovin()
                end, UTILS.random_float(1.8, 3)
                )
            elseif animating and acadia_tree.Distance < 2 then
                print("This tree was cut down but hasn't disappeared yet, let's wait.")
            end
            animating = false
        else
            print("Tree not found")
        end
    else
        animating = true
        print("Looks like we are animating")
    end
end

while (API.Read_LoopyLoop()) do
    UTILS:anti_idle()
    if API.InvFull_() then
        print("Inventory is full")
        deposit_logs()
    else
        print("Inventory is not full")
        if API.BankOpen2() then
            close_bank()
        else
            print("Bank is not open")
            chop_tree()
        end
    end
    print("RAM usage: ", UTILS.get_formatted_memory_usage())
    UTILS.sleep_range(300, 1200)
end

package.loaded["api"] = nil
package.loaded["viewer_utils"] = nil
