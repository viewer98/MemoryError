local API = require("api")
local UTILS = require("viewer_utils")

local acadia_tree_id = 109007
local bank_chest_id = 107737
local wood_box_id = -1
local wood_box_capacity_per_item = 0

local acadia_trees_locations = {
    [3180] = {
        [2747] = true,
        [2753] = true
    }
}

API.SetDrawTrackedSkills(true)

for key, wbox_id in pairs(UTILS.WOOD_BOX_IDS) do
    if Inventory:Contains(wbox_id) then
        wood_box_id = wbox_id
        print("Found a wood box: ", key)
        break
    end
end

if wood_box_id > 0 then
    wood_box_capacity_per_item = UTILS.get_wood_box_current_capacity_per_item(wood_box_id)
    print("Wood box capacity per item: ", tostring(wood_box_capacity_per_item))
end

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

local SCRIPT_STATE = {
    IDLE = 1,
    CHOPPING_LOGS = 2,
    FILLING_WOOD_BOX = 3,
    OPENING_BANK = 4,
    EMPTYING_WOOD_BOX = 5,
    DEPOSIT_LOGS = 6,
    CLOSING_BANK = 7,
}

local function get_script_state_key(value)
    for k, v in pairs(SCRIPT_STATE) do
        if v == value then
            return k
        end
    end
end

local function random_sleep()
    UTILS.sleep_range(500, 5000)
end

local function get_current_state()
    if API.PlayerLoggedIn() then
        print("We are logged in")
        if API.BankOpen2() then
            print("Bank is open")
            if wood_box_id > 0 then
                print("We have a wood box")
                if UTILS.count_wood_box_individual_items() > 0 then
                    print("We need to empty the wood box into the bank")
                    return SCRIPT_STATE.EMPTYING_WOOD_BOX
                elseif Inventory:Contains(UTILS.LOG_IDS.ACADIA) then
                    print("We need to deposit the logs from our inventory into the bank")
                    return SCRIPT_STATE.DEPOSIT_LOGS
                else
                    print("We need to close the bank")
                    return SCRIPT_STATE.CLOSING_BANK
                end
            else
                print("We don't have a wood box")
                if Inventory:Contains(UTILS.LOG_IDS.ACADIA) then
                    print("We need to deposit our logs into the bank")
                    return SCRIPT_STATE.DEPOSIT_LOGS
                else
                    print("We need to close the bank")
                    return SCRIPT_STATE.CLOSING_BANK
                end
            end
        else
            print("Bank is not open")
            if UTILS.is_local_player_idle() then
                print("Our player is not animating and not moving")
                if Inventory:IsFull() then
                    print("Inventory is full")
                    if wood_box_id > 0 then
                        print("We have a wood box")
                        if UTILS.get_wood_box_item_count(UTILS.LOG_IDS.ACADIA) >= wood_box_capacity_per_item then
                            print("Wood box is full, we need to open the bank")
                            return SCRIPT_STATE.OPENING_BANK
                        else
                            print("Wood box still has space, let's fill it")
                            return SCRIPT_STATE.FILLING_WOOD_BOX
                        end
                    else
                        print("Let's open the bank")
                        return SCRIPT_STATE.OPENING_BANK
                    end
                else
                    print("Let's chop logs")
                    return SCRIPT_STATE.CHOPPING_LOGS
                end
            end
        end
    end

    print("Nothing else returned, we're idling now")
    return SCRIPT_STATE.IDLE
end

local function chop()
    random_sleep()
    local acadia_tree = get_available_acadia_tree()
    if acadia_tree then
        print("Found a tree, let's try to chop it")
        API.DoAction_Object_Direct(0x3b, API.OFF_ACT_GeneralObject_route0, acadia_tree)
        UTILS.sleep_range(500, 800)
    else
        print("Tree not found")
    end
end

local function fill_wood_box()
    random_sleep()
    print("Filling wood box")
    API.DoAction_Inventory1(wood_box_id, 0, 1, API.OFF_ACT_GeneralInterface_route)
    UTILS.sleep_range(500, 600)
end

local function open_bank()
    random_sleep()
    print("Bank is not open, trying to open it")
    API.DoAction_Object1(0x5, API.OFF_ACT_GeneralObject_route1, { bank_chest_id }, 50)
    UTILS.sleep_range(500, 600)
end

local function empty_wood_box()
    print("Emptying wood box")
    API.DoAction_Bank_Inv(wood_box_id, 8, API.OFF_ACT_GeneralInterface_route2)
    UTILS.sleep_range(500, 600)
end

local function deposit_logs()
    print("Depositing logs")
    API.DoAction_Bank_Inv(UTILS.LOG_IDS.ACADIA, 7, API.OFF_ACT_GeneralInterface_route2)
    UTILS.sleep_range(500, 600)
end

local function close_bank()
    print("Bank is open, trying to close it")
    API.DoAction_Interface(0x24, 0xffffffff, 1, 517, 318, -1, API.OFF_ACT_GeneralInterface_route)
    UTILS.sleep_range(500, 600)
end

while (API.Read_LoopyLoop()) do
    UTILS:anti_idle()

    local current_state = get_current_state()
    print(tostring(get_script_state_key(current_state)), " - ", tostring(current_state))

    if current_state == SCRIPT_STATE.CHOPPING_LOGS then
        chop()
    elseif current_state == SCRIPT_STATE.FILLING_WOOD_BOX then
        fill_wood_box()
    elseif current_state == SCRIPT_STATE.OPENING_BANK then
        open_bank()
    elseif current_state == SCRIPT_STATE.EMPTYING_WOOD_BOX then
        empty_wood_box()
    elseif current_state == SCRIPT_STATE.DEPOSIT_LOGS then
        deposit_logs()
    elseif current_state == SCRIPT_STATE.CLOSING_BANK then
        close_bank()
    end

    print("RAM usage: ", UTILS.get_formatted_memory_usage())
    UTILS.sleep_range(600, 1200)
end

package.loaded["api"] = nil
package.loaded["viewer_utils"] = nil
