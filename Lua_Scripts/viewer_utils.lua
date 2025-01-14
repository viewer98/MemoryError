local API = require("api")
local UTILS = {}

UTILS.__index = UTILS

function UTILS.new()
    -- constructor here
    local self = setmetatable({}, UTILS)
    self.afk = os.time()

    return self
end

UTILS.KEY_CODES = {
    ZERO          = 48,
    ONE           = 49,
    TWO           = 50,
    THREE         = 51,
    FOUR          = 52,
    FIVE          = 53,
    SIX           = 54,
    SEVEN         = 55,
    EIGHT         = 56,
    NINE          = 57,
    ENTER         = 17,
    SPACE         = 32,
    DOT           = 46,
    HYPHEN        = 45,
    PLUS          = 43,
    COMMA         = 44,
    EQUALS        = 61,
    OPEN_BRACKET  = 91,
    CLOSE_BRACKET = 93,
    SLASH         = 47,
    BACKSLASH     = 92,
    SEMICOLON     = 59
}

UTILS.OBJECT_TYPES = {
    OBJECT = 0,
    NPC = 1,
    PLAYER = 2,
    GROUND_ITEM = 3,
    HIGHLIGHT = 4,
    PROJECTILE = 5,
    TILE = 8,
    DECORATION = 12,
    ALL = -1
}

UTILS.LOG_IDS = {
    ACADIA = 40285
}

UTILS.QUEUED_ABILITY_BAR_VALUE = {
    NO_ABILITY_QUEUED = 0,
    MAIN_ACTION_BAR = 1003,
    FIRST_ADDITIONAL_BAR = 1032,
    SECOND_ADDITIONAL_BAR = 1033,
    THIRD_ADDITIONAL_BAR = 1034,
    FOURTH_ADDITIONAL_BAR = 1035
}

local MAX_IDLE_TIME_MINUTES = 5

UTILS.WoodBox = {
    CONTAINER_ID = 937,
    IDS = {
        REGULAR = 54895,
        OAK = 54897,
        WILLOW = 54899,
        TEAK = 54901,
        MAPLE = 54903,
        ACADIA = 54905,
        MAHOGANY = 54907,
        YEW = 54909,
        MAGIC = 54911,
        ELDER = 54913,
        ETERNAL_MAGIC = 58253
    }
}

UTILS.WoodBox.INITIAL_CAPACITIES = {
    [UTILS.WoodBox.IDS.REGULAR] = 70,
    [UTILS.WoodBox.IDS.OAK] = 80,
    [UTILS.WoodBox.IDS.WILLOW] = 90,
    [UTILS.WoodBox.IDS.TEAK] = 100,
    [UTILS.WoodBox.IDS.MAPLE] = 110,
    [UTILS.WoodBox.IDS.ACADIA] = 120,
    [UTILS.WoodBox.IDS.MAHOGANY] = 130,
    [UTILS.WoodBox.IDS.YEW] = 140,
    [UTILS.WoodBox.IDS.MAGIC] = 160,
    [UTILS.WoodBox.IDS.ELDER] = 160,
    [UTILS.WoodBox.IDS.ETERNAL_MAGIC] = 170,
}

function UTILS.WoodBox.get_current_capacity_per_item(wood_box_id)
    local current_wc_level = API.GetSkillByName("WOODCUTTING").level
    local total_number_increments = 0

    if current_wc_level < 5 then
        total_number_increments = 0
    elseif current_wc_level > 105 then
        total_number_increments = 11
    else
        total_number_increments = ((current_wc_level - 5) // 10) + 1
    end

    return UTILS.WoodBox.WOOD_BOX_INITIAL_CAPACITIES[wood_box_id] + (total_number_increments * 10)
end

function UTILS.WoodBox.get_item_count(item_id)
    local container_items = API.Container_Get_all(UTILS.WoodBox.CONTAINER_ID)
    local item_count = 0
    for _, item_data in pairs(container_items) do
        if item_data.item_id == item_id then
            item_count = item_count + item_data.item_stack
            break
        end
    end
    return item_count
end

function UTILS.WoodBox.count_unique_items()
    local container_items = API.Container_Get_all(UTILS.WoodBox.CONTAINER_ID)
    local item_count = 0
    for _, item_data in pairs(container_items) do
        if item_data.item_id > 0 then
            item_count = item_count + 1
        end
    end
    return item_count
end

function UTILS.get_current_level(skill_name)
    return API.GetSkillByName(skill_name).level
end

function UTILS.is_ability_queuing_enabled()
    return API.VB_FindPSett(627, 0).state & 512 == 0
end

function UTILS.get_formatted_memory_usage()
    local memory_kb = collectgarbage("count")
    if memory_kb >= 1024 then
        return string.format("%.2f MB", memory_kb / 1024)
    else
        return string.format("%.2f KB", memory_kb)
    end
end

---@return boolean
function UTILS:anti_idle()
    math.randomseed(os.time())
    local time_diff = os.difftime(os.time(), self.afk)
    local max_idle_time_minutes = MAX_IDLE_TIME_MINUTES * 60
    local random_time = math.random(max_idle_time_minutes * 0.4, max_idle_time_minutes * 0.8)
    if time_diff > random_time then
        API.PIdle2()
        self.afk = os.time()
        return true
    end
    return false
end

function UTILS.sleep(time_milliseconds)
    return API.RandomSleep2(time_milliseconds, 0, 0)
end

function UTILS.sleep_range(min_sleep_milliseconds, max_sleep_milliseconds)
    math.randomseed(os.time())
    UTILS.sleep(math.random(min_sleep_milliseconds, max_sleep_milliseconds))
end

---Returns a pseudo-random 1 decimal point float within a given range
---@param min number
---@param max number
---@return number
function UTILS.random_float(min, max)
    local range = max - min
    local randomValue = math.random() * range + min
    return math.floor(randomValue * 10) / 10
end

---@param timeout_seconds number
---@param timeout_reset_condition function|boolean
---@param condition function
---@return boolean
function UTILS.wait_for_condition(condition, timeout_reset_condition, timeout_seconds)
    local start_time = os.clock()
    local time_running = 0

    while API.Read_LoopyLoop() and API.PlayerLoggedIn() do
        local timeout_reached = time_running >= timeout_seconds

        if condition() then
            return true
        end

        if timeout_reached then
            return false
        end

        if timeout_reset_condition and timeout_reset_condition() then
            print("Timeout reset condition is true this time")
            start_time = os.clock()
        end

        time_running = os.clock() - start_time
        UTILS.sleep(100)
    end
    return false
end

function UTILS.wait_for_player_to_start_moving()
    UTILS.wait_for_condition(function()
        print("Waiting for player to start moving")
        return API.ReadPlayerMovin()
    end, false, UTILS.random_float(1.5, 3)
    )
end

function UTILS.is_local_player_animating()
    return API.ReadPlayerAnim() > 0
end

function UTILS.is_local_player_moving()
    return API.ReadPlayerMovin2()
end

function UTILS.is_local_player_idle()
    return not UTILS.is_local_player_animating() and not UTILS.is_local_player_moving()
end

function UTILS.wpoint_from_obj(object)
    if object and object.Tile_XYZ then
        return WPOINT.new(object.Tile_XYZ.x, object.Tile_XYZ.y, object.Tile_XYZ.z)
    end
end

local instance = UTILS.new()
return instance
