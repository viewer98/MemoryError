local API = require("api")
local UTILS = require("viewer_utils")

local bank_chest_id = 107497
local fishing_spot_id = 24572
local fishing_bait = 313

API.SetDrawTrackedSkills(true)

local function is_interacting_with_fishing_spot()
    local interacting_entity_name = tostring(API.Local_PlayerInterActingWith_())
    return interacting_entity_name == "Fishing spot"
end

while (API.Read_LoopyLoop()) do
    UTILS:anti_idle()
    if (not is_interacting_with_fishing_spot()) then
        print("We're not fishing")
        if API.InvFull_() then
            print("Inventory is full")
            if not API.ReadPlayerMovin() then
                print("We're not moving, clicking on the bank chest")
                API.DoAction_Object1(0x29, API.GeneralObject_route_useon, { bank_chest_id }, 50)

                UTILS.wait_for_condition(function()
                    print("Waiting for inventory to not be full")
                    return not API.InvFull_()
                end, function()
                    return API.ReadPlayerMovin()
                end, UTILS.random_float(1.8, 3)
                )
            end
        else
            print("Inventory is not full, let's fish")
            API.DoAction_NPC(0x3c, API.OFF_ACT_InteractNPC_route, { fishing_spot_id }, 50)

            UTILS.wait_for_condition(function()
                print("Waiting for player to interact with fishing spot")
                return is_interacting_with_fishing_spot()
            end, function()
                return API.ReadPlayerMovin()
            end, UTILS.random_float(1.8, 3)
            )
        end
    else
        print("Looks like we're fishing")
    end
    UTILS.sleep_range(300, 1200)
end

package.loaded["api"] = nil
package.loaded["viewer_utils"] = nil