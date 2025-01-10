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
    ZERO = 48,
    ONE = 49,
    TWO = 50,
    THREE = 51,
    FOUR = 52,
    FIVE = 53,
    SIX = 54,
    SEVEN = 55,
    EIGHT = 56,
    NINE = 57,
    ENTER = 17,
    SPACE = 32,
    DOT = 46,
    HYPHEN = 45,
    PLUS = 43,
    COMMA = 44,
    EQUALS = 61,
    OPEN_BRACKET = 91,
    CLOSE_BRACKET = 93,
    SLASH  = 47,
    BACKSLASH = 92,
    SEMICOLON = 59
}

UTILS.OBJECT_TYPES = {
    OBJECT = 0,
    NPC = 1,
    PLAYER = 2,
    GROUND_ITEM = 3,
    HIGHLIGHT = 4,
    PROJECTILE = 5,
    TILE = 8,
    WALL_TILE = 12,
    ALL = -1
}

local MAX_IDLE_TIME_MINUTES = 5

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
    local random_time = math.random((MAX_IDLE_TIME_MINUTES * 60) * 0.6, (MAX_IDLE_TIME_MINUTES * 60) * 0.9)
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

function UTILS.wpoint_from_obj(object)
    if object and object.Tile_XYZ then
        return WPOINT.new(object.Tile_XYZ.x, object.Tile_XYZ.y, object.Tile_XYZ.z)
    end
end

local instance = UTILS.new()
return instance
