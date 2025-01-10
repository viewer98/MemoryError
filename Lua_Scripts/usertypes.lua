--define members of userdata here
--some notes: Lua stores all numbers in 8 bytes size. number vs integer = same thing.
--string for text.
--any type: just pass any kind of data object, basically a pointer pass,
--can even peek at members if we exactly know what we are dealing with.
--boolean: c++ != bool here, I dont understand

---@class returntext
---@field Name string
---@field Nr number

---@class QWPOINT
---@field bottom number
---@field right number
---@field left number
---@field top number

---@class WPOINT
---@field x number
---@field y number
---@field z number

---@class FFPOINT
---@field x number
---@field y number
---@field z number

---@class Abilitybar
---@field slot number
---@field id number
---@field name string
---@field hotkey string
---@field cooldown_timer number
---@field info IInfo
---@field action string
---@field enabled boolean

---@class AllObject
---@field Mem number
---@field MemE number
---@field TileX number
---@field TileY number
---@field TileZ number
---@field Id number
---@field Life number
---@field Anim number
---@field Name string
---@field Action string
---@field Floor number
---@field Amount number
---@field Type number
---@field Bool1 number
---@field ItemIndex number
---@field ViewP number
---@field ViewF number
---@field Distance number
---@field Cmb_lv number
---@field Unique_Id number
---@field CalcX number
---@field CalcY number
---@field Tile_XYZ FFPOINT
---@field Pixel_XYZ WPOINT

---@class Bbar
---@field id number
---@field found boolean
---@field text string
---@field conv_text number

---@class ChatTexts
---@field name string
---@field text string
---@field text_extra1 string
---@field text_extra2 string
---@field mem_loc number
---@field pc_time_stamp number
---@field pos_found number
---@field time_total number

---@class VB
---@field state number
---@field addr number
---@field indexaddr_orig number
---@field id number
---@field FSarray number
---@field Levels_deep number

---@class IInfo
---@field x number
---@field xs number
---@field y number
---@field ys number
---@field box_x number
---@field box_y number
---@field scroll_y number
---@field id1 number
---@field id2 number
---@field id3 number
---@field itemid1 number
---@field itemid1_size number
---@field itemid2 number
---@field hov boolean
---@field textids string
---@field textitem string
---@field memloc number
---@field memloctop number
---@field index number
---@field fullpath string
---@field fullIDpath string
---@field notvisible boolean
---@field OP number
---@field xy number

---@class InterfaceComp5
---@field id1 number
---@field id2 number
---@field id3 number
---@field memloc number

---@class IG_answer
---@field box_name string
---@field box_start FFPOINT{0,0,0}
---@field box_size FFPOINT{0,0,0}
---@field colour ImColor{0,0,0}
---@field radius number
---@field thickness number
---@field how_many_sec number
---@field box_ticked boolean
---@field return_click boolean
---@field remove boolean
---@field int_value number
---@field mem_local number
---@field mem_global number
---@field string_value string
---@field stringsArr userdata --vector<string>
---@field string_input string

---@class ImColor
---@field red number
---@field green number
---@field blue number
---@field alpha number

---@class Skill
---@field interfaceIdx number
---@field id number
---@field name string
---@field xp number
---@field level number
---@field boostedLevel number
---@field vb number

---@class inv_Container_struct
---@field item_id number
---@field item_stack number
---@field item_slot number
---@field Extra_mem table
---@field Extra_ints table

---@class inv_Container
---@field id number
---@field ID_stack number
---@field Extra inv_Container_struct

---@class TrackedSkill
---@field id number
---@field name string
---@field startXP number
---@field currentXP number
---@field color ImColor{0,0,0}

---@class EventData
---@field name string
---@field text string
---@field timestamp1 number --millisecs
---@field timestamp2 string --date
---@field timestamp3 number --tick
---@field skillIndex number
---@field skillName string
---@field exp number
---@field ItemID number
---@field ItemAM number

---@class Target_data
---@field Target_Name string
---@field Hit_percent number
---@field Cmb_lv number
---@field Hitpoints number
---@field Buff_stack table
