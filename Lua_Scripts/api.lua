local API = {}

--- API Version will increase with breaking changes
API.VERSION = 1.032

--[[
Known shortcuts
Ctrl+shift == mark tiles
Insert == disable rendering
Home == hide focus window
Ctrl+home == unhide window
End == end Script
Page_up == disable ImGui
Page_down == enable ImGui
]]--

--- General action on some objects, like bank chest
API.OFF_ACT_GeneralObject_route00 = GeneralObject_route00

--- General action on some objects, like bank chest
API.OFF_ACT_GeneralObject_route0 = GeneralObject_route0

--- General action on some objects
API.OFF_ACT_GeneralObject_route1 = GeneralObject_route1

--- General action on some objects
API.OFF_ACT_GeneralObject_route2 = GeneralObject_route2

--- General action on some objects
API.OFF_ACT_GeneralObject_route3 = GeneralObject_route3

--- default act npc 0x29
API.OFF_ACT_InteractNPC_route = InteractNPC_route

--- default attack npc
API.OFF_ACT_AttackNPC_route = AttackNPC_route

--- second option
API.OFF_ACT_InteractNPC_route2 = InteractNPC_route2

--- third option
API.OFF_ACT_InteractNPC_route3 = InteractNPC_route3

--- fourth option
API.OFF_ACT_InteractNPC_route4 = InteractNPC_route4

--- default item pickup
API.OFF_ACT_Pickup_route = Pickup_route

--- walk to tile
API.OFF_ACT_Walk_route = Walk_route

--- special face route for bladed dive, familiar attack, use in inv
API.OFF_ACT_Bladed_interface_route = Bladed_interface_route

--- option in chat box
API.OFF_ACT_GeneralInterface_Choose_option = GeneralInterface_Choose_option

---
API.OFF_ACT_Vs_player_attack_route = Vs_player_attack_route

--- General action on lootwindow, also most numbererfaces
API.OFF_ACT_GeneralInterface_route = GeneralInterface_route

--- note stuff, use item on empty inv spot, use item on item
API.OFF_ACT_GeneralInterface_route1 = GeneralInterface_route1

--- take bob/store bob/drop items
API.OFF_ACT_GeneralInterface_route2 = GeneralInterface_route2

---
API.OFF_ACT_Vs_player_follow_route = Vs_player_follow_route

---
API.OFF_ACT_Vs_player_trade_route = Vs_player_trade_route

--- Bladed dive teleport
API.OFF_ACT_Special_walk_route = Special_walk_route

--- use on fire
API.GeneralObject_route_useon = GeneralObject_route_useon

--- somtimes text on interface
---@return number
API.I_00textP = I_00textP

--- somtimes other text on interface
---@return number
API.I_itemids3 = I_itemids3

--- somtimes item ids
---@return number
API.I_itemids = I_itemids

--- somtimes item stack size
---@return number
API.I_itemstack = I_itemstack

-------osrs test-------------------

---Sleep ticks
function API.OSRS_SleepTick(count)
	return OSRS_SleepTick(count)
end

---Random empty action
function API.OSRS_DoAction_Empty()
	return OSRS_DoAction_Empty()
end

--actions for npcs
--[[
//9 talk
//10 attack
//11 pickpock or trade/rewards/bank
//12 collect
//13 ask
]]--
---@param id number look from all debug NPC[1]
---@param operation number Look from doaction debug
---@param distance number distance from localplayer
---@return boolean
function API.OSRS_DoAction_NPC(id,operation,distance)
	return OSRS_DoAction_NPC(id,operation,distance)
end

--actions for other players
--[[
]]--
---@param id number look from all debug
---@param operation number Look from doaction debug
---@param distance number distance from localplayer
---@return boolean
function API.OSRS_DoAction_Player(id,operation,distance)
	return OSRS_DoAction_Player(id,operation,distance)
end

--[[
//4 use
//5 collect
]]--
---@param id number look from all debug [12]
---@param operation number Look from doaction debug
---@param distance number distance from localplayer
---@return boolean
function API.OSRS_DoAction_DOBJ(id,operation,distance)
	return OSRS_DoAction_DOBJ(id,operation,distance)
end

--[[
//20 take
//21 light
]]--
---@param id number look from all debug [3]
---@param operation number Look from doaction debug
---@param distance number distance from localplayer
---@return boolean
function API.OSRS_DoAction_GI(id,operation,distance)
	return OSRS_DoAction_GI(id,operation,distance)
end

--[[
]]--
---@param id1 number
---@param id2 number
---@param id3 number
---@param operation number
---@param menu number
---@param x number
---@param y number
---@param itemid number somehas some dont
---@return boolean
function API.OSRS_DoAction_Interface(id1,id2,id3,operation,menu,x,y,itemid)
	return OSRS_DoAction_Interface(id1,id2,id3,operation,menu,x,y,itemid)
end

---@param Tile WPOINT Global tile
---@return boolean
function API.OSRS_DoAction_Tile(Tile)
	return OSRS_DoAction_Tile(Tile)
end

---@return number
function API.OSRS_GetHPoints()
	return OSRS_GetHPoints()
end

---@return number
function API.OSRS_GetPrayPoints()
	return OSRS_GetPrayPoints()
end

---@return number
function API.OSRS_GetHPointPerc()
	return OSRS_GetHPointPerc()
end

---@return number
function API.OSRS_GetPrayPointsPerc()
	return OSRS_GetPrayPointsPerc()
end

---@return number
function API.OSRS_GetRunEnergy()
	return OSRS_GetRunEnergy()
end

---@return boolean
function API.OSRS_GetRunEnergyStatus()
	return OSRS_GetRunEnergyStatus()
end

---@return number
function API.OSRS_GetSpecialEnergy()
	return OSRS_GetSpecialEnergy()
end

---@return boolean
function API.OSRS_GetQuickPrayStatus()
	return OSRS_GetQuickPrayStatus()
end

---@return boolean
function API.OSRS_DoQuickPray()
	return OSRS_DoQuickPray()
end

---@return boolean
function API.OSRS_DoRunEnergy()
	return OSRS_DoRunEnergy()
end

---@return boolean
function API.OSRS_DoSpecialAttack()
	return OSRS_DoSpecialAttack()
end

--[[
1	Thick Skin
4	Burst of Strength
7	Clarity of Thought
8	Sharp Eye
9	Mystic Will
10	Rock Skin
13	Superhuman Strength
16	Improved Reflexes
19	Rapid Restore
22	Rapid Heal
25	Protect Item
26	Hawk Eye
27	Mystic Lore
28	Steel Skin
31	Ultimate Strength
34	Incredible Reflexes
37	Protect from Magic
40	Protect from Missiles
43	Protect from Melee
44	Eagle Eye
45	Mystic Might
46	Retribution
49	Redemption
52	Smite
55	Preserve
60	Chivalry
70	Piety
74	Rigour
77	Augury
]]--
---@param praytocheck number
---@return boolean
function API.OSRS_GetPrayProtect(praytocheck)
	return OSRS_GetPrayProtect(praytocheck)
end

---@param praytocheck number
---@return number
function API.OSRS_DoPrayProtect(praytocheck)
	return OSRS_DoPrayProtect(praytocheck)
end

---@return number
function API.OSRS_GetCurrentMenuOpen()
	return OSRS_GetCurrentMenuOpen()
end

--from 0-12
---@param menunr number
---@return number
function API.OSRS_OpenMenu(menunr)
	return OSRS_OpenMenu(menunr)
end

---@return table|IInfo
function API.OSRS_ReadInvArrays()
	return OSRS_ReadInvArrays()
end

---@return table|IInfo
function API.OSRS_ReadBankArrays()
	return OSRS_ReadBankArrays()
end

---@return table|IInfo
function API.OSRS_ReadBankInvArrays()
	return OSRS_ReadBankInvArrays()
end

--check if loaded
---@return boolean
function API.OSRS_GetBankOpenStatus()
	return OSRS_GetBankOpenStatus()
end

---@param items table|number
---@return table|IInfo
function API.OSRS_GetBankItems(items)
	return OSRS_GetBankItems(items)
end

---@param items table|number
---@return table|IInfo
function API.OSRS_GetBankItemsInv(items)
	return OSRS_GetBankItemsInv(items)
end

--check if items there
---@param items table|number
---@param minimalstack number item stack size
---@return boolean
function API.OSRS_CheckBankItems(items,minimalstack)
	return OSRS_CheckBankItems(items,minimalstack)
end

--check if items there
---@param items table|number
---@param minimalstack number item stack size
---@return boolean
function API.OSRS_CheckBankItemsInv(items,minimalstack)
	return OSRS_CheckBankItemsInv(items,minimalstack)
end

---@param item number
---@param op number
---@param menu number
---@return boolean
function API.OSRS_DoBankItems(item,op,menu)
	return OSRS_DoBankItems(item,op,menu)
end

---@param item number
---@param op number
---@param menu number
---@return boolean
function API.OSRS_DoBankItemsInv(item,op,menu)
	return OSRS_DoBankItemsInv(item,op,menu)
end

--get all found
---@param items table|number
---@return table|IInfo
function API.OSRS_GetInventorys(items)
	return OSRS_GetInventorys(items)
end

--empty slots amount
---@return number
function API.OSRS_GetInventoryEmptySlots()
	return OSRS_GetInventoryEmptySlots()
end

--full slots amount
---@return number
function API.OSRS_GetInventoryFullSlots()
	return OSRS_GetInventoryFullSlots()
end

--get if full
---@return boolean
function API.OSRS_GetInventoryFull()
	return OSRS_GetInventoryFull()
end

---@param items table|number
---@return IInfo
function API.OSRS_GetInventory(items)
	return OSRS_GetInventory(items)
end

--check if items there
---@param items table|number
---@param minimalstack number item stack size
---@return boolean
function API.OSRS_CheckInventory(items,minimalstack)
	return OSRS_CheckInventory(items,minimalstack)
end

---@param item number
---@param op number
---@param menu number
---@return boolean
function API.OSRS_DoInventory(item,op,menu)
	return OSRS_DoInventory(item,op,menu)
end

--[[
0 sara brews
1 super restore
2 bligthted super restore
3 prayer restore
4 sanfew
5 antipoison
6 attack
7 strength
8 defence
9 magic
10 ranged
11 combset
12 energy
13 antifire
14 aggro
15 prayer regen
]]--
---@param pottype number
---@return boolean
function API.OSRS_DoDrinkpot(pottype)
	return OSRS_DoDrinkpot(pottype)
end

---@param howmanytickstosleep number
---@return void
function API.howmanytickstosleep(howmanytickstosleep)
	return howmanytickstosleep(howmanytickstosleep)
end

--this is for preparing for a fight, pot up
---@param boostset boolean
---@param antipoison boolean
---@param antifire boolean
---@param magic boolean
---@param range boolean
---@return boolean
function API.OSRS_DoDrinkpotboost(boostset,antipoison,antifire,magic,range)
	return OSRS_DoDrinkpotboost(boostset,antipoison,antifire,magic,range)
end

--common foods, eat 1 lowest food
---@return boolean
function API.OSRS_DoEatFoods()
	return OSRS_DoEatFoods()
end

--common foods + pot type from list, generally meant for food + brew
---@param pottype number
---@return boolean
function API.OSRS_DoEatFoodsPot(pottype)
	return OSRS_DoEatFoodsPot(pottype)
end

--common foods + pot type from list, generally meant for food + brew + karambwan
---@param pottype number
---@return boolean
function API.OSRS_DoEatFoodsPotKarabwan(pottype)
	return OSRS_DoEatFoodsPotKarabwan(pottype)
end

--common foods + pot type from list, generally meant for brew + karambwan
---@param pottype number
---@return boolean
function API.OSRS_DoEatPotKarabwan(pottype)
	return OSRS_DoEatPotKarabwan(pottype)
end

---@return number
function API.OSRS_ReadPlayerAnim()
	return OSRS_ReadPlayerAnim()
end

---@param Loops number
---@return boolean
function API.OSRS_CheckAnim(Loops)
	return OSRS_CheckAnim(Loops)
end

---@return boolean
function API.OSRS_ReadPlayerMov()
	return OSRS_ReadPlayerMov()
end

--player has health bar if he is attacked, has target if is attacking
---@param hashealthbar boolean
---@param hastarget boolean
---@return boolean
function API.OSRS_ReadPlayerCombat(hashealthbar,hastarget)
	return OSRS_ReadPlayerCombat(hashealthbar,hastarget)
end

--readinfo about target, only there if u have a target
---@return boolean
function API.OSRS_ReadPlayerCombatTarget()
	return OSRS_ReadPlayerCombatTarget()
end


-----------------------------------

---@param frames number How long it says disabled in frames. Current in code is 100, but can be anywhere from 1-1000
function API.SetDoActionTimeOut(frames)
	return SetDoActionTimeOut(frames)
end

-- Disable ImGui for script runtime so it dosent mess with script. Page down to enable again or if script ends it gets enabled again
function API.DisableImGui()
	return DisableImGui()
end

-- Read pixel color at coordinates
---@param at_x number
---@param at_y number
---@return table of summary rgb colors, [1] red, [2] green, [3] blue, [4] sum
function API.ReadDCColor(at_x,at_y)
	return ReadDCColor(at_x,at_y)
end

-- check tiles in list against tile +- range
---@param occtiles table|FFPOINT will be trunc
---@param size number
---@param range number
---@return  table|FFPOINT tiles that isnt near our occtiles 
function API.Math_FreeTilesTile(tile,occtiles,size,range)
	return Math_FreeTilesTile(tile,occtiles,size,range)
end

-- check tiles in list against localplayer +- range
---@param occtiles table|FFPOINT will be trunc
---@param size number
---@param range number
---@return  table|FFPOINT tiles that isnt near our occtiles 
function API.Math_FreeTiles(occtiles,size,range)
	return Math_FreeTiles(occtiles,size,range)
end

-- Make it flat
---@param tile FFPOINT
---@return FFPOINT
function API.Math_FlattenFloat(tile)
	return Math_FlattenFloat(tile)
end

-- Make it flat
---@param tiles table|FFPOINT
---@return table|FFPOINT
function API.Math_FlattenFloatArray(tiles)
	return Math_FlattenFloatArray(tiles)
end

-- by distance from tile
---@param objects table|AllObject
---@return table|AllObject
function API.Math_SortAODistFromA(tile,objects)
	return Math_SortAODistFromA(tile,objects)
end

--by distance from localplayer
---@param objects table|AllObject
---@return table|AllObject
function API.Math_SortAODistA(objects)
	return Math_SortAODistA(objects)
end

-- by distance from tile
---@param objects table|AllObject
---@return AllObject
function API.Math_SortAODistFrom(tile,objects)
	return Math_SortAODistFrom(tile,objects)
end

--by distance from localplayer
---@param objects table|AllObject
---@return AllObject
function API.Math_SortAODist(objects)
	return Math_SortAODist(objects)
end

---@return number
function API.Local_PlayerInterActingWith_UID()
	return Local_PlayerInterActingWith_UID()
end

---@param id number
---@return AllObject
function API.GetMapIcon(id)
	return GetMapIcon(id)
end

---@param id number
---@param x number
---@param y number
---@return AllObject
function API.GetMapIconTile(id,x,y)
	return GetMapIconTile(id,x,y)
end

---@param id number
---@return AllObject|table
function API.GetMapIcons(id)
	return GetMapIcons(id)
end

---@return AllObject|table
function API.GetALLMapIcons()
	return GetALLMapIcons()
end

---@param id number
---@return boolean
function API.DoAction_Icon(id)
	return DoAction_Icon(id)
end

---@param id number
---@param x number
---@param y number
---@return boolean
function API.DoAction_IconTile(id,x,y)
	return DoAction_IconTile(id,x,y)
end

---@param idobj AllObject
---@return boolean
function API.DoAction_IconObj(idobj)
	return DoAction_IconObj(idobj)
end

---@param point FFPOINT
---@return FFPOINT
function API.Math_TileToGlobal(point)
	return Math_TileToGlobal(point)
end

---@param point FFPOINT
---@return FFPOINT
function API.Math_TileToLocal(point)
	return Math_TileToLocal(point)
end

---@return EventData
function API.GatherEvents_chat_check()
	return GatherEvents_chat_check()
end
---@return EventData
function API.GatherEvents_xp_check()
	return GatherEvents_xp_check()
end
---@return EventData
function API.GatherEvents_glisten_check()
	return GatherEvents_glisten_check()
end

--- Player position against tile and get distance
---@param wp WPOINT
---@return number
function API.Dist_FLPW(wp)
	return Dist_FLPW(wp)
end

--- Player position against tile and get distance
---@param fp FFPOINT
---@return number
function API.Dist_FLP(fp)
	return Dist_FLP(fp)
end

--- get container data
---@param cont_id number -- container id
---@return table|inv_Container_struct
function API.Container_Get_all(cont_id)
	return Container_Get_all(cont_id)
end

--- get container data
---@param item_id number -- find item
---@param cont_vec table|inv_Container_struct -- container
---@return inv_Container_struct
function API.Container_Findfrom(cont_vec,item_id)
	return Container_Findfrom(cont_vec,item_id)
end

--- get container data
---@param item_id number -- find item
---@param cont_id number -- container id
---@return inv_Container_struct
function API.Container_Get_s(cont_id,item_id)
	return Container_Get_s(cont_id,item_id)
end

--- get container data, get all items with those ids
---@param item_id table|number -- find items
---@param cont_id number -- container id
---@return table|inv_Container_struct
function API.Container_Get_AllItems(cont_id,item_ids)
	return Container_Get_AllItems(cont_id,item_ids)
end


--- get container
---@param cont_id number
---@return boolean --is container with id found
function API.Container_Get_Check(cont_id)
	return Container_Get_Check(cont_id)
end

--- get container data
---@return table|inv_Container --vectors of custom tables
function API.GetContainerSettings()
	return GetContainerSettings()
end

--- Encodes a Lua table to a JSON string
-- @return string The JSON-encoded string
function API.JsonEncode(jsonString)
	return JsonEncode(jsonString)
end

--- Decodes a JSON string to a Lua table.
-- @return table The decoded Lua table.
function API.JsonDecode(jsonString)
	return JsonDecode(jsonString)
end

--- check
---@return boolean
function API.IsMember()
	return IsMember()
end

--- print out to DeBox in ME graphic debug
---@param text string
---@param level number
---@param time boolean
---@return void
function API.printlua(text, level, time)
	return printlua(text, level, time)
end

--- enable render
---@return void
function API.EnableRThread()
	return EnableRThread()
end

--- disable render
---@return void
function API.DisableRThread()
	return DisableRThread()
end

---@return number
function API.Get_RSExeStart()
	return Get_RSExeStart()
end

---@return number
function API.Get_RSExeSize()
	return Get_RSExeSize()
end

---@return number
function API.Get_HWND_GL()
	return Get_HWND_GL()
end

---@return number
function API.Get_HWND()
	return Get_HWND()
end

---@return number
function API.Get_PID()
	return Get_PID()
end

---@return number
function API.Get_HANDLE()
	return Get_HANDLE()
end

---@return number
function API.Read_fake_mouse_do()
	return Read_fake_mouse_do()
end

---@param state boolean
---@return number
function API.Write_fake_mouse_do(state)
	return Write_fake_mouse_do(state)
end

--- get localplayer name.
---@return string
function API.GetLocalPlayerName()
	return GetLocalPlayerName()
end

--- get localplayer memory address. is zero when not logged in or not found
---@return number
function API.GetLocalPlayerAddress()
	return GetLocalPlayerAddress()
end

--- draw button, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawBox(data)
	return DrawBox(data)
end

--- draw line between points, start is start and size is end
---@param data IG_answer
---@return void
function API.DrawLine(data)
	return DrawLine(data)
end

--- draw progressbar, CreateIG_answer before loop once
--- uses radius for progress bar length/progress
--- autosizes to contents
---@param data IG_answer
---@param ondbl boolean
---@return void
function API.DrawProgressBar(data,ondbl)
	return DrawProgressBar(data,ondbl)
end

--- draw droplist, CreateIG_answer before loop once
---@param data IG_answer
---@param ondbl boolean
---@return void
function API.DrawListBox(data,ondbl)
	return DrawListBox(data,ondbl)
end

--- draw comb, CreateIG_answer before loop once
---@param data IG_answer
---@param ondbl boolean
---@return void
function API.DrawComboBox(data,ondbl)
	return DrawComboBox(data,ondbl)
end

--- draw ImGui table<br>
--- <b>data format</b>
--[[
	<br>local runs = 10
	<br>local metrics = {
    <br><i>{"Script","Necro Essence"},
    <br>{"Runs",tostring(10)},</i>
	<br>}
]]
---@param data table
---@return void
function API.DrawTable(data)
	return DrawTable(data)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_char(addr, val)
	return Mem_Write_char(addr, val)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_short(addr, val)
	return Mem_Write_short(addr, val)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_int(addr, val)
	return Mem_Write_int(addr, val)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_uint64(addr, val)
	return Mem_Write_uint64(addr, val)
end

---@param addr number
---@return number
function API.Mem_Read_char(addr)
	return Mem_Read_char(addr)
end

---@param addr number
---@return number
function API.Mem_Read_short(addr)
	return Mem_Read_short(addr)
end

---@param addr number
---@return number
function API.Mem_Read_int(addr)
	return Mem_Read_int(addr)
end

---@param addr number
---@return number
function API.Mem_Read_uint64(addr)
	return Mem_Read_uint64(addr)
end

---@param status string
---@return void
function API.Write_ScripCuRunning0(status)
	return Write_ScripCuRunning0(status)
end

---@param status string
---@return void
function API.Write_ScripCuRunning1(status)
	return Write_ScripCuRunning1(status)
end

---@param status string
---@return void
function API.Write_ScripCuRunning2(status)
	return Write_ScripCuRunning2(status)
end

--- Return material storagedata
---@return table|IInfo
function API.MaterialStorage()
	return MaterialStorage()
end

---Return trade window item array
---Default will return your own trade window (your offer) param set to "their" will return their offer
---@param which string optional "their" or default "self"
---@return table|IInfo
function API.TradeWindow(which)
	return TradeWindow(which)
end

--- Return array of bank inventory
---@return table|IInfo
function API.FetchBankInvArray()
	return FetchBankInvArray()
end

--- Return array of bankdata
---@return table|IInfo
function API.FetchBankArray()
	return FetchBankArray()
end

--- Return miniprogressbar, smithing heat, arch progress
---@return number
function API.LocalPlayer_HoverProgress()
	return LocalPlayer_HoverProgress()
end

--- change paint state
---@param value boolean
---@return void
function API.Write_Doaction_paint(value)
	return Write_Doaction_paint(value)
end

--- save setting from file
---@param value number --0-255
---@param settingfilename string
---@return number
function API.LoadIntSetting(settingfilename, value)
	return LoadIntSetting(settingfilename, value)
end

--- save setting to file
---@param value number --0-255
---@param slot number slot --0-30
---@param settingfilename string
---@return void
function API.SaveIntSetting(settingfilename, slot, value)
	return SaveIntSetting(settingfilename, slot, value)
end

--- draw tickbox at, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawCheckbox(data)
	return DrawCheckbox(data)
end

--- draw filled square at, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawSquareFilled(data)
	return DrawSquareFilled(data)
end

--- draw text at, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawTextAt(data)
	return DrawTextAt(data)
end

--- draw text at, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawTextAtBG(data)
	return DrawTextAtBG(data)
end

--- create data struct pointer
---@return IG_answer
function API.CreateIG_answer()
	return CreateIG_answer()
end

--- Delete all data, maybe dont touch during running
function API.DeleteIG_answers()
	return DeleteIG_answers()
end

--- create empty AllObject --couldnt figure out how to do it in lua
---@return AllObject
function API.Create_AO_struct()
	return Create_AO_struct()
end

--- Delete all data
function API.DeleteAllObject_list()
	return DeleteAllObject_list()
end

--- create FFPOINT
---@param x number
---@param y number
---@param z number
---@return FFPOINT
function API.CreateFFPOINT(x,y,z)
	return CreateFFPOINT(x,y,z)
end

--- get current tick count
---@return number
function API.Get_tick()
	return Get_tick()
end

--- count ticks
---@param val number --how many ticks
---@return boolean
function API.Count_ticks(val)
	return Count_ticks(val)
end

--- check if tick is happening
---@return boolean
function API.Check_tick()
	return Check_tick()
end

--- sleep how many ticks, on avarage tick is 600m
---@param count number --number of ticks
---@return boolean
function API.Sleep_tick(count)
	return Sleep_tick(count)
end

--- check if it is
---@param ability_name string
---@return boolean
function API.isAbilityAvailable(ability_name)
	return isAbilityAvailable(ability_name)
end

--- check if processing/crafting/progress window is open
---@return boolean
function API.isProcessing()
	return isProcessing()
end

--- get player facing direction in angles
---@return number
function API.calculatePlayerOrientation()
	return calculatePlayerOrientation()
end

--- is localplayer facing in direction of tile. to be safeside it should be more than 1 tile away
---@param Tile WPOINT
---@param howfar number -- in tiles
---@param errorrange number -- starts from 0 - 1
---@return boolean
function API.IsPlayerInDirection(Tile, howfar, errorrange)
	return IsPlayerInDirection(Tile, howfar, errorrange)
end

--- is localplayer facing in direction of tile
---@param input WPOINT -- tile 
---@param angle number -- int
---@param steps number -- int
---@return table|WPOINT
function API.Math_AnglePixels(input,angle,steps)
	return Math_AnglePixels(input,angle,steps)
end

--- is localplayer facing in direction of tile
---@param ArrayOfPoints table|WPOINT -- vectors of tiles to check vs
---@param OnePoint WPOINT -- tile vs
---@param inrangeof number -- how far to predict
---@return boolean
function API.Math_PointsCrossEach(ArrayOfPoints, OnePoint, inrangeof)
	return Math_PointsCrossEach(ArrayOfPoints, OnePoint, inrangeof)
end

--- get facing direction in angles
---@param mem_addr number --AllObject MemE
---@return number
function API.calculateOrientation(mem_addr)
	return calculateOrientation(mem_addr)
end

--- Create FFPOINT vector
function API.CreateFFPointArray(points)
    local arr = CreateArrayFFPOINT()

    for i,v in ipairs(points) do
        arr:add(FFPOINT:new(v[1], v[2], v[3]))
    end

    return arr
end





--- open and use 1 to withdraw
---@param id number ---portable id
---@param text string ---sidetext
---@return boolean
function API.DoPortables0(id, text)
	return DoPortables(id, text)
end

--- open and use 1 to withdraw
---@param id number
---@return boolean
function API.OpenBankChest0(id)
	return OpenBankChest(id)
end

--- open with number --char press
---@param id number
---@param char number ---to press number --char code
---@return boolean
function API.OpenBankChest1(id,char)
	return OpenBankChest(id,char)
end

--- check 1 inv item
---@param check1 number
---@return boolean
function API.CheckInvStuff0(check1)
	return CheckInvStuff(check1)
end

--- heck 2 inv items
---@param check1 number
---@param check2 number
---@return boolean
function API.CheckInvStuff1(check1,check2)
	return CheckInvStuff(check1,check2)
end

--- Random number
---@param numbersize number
---@return number
function API.Math_RandomNumber(numbersize)
	return Math_RandomNumber(numbersize)
end

--- Write script loop boolean
---@param bools number
function API.Write_LoopyLoop(bools)
	return Write_LoopyLoop(bools)
end

--- Read script loop boolean
---@return number 0 or 1, false or true
function API.Read_LoopyLoop()
	return Read_LoopyLoop()
end

--- Get window in pixels
---@return WPOINT
function API.GetRsResolution2()
	return GetRsResolution2()
end

--- Get 4 box
---@return QWPOINT
function API.GetRSCornersReal()
	return GetRSCornersReal()
end

--- Distance between 2 objets
---@param object1 AllObject
---@param object2 AllObject
---@return number
function API.Math_DistanceA(object1, object2)
	return Math_DistanceA(object1, object2)
end

--- Calculate pixels
---@param entity FFPOINT
---@return FFPOINT
function API.Math_W2Sv2(entity)
	return Math_W2Sv2(entity)
end

--- Calculate pixels
---@param entity FFPOINT
---@return WPOINT
function API.Math_W2Sv2W(entity)
	return Math_W2Sv2W(entity)
end

--- Distance between 2 objets
---@param object1 WPOINT
---@param object2 WPOINT
---@return number
function API.Math_DistanceRounded(object1, object2)
	return Math_DistanceRounded(object1, object2)
end

--- Distance between 2 objets
---@param object1 WPOINT
---@param object2 WPOINT
---@return number
function API.Math_DistanceW(object1, object2)
	return Math_DistanceW(object1, object2)
end

--- Distance between 2 objets
---@param object1 FFPOINT
---@param object2 FFPOINT
---@return number
function API.Math_DistanceF(object1, object2)
	return Math_DistanceF(object1, object2)
end

--- Save FFPOINTs to disk
---@param name string
---@param array_points table|FFPOINT
---@return boolean
function API.SaveFFPOINTs(name, array_points)
	return SaveFFPOINTs(name, API.CreateFFPointArray(array_points))
end

---@param name string
---@return table|FFPOINT
function API.LoadFFPOINTs(name)
	return LoadFFPOINTs(name)
end

---@return WPOINT
function API.GetTilesUnderCurrentMouse()
	return GetTilesUnderCurrentMouse()
end

---@return FFPOINT
function API.GetTilesUnderCurrentMouseF()
	return GetTilesUnderCurrentMouseF()
end

---@param xy WPOINT
---@return WPOINT
function API.TilesToPixelsWW(xy)
	return TilesToPixelsWW(xy)
end

---@param xy FFPOINT
---@return WPOINT
function API.TilesToPixelsFW(xy)
	return TilesToPixelsFW(xy)
end

---@param xy FFPOINT
---@return FFPOINT
function API.TilesToPixelsFF(xy)
	return TilesToPixelsFF(xy)
end

---@param xy WPOINT
---@return FFPOINT
function API.TilesToPixelsWF(xy)
	return TilesToPixelsWF(xy)
end

---@param mxy WPOINT
---@return boolean
function API.ScreenFilter(mxy)
	return ScreenFilter(mxy)
end

---@param SummPointer number
---@param howmanyBytes number --something like 250
---@return string
function API.ReadChars(SummPointer, howmanyBytes)
	return ReadChars(SummPointer, howmanyBytes)
end

---@param SummPointer number
---@param howmanyBytes number --something like 250
---@return string
function API.ReadCharsLimitPointer(SummPointer, howmanyBytes)
	return ReadCharsLimitPointer(SummPointer, howmanyBytes)
end

---@param SummPointer number
---@param howmanyBytes number --something like 250
---@return string
function API.ReadCharsLimit(SummPointer, howmanyBytes)
	return ReadCharsLimit(SummPointer, howmanyBytes)
end

---@param SummPointer number
---@return string
function API.ReadCharsPointer(SummPointer)
	return ReadCharsPointer(SummPointer)
end

---@param limitx number
---@param limity number
---@return boolean
function API.CheckCoordLimit(limitx, limity)
	return CheckCoordLimit(limitx, limity)
end

---@param limitx number --float
---@param limity number --float
---@return boolean
function API.CheckCoordLimit2(limitx, limity)
	return CheckCoordLimit2(limitx, limity)
end

---@param limitx number --float
---@param limity number --float
---@return boolean
function API.CheckVisibleLimit(limitx, limity)
	return CheckVisibleLimit(limitx, limity)
end

---@return boolean
function API.PlayerLoggedIn()
	return PlayerLoggedIn()
end

---dosent work
---@param worldtohop string
---@return boolean
function API.World_Hopper(worldtohop)
	return World_Hopper(worldtohop)
end

---dosent work
---@param name string
---@param password string
---@param world string
---@return boolean
function API.LoginFunction(name, password, world)
	return LoginFunction(name, password, world)
end

---dosent work
---@param text string
---@return boolean
function API.Select_Option(text)
	return Select_Option(text)
end

---@param text string
---@return number --char
function API.Dialog_Option(text)
	return Dialog_Option(text)
end

---@return string
function API.Dialog_Read_NPC()
	return Dialog_Read_NPC()
end

---@return string
function API.Dialog_Read_Player()
	return Dialog_Read_Player()
end

---@param search_word string
---@return boolean
function API.Dialog_compare_sayd(search_word)
	return Dialog_compare_sayd(search_word)
end

---@return boolean
function API.Check_Dialog_Open()
	return Check_Dialog_Open()
end

---@return boolean
function API.Check_continue_Open()
	return Check_continue_Open()
end

---@return boolean
function API.Check_continue_Open_NPC()
	return Check_continue_Open_NPC()
end

---@return boolean
function API.Check_continue_Open_Player()
	return Check_continue_Open_Player()
end

---@return number
function API.GetFloorLv_2()
	return GetFloorLv_2()
end

---@param item table|number
---@return boolean
function API.FindGItemBool_(item)
	return FindGItemBool_(item)
end

---@param Except_item table|number
---@param maxdistance number
---@param accuracy number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param items_to_eat table|number
---@return boolean
function API.FindGItem_AllBut2(Except_item, maxdistance, accuracy, tilespot, maxdistance2, items_to_eat)
	return FindGItem_AllBut2(Except_item, maxdistance, accuracy, tilespot, maxdistance2, items_to_eat)
end

---@param npc table|number
---@param maxdistance number
---@param accuracy number
---@param lifepoint number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCss(npc, maxdistance, accuracy, lifepoint, tilespot, maxdistance2, action, sidetext)
	return FindNPCss(npc, maxdistance, accuracy, lifepoint, tilespot, maxdistance2, action, sidetext)
end

---@param npc table|number
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext table|string
---@return boolean
function API.FindNPCssMulti(npc, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssMulti(npc, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@param NPC_name string
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCssSTRRem(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssSTRRem(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@param NPC_name string
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCssSTR(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssSTR(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@param NPC_names table|string
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCssSTRs(NPC_names, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssSTRs(NPC_names, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@param NPC_name string
---@param maxdistance number
---@return table|AllObject
function API.FindNPCbyName(NPC_name, maxdistance)
	return FindNPCbyName(NPC_name, maxdistance)
end

---@return number
function API.ReadPlayerAnim()
	return ReadPlayerAnim()
end

---@param ID number
---@return string
function API.GetItemText(ID)
	return GetItemText(ID)
end

---@return boolean
function API.IsSelectingItem()
	return IsSelectingItem()
end

---@param forcerefresh boolean -- force to update buffs
---@return Target_data
function API.ReadTargetInfo(forcerefresh)
	return ReadTargetInfo(forcerefresh)
end

---@return AllObject
function API.ReadLpInteracting()
	return ReadLpInteracting()
end

---@param animated_also boolean
---@param hp number
---@return table|AllObject
function API.OthersInteractingWithLpNPC(animated_also, hp)
	return OthersInteractingWithLpNPC(animated_also, hp)
end

---@param look_stance boolean
---@return table|AllObject
function API.OthersInteractingWithLpPl(look_stance)
	return OthersInteractingWithLpPl(look_stance)
end

---@param spot number
---@return string
function API.ReadText(spot)
	return ReadText(spot)
end

---@return FFPOINT
function API.PlayerCoordfloat()
	return PlayerCoordfloat()
end

---@return FFPOINT
function API.PlayerCoordfloatRaw()
	return PlayerCoordfloatRaw()
end

---@param addr number
---@return WPOINT
function API.GetProjectileDestination(addr)
	return GetProjectileDestination(addr)
end

---@param allObj AllObject
---@return WPOINT
function API.GetProjectileDestination(allObj)
	return GetProjectileDestination(allObj)
end

---@return void
function API.RandomSleep()
	return RandomSleep()
end

---@param wait number 100% sleep
---@param sleep number random sleep
---@param sleep2 number rare random sleep
---@return void
function API.RandomSleep2(wait, sleep, sleep2)
	return RandomSleep2(wait, sleep, sleep2)
end

---@param asciii string
---@return void
function API.TypeOnkeyboard(asciii)
	return TypeOnkeyboard(asciii)
end

---@param asciii string
---@return void
function API.TypeOnkeyboard2(asciii)
	return TypeOnkeyboard2(asciii)
end

---@param Loops number
---@return boolean
function API.CheckAnim(Loops)
	return CheckAnim(Loops)
end

---@return boolean
function API.InvFull_()
	return InvFull_()
end

---@return number
function API.Invfreecount_()
	return Invfreecount_()
end

---@return boolean
function API.ReadPlayerMovin()
	return ReadPlayerMovin()
end

---@return boolean
function API.ReadPlayerMovin2()
	return ReadPlayerMovin2()
end

-- old
---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@param highlight table|number
---@return boolean
function API.FindHl(obj, maxdistance, accuracy, usemap, action, sidetext, highlight)
	return FindHl(obj, maxdistance, accuracy, usemap, action, sidetext, highlight)
end

-- old
---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObjCheck(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObjCheck(obj, maxdistance, accuracy, usemap, action, sidetext)
end

-- old
--[[AllObject Types 
0 obj
1 npc
2 player
3 ground item
4 highlights
5 projectiles
8 tiles
12 decor
--]]
---@param obj table|number
---@param maxdistance number
---@param type table|number
---@return table|AllObject
function API.GetAllObjArrayInteract(obj, maxdistance, type)
	return GetAllObjArrayInteract(obj, maxdistance, type)
end

-- old
--[[AllObject Types 
0 obj
1 npc
2 player
3 ground item
4 highlights
5 projectiles
8 tiles
12 decor
--]]
---@param obj table|string
---@param maxdistance number
---@param type table|number
---@return table|AllObject
function API.GetAllObjArrayInteract_str(obj, maxdistance, type)
	return GetAllObjArrayInteract_str(obj, maxdistance, type)
end

-- old
---@param tile WPOINT
---@param item number
---@return boolean
function API.CheckTileforItems(tile, item)
	return CheckTileforItems(tile, item)
end

-- old
---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param objtile WPOINT
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObjTile(obj, maxdistance, accuracy, objtile, usemap, action, sidetext)
	return FindObjTile(obj, maxdistance, accuracy, objtile, usemap, action, sidetext)
end

---@return table|number
function API.MousePos_()
	return MousePos_()
end

---@return WPOINT
--[[
returns x,y coords of the mouse cusor relative to the game window
]]
function API.GetMLoc()
	return GetMLoc()
end

---@param cursor table|number c POINT
---@param type boolean
---@return void
function API.MouseCLRS(cursor, type)
	return MouseCLRS(cursor, type)
end

---@param cursor table|number c POINT
---@param cursor2 table|number c POINT
---@return void
---function API.MouseDrag_RS(cursor, cursor2)
---	return MouseDrag_RS(cursor, cursor2)
---end

---@param cursor table|number c POINT
---@return void
function API.MouseMove_(cursor)
	return MouseMove_(cursor)
end

---@param x number
---@param y number
---@param rx number
---@param ry number
---@return void
function API.MouseMove_2(x, y, rx, ry)
	return MouseMove_2(x, y, rx, ry)
end

---@param dx number
---@param dy number
---@return number
function API.Hypot(dx, dy)
	return Hypot(dx, dy)
end

---@param x number
---@param y number
---@param rx number
---@param ry number
---@return void
function API.MoveMouse2(x, y, rx, ry)
	return MoveMouse2(x, y, rx, ry)
end

---@param x number
---@param y number
---@param rx number
---@param ry number
---@param updown boolean
---@return void
function API.MoveMouse3(x, y, rx, ry, updown)
	return MoveMouse3(x, y, rx, ry, updown)
end

---@param sleep number
---@param rand number
---@return void
function API.MouseLeftClick(sleep, rand)
	return MouseLeftClick(sleep, rand)
end

---@param sleep number
---@param rand number
---@return void
function API.MouseRightClick(sleep, rand)
	return MouseRightClick(sleep, rand)
end

---@param mK number --char
---@return void
function API.KeyPress_(mK)
	return KeyPress_(mK)
end

---@param mK number
---@return void
function API.KeyPress_2(mK)
	return KeyPress_2(mK)
end

---@param sleep number
---@param random number
---@return void
function API.Send_MouseLeftClick(sleep, random)
	return Send_MouseLeftClick(sleep, random)
end

---@param sleep number
---@param random number
---@return void
function API.Send_MouseRightClick(sleep, random)
	return Send_MouseRightClick(sleep, random)
end

---@param x number
---@param y number
---@param sleep number
---@param random number
---@return void
function API.Post_MouseLeftClick(x, y, sleep, random)
	return Post_MouseLeftClick(x, y, sleep, random)
end

---@param x number
---@param y number
---@param sleep number
---@param random number
---@return void
function API.Post_MouseRightClick(x, y, sleep, random)
	return Post_MouseRightClick(x, y, sleep, random)
end

---@param item string
---@return number
function API.InvItemcount_String(item)
	return InvItemcount_String(item)
end

---@param item string
---@return number --item stack size
function API.InvItemcountStack_String(item)
	return InvItemcountStack_String(item)
end

---@param item number
---@return number
function API.InvStackSize(item)
	return InvStackSize(item)
end

---@return number
function API.SystemTime()
	return SystemTime()
end

---@param Data void*
---@param Size number
---@param InitialValue number
---@return number
function API.CRC32CheckSum(Data, Size, InitialValue)
	return CRC32CheckSum(Data, Size, InitialValue)
end

---@return string
function API.FindSideText()
	return FindSideText()
end

---@param ObjectName table|string
---@param maxdistance number
---@return table|AllObject
function API.FindObject_string(ObjectName, maxdistance)
	return FindObject_str(ObjectName, maxdistance)
end

---@param types table|number -- possible types are: 0,1,2,3,5,8,12,all -1
---@param ids table|number --place {-1} unless you know ids
---@param names table|string --leave empty with {}
---@return table|AllObject
function API.ReadAllObjectsArray(types, ids, names)
	return ReadAllObjectsArray(types, ids, names)
end

---@return table|IInfo
function API.ReadInvArrays33()
	return ReadInvArrays33()
end

---@return boolean
function API.OpenEquipInterface2()
	return OpenEquipInterface2()
end

---@return boolean
function API.OpenInventoryInterface2()
	return OpenInventoryInterface2()
end

---@return void
function API.Get_shop()
	return Get_shop()
end

---@return number
function API.GetPray_()
	return GetPray_()
end

---@return number
function API.GetPrayMax_()
	return GetPrayMax_()
end

---@param value number
---@return table|number --bitset<32>
function API.VB_ToBitSet(value)
	return VB_ToBitSet(value)
end

---@param set table|number --bitset<32>
---@param at number
---@param state boolean
---@return table|number --bitset<32>
function API.VB_ModifyBitSet(set, at, state)
	return VB_ModifyBitSet(set, at, state)
end

---@param to_print table|number --bitset<32>
---@return void
function API.VB_PrintBitsSet(to_print)
	return VB_PrintBitsSet(to_print)
end

---@param str string
---@return table|number --bitset<32>
function API.VB_Bitstr_convert(str)
	return VB_Bitstr_convert(str)
end

---@param to_print number
---@return void
function API.VB_PrintBits_all(to_print)
	return VB_PrintBits_all(to_print)
end

---@param ID number
---@return void
function API.VB_PrintBits(ID)
	return VB_PrintBits(ID)
end

---@param ID number
---@return table|number --bitset<32>
function API.VB_GetBits(ID)
	return VB_GetBits(ID)
end

---@param ID number
---@param at number
---@return number
function API.VB_GetBit(ID, at)
	return VB_GetBit(ID, at)
end

---@param bitaddr VB
---@return VB
function API.VB_ReadBits(bitaddr)
	return VB_ReadBits(bitaddr)
end

---@return boolean
function API.GetInCombBit()
	return GetInCombBit()
end

---@return boolean
function API.IsTargeting()
	return IsTargeting()
end

---@return number
function API.GetAddreline_()
	return GetAddreline_()
end

---@return number
function API.GetAdrenalineFromInterface()
	return GetAdrenalineFromInterface()
end

--- smithing 85, bank open 24, 1 log out menu, 8 chat open, 9 quick chat open, 13 teleport options, 18 clue, 24 bank, 30 lode, 57 glider
--- status of blocking intefaces
--- checks both set1 and set2 any match in those 2 bytes
---@param status number
---@param debug boolean
---@return boolean
function API.Compare2874Status(status, debug)
	return Compare2874Status(status, debug)
end

--- varbit 7755 bank check, 64 = open
---@return boolean
function API.CheckBankVarp()
	return CheckBankVarp()
end

---@return number
function API.GetG3095Status()
	return GetG3095Status()
end

---@return number
function API.GetHP_()
	return GetHP_()
end

---@return number
function API.GetHPMax_()
	return GetHPMax_()
end

---@return number
function API.GetHPrecent()
	return GetHPrecent()
end

---@return number
function API.GetPrayPrecent()
	return GetPrayPrecent()
end

---@return number
function API.GetSummoningPoints_()
	return GetSummoningPoints_()
end

---@return number
function API.GetSummoningMax_()
	return GetSummoningMax_()
end

--Set the maximum idle time in minutes
--Automatically send keypresses to avoid idle kick
--@return void
function API.SetMaxIdleTime(minutes)
	return SetMaxIdleTime(minutes)
end

---@return void
function API.PIdle1()
	return PIdle1()
end

---@return void
function API.PIdle22()
	return PIdle22()
end

---@return void
function API.PIdle2()
	return PIdle2()
end

---@param x number
---@param xrange number
---@param y number
---@param yrange number
---@param zfloor number
---@return boolean
function API.PInArea(x, xrange, y, yrange, zfloor)
	return PInArea(x, xrange, y, yrange, zfloor)
end

---@param norm_tile WPOINT
---@param range number
---@return boolean
function API.PInAreaW(norm_tile, range)
	return PInAreaW(norm_tile, range)
end

---@param codes number --char
---@param sleep number
---@param rand number
---@return void
function API.KeyboardPress(codes, sleep, rand)
	return KeyboardPress(codes, sleep, rand)
end

---@param codes number
---@param sleep number
---@param rand number
---@return void
function API.KeyboardPress2(codes, sleep, rand)
	return KeyboardPress2(codes, sleep, rand)
end

---@param action number
---@return boolean
function API.InvRandom_(action)
	return InvRandom_(action)
end

---@return boolean
function API.InvCheck1_()
	return InvCheck1_()
end

---@param sleeptime number
---@param location string
---@return void
function API.Play_sound(sleeptime, location)
	return Play_sound(sleeptime, location)
end

---@param ItemCoord FFPOINT
---@param map_limit boolean
---@return FFPOINT
function API.ToMapFFPOINT(ItemCoord, map_limit)
	return ToMapFFPOINT(ItemCoord, map_limit)
end

---old
---@param ItemCoord2 FFPOINT
---@return boolean
function API.ClickMapTile_(ItemCoord2)
	return ClickMapTile_(ItemCoord2)
end

---old
---@param ItemCoord2 table|number --c POINT
---@return boolean
function API.ClickMapTile_2(ItemCoord2)
	return ClickMapTile_2(ItemCoord2)
end

---@param id number
---@param FSArray number -- what array look for
---@param Levels_deep number -- leave it at -1
---@return VB
function API.VB_FindPSett(id, FSArray,Levels_deep)
	return VB_FindPSett(id, FSArray,Levels_deep)
end

-- use this instead VB_FindPSett. it get Levels_deep correct way
---@param id number 
---@param FSArray number --what array look on can be -1
---@return VB
function API.VB_FindPSettinOrder(id, FSArray)
	return VB_FindPSettinOrder(id, FSArray)
end

--- return 32 slot boolean array
---@param id number
---@param FSArray number --what array look on can be -1
---@return table|number
function API.VB_FindPSett2(id, FSArray)
	return VB_FindPSett2(id, FSArray)
end

--- make int number into 32 slot boolean array
---@param var number
---@return string
function API.VB_IntToBit(var)
	return VB_IntToBit(var)
end

--- get bit slot on int var
---@param id number
---@param spot_index number --1 to 32 slot on int
---@param FSArray number --what array look on can be -1
---@return number
function API.VB_FindPSett3int(id, spot_index, FSArray)
	return VB_FindPSett3int(id, spot_index, FSArray)
end

--- get 2 bit slots on int var
---@param id number
---@param spot_index1 number
---@param spot_index2 number
---@param FSArray number
---@return WPOINT
function API.VB_FindPSett3wpoint(id, spot_index1, spot_index2, FSArray)
	return VB_FindPSett3wpoint(id, spot_index1, spot_index2, FSArray)
end

---@param start number
---@param end number
---@param checked_var number
---@return boolean
function API.Math_VarBetween(start, endd, checked_var)
	return Math_VarBetween(start, endd, checked_var)
end

---@return boolean
function API.LootWindowOpen_2()
	return LootWindowOpen_2()
end

---@return table|IInfo
function API.LootWindow_GetData()
	return LootWindow_GetData()
end

---@param Except_item table|number
---@param Inventory_stacks boolean
---@return number
function API.LootWindow_space_needed(Except_item, Inventory_stacks)
	return LootWindow_space_needed(Except_item, Inventory_stacks)
end

---@param Except_itemv table|number
---@return boolean
function API.LootWindow_Loot(Except_itemv)
	return LootWindow_Loot(Except_itemv)
end

---@param choice string
---@return boolean
function API.SelectCOption_(choice)
	return SelectCOption_(choice)
end

---@param choice string
---@param user string
---@return WPOINT
function API.SelectCOption2(choice, user)
	return SelectCOption2(choice, user)
end

---@param choice string
---@param user string
---@return boolean
function API.SelectCOption2_(choice, user)
	return SelectCOption2_(choice, user)
end

---@param choice string
---@return WPOINT
function API.SelectCOption(choice)
	return SelectCOption(choice)
end

---@param choice string
---@param move boolean
---@return boolean
function API.SelectCOption_Click(choice, move)
	return SelectCOption_Click(choice, move)
end

---@param to string
---@param remove string
---@return string
function API.Filter(to, remove)
	return Filter(to, remove)
end

---@param sentence string
---@param keyword string
---@return string
function API.String_Filter(sentence, keyword)
	return String_Filter(sentence, keyword)
end

---@param to string
---@return string
function API.String_Filter2(to)
	return String_Filter2(to)
end

---@param to string
---@return string
function API.Filter22(to)
	return Filter22(to)
end

---@param to string
---@return string
function API.String_Filter3(to)
	return String_Filter3(to)
end

--old
---@return boolean
function API.FindChooseOptionOpen()
	return FindChooseOptionOpen()
end

--old
---@return boolean
function API.FindChooseOptionOpenClose()
	return FindChooseOptionOpenClose()
end

---@param value number
---@param arrayof table|Bbar
---@return boolean
function API.Math_Bbar_ValueEquals(value, arrayof)
	return Math_Bbar_ValueEquals(value, arrayof)
end

---@param arrayof1 table|number
---@param arrayof2 table|Bbar
---@return table|number
function API.Math_Bbar_ValueEqualsArr(arrayof1, arrayof2)
	return Math_Bbar_ValueEqualsArr(arrayof1, arrayof2)
end

---@param value number
---@param arrayof table|AllObject
---@return boolean
function API.Math_AO_ValueEquals(value, arrayof)
	return Math_AO_ValueEquals(value, arrayof)
end

---@param name string
---@param arrayof table|IInfo
---@return boolean
function API.Math_IInfo_ValueEqualsStr(name, arrayof)
	return Math_IInfo_ValueEqualsStr(name, arrayof)
end

---@param name table|string
---@param arrayof table|IInfo
---@return boolean
function API.Math_IInfo_ValueEqualsStrArr(name, arrayof)
	return Math_IInfo_ValueEqualsStrArr(name, arrayof)
end

---@param value number
---@param arrayof table|IInfo
---@return boolean
function API.Math_IInfo_ValueEqualsStack(value, arrayof)
	return Math_IInfo_ValueEqualsStack(value, arrayof)
end

---@param arrayof1 table|number
---@param arrayof2 table|AllObject
---@return boolean
function API.Math_AO_ValueEqualsArr(arrayof1, arrayof2)
	return Math_AO_ValueEqualsArr(arrayof1, arrayof2)
end

---@param arrayof1 table|number
---@param arrayof2 table|AllObject
---@return table|number
function API.Math_AO_ValueEqualsArr2(arrayof1, arrayof2)
	return Math_AO_ValueEqualsArr2(arrayof1, arrayof2)
end

---@param inputaddresses table|number
---@param target number
---@return boolean
function API.Math_Compare_int(inputaddresses, target)
	return Math_Compare_int(inputaddresses, target)
end

---@return boolean
function API.ReadNPCInFocus_0()
	return ReadNPCInFocus_0()
end

---@param index number
---@param debug boolean
---@return boolean
function API.ReadNPCInFocus(index, debug)
	return ReadNPCInFocus(index, debug)
end

---@param index number
---@param NPC_id number
---@param debug boolean
---@return boolean
function API.GetCheckNPCInFocus(index, NPC_id, debug)
	return GetCheckNPCInFocus(index, NPC_id, debug)
end

---@param entity FFPOINT
---@return FFPOINT
function API.W2ScreenNat_F(entity)
	return W2ScreenNat_F(entity)
end

---@param player string
---@return boolean
function API.PlayerInterActing_(player)
	return PlayerInterActing_(player)
end

---@param player string
---@return boolean
function API.IsInCombat_(player)
	return IsInCombat_(player)
end

---@return boolean
function API.LocalPlayer_IsInCombat_()
	return LocalPlayer_IsInCombat_()
end

---@return string
function API.Local_PlayerInterActingWith_()
	return Local_PlayerInterActingWith_()
end

---@return number
function API.Local_PlayerInterActingWith_Id()
	return Local_PlayerInterActingWith_Id()
end

---@param player string
---@return number
function API.GetPlayerAnimation_(player)
	return GetPlayerAnimation_(player)
end

---@param player string
---@param loops number
---@return boolean
function API.IsPlayerAnimating_(player, loops)
	return IsPlayerAnimating_(player, loops)
end

---@param player string
---@return boolean
function API.IsPlayerMoving_(player)
	return IsPlayerMoving_(player)
end

---@param player1 string
---@param entity string
---@return boolean
function API.PlayerInterActingWithCompare_(player1, entity)
	return PlayerInterActingWithCompare_(player1, entity)
end

---@return number
function API.GetGameState2()
	return GetGameState2()
end

---@return number
function API.GetAngle()
	return GetAngle()
end

---@return number
function API.GetTilt()
	return GetTilt()
end

---@return boolean
function API.GetQuickPray()
	return GetQuickPray()
end

---@return number
function API.GetTargetHealth()
	return GetTargetHealth()
end

---@return boolean
function API.GetRun()
	return GetRun()
end

---@return boolean
function API.GetRun2()
	return GetRun2()
end

---@return WPOINT
function API.PlayerCoord()
	return PlayerCoord()
end

--- WPOINT.x `RegionX`<br>
--- WPOINT.y `RegionY`<br>
--- WPOINT.z `RegionId`
---@return WPOINT
function API.PlayerRegion()
	return PlayerRegion()
end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return table|WPOINT
function API.Math_Bresenham_line(x1, y1, x2, y2)
	return Math_Bresenham_line(x1, y1, x2, y2)
end

---@param xy1 WPOINT
---@param xy2 WPOINT
---@return table|WPOINT
function API.Math_Bresenham_lineW(xy1, xy2)
	return Math_Bresenham_lineW(xy1, xy2)
end

---@param xy1 FFPOINT
---@param xy2 FFPOINT
---@return table|WPOINT
function API.Math_Bresenham_lineF(xy1, xy2)
	return Math_Bresenham_lineF(xy1, xy2)
end

---@param tilexy FFPOINT
---@return WPOINT
function API.Bresenham_step(tilexy)
	return Bresenham_step(tilexy)
end

---@param objIds table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@param hlIds table|number
---@param localp_dist number --float
---@return boolean
function API.FindHLvsLocalPlayer(objIds, maxdistance, accuracy, usemap, action, sidetext, hlIds, localp_dist)
	return FindHLvsLocalPlayer(objIds, maxdistance, accuracy, usemap, action, sidetext, hlIds, localp_dist)
end

---@param obj table|number
---@param maxdistance number
---@param sens number --float
---@return boolean
function API.FindObjRot(obj, maxdistance, sens)
	return FindObjRot(obj, maxdistance, sens)
end

---@param ItemXY FFPOINT
---@param currxy FFPOINT
---@param sens number --float
---@return boolean
function API.RotateCamera(ItemXY, currxy, sens)
	return RotateCamera(ItemXY, currxy, sens)
end

---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindHObj(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindHObj(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param items table|number
---@param randomelement number
---@param action number
---@return boolean
function API.ClickInv_Multi(items, randomelement, action)
	return ClickInv_Multi(items, randomelement, action)
end

---@param item number
---@param action number
---@param randx number
---@param randy number
---@param offsetx number
---@param offsety number
---@param sidetext string
---@return boolean
function API.ClickInvOffset_(item, action, randx, randy, offsetx, offsety, sidetext)
	return ClickInvOffset_(item, action, randx, randy, offsetx, offsety, sidetext)
end

---@param obj table|number
---@param maxdistance number
---@return FFPOINT
function API.FindObjTileName(obj, maxdistance)
	return FindObjTileName(obj, maxdistance)
end

---@param Line_index number
---@param size number
---@return table|string
function API.GetChatMessage(Line_index, size)
	return GetChatMessage(Line_index, size)
end

---@param tilexy FFPOINT
---@param distance number
---@return void
function API.Map_Walker1(tilexy, distance)
	return Map_Walker1(tilexy, distance)
end

---@param tilexy2 WPOINT
---@param distance number
---@return void
function API.Map_Walker1NT(tilexy2, distance)
	return Map_Walker1NT(tilexy2, distance)
end

---@param tilexy FFPOINT
---@param distance number
---@return void
function API.Map_Walker2(tilexy, distance)
	return Map_Walker2(tilexy, distance)
end

---@param ascii_num string
---@return number
function API.AsciiToNumbers32(ascii_num)
	return AsciiToNumbers32(ascii_num)
end

---@param ascii_num string
---@return number
function API.AsciiToNumbers64(ascii_num)
	return AsciiToNumbers64(ascii_num)
end

---@return boolean
function API.BankAllItems()
	return BankAllItems()
end

---@param Except_item table|number
---@return boolean
function API.BankAllItem_InvExceptintM(Except_item)
	return BankAllItem_InvExceptintM(Except_item)
end

---@param Except_item table|string
---@return boolean
function API.BankAllItem_InvExceptstrM(Except_item)
	return BankAllItem_InvExceptstrM(Except_item)
end

---@param id number
---@param mouse number
---@return boolean
function API.BankClickItem(id, mouse)
	return BankClickItem(id, mouse)
end

---@param id number
---@param mouse number
---@return boolean
function API.BankClickItem_Inv(id, mouse)
	return BankClickItem_Inv(id, mouse)
end

---@param id number
---@param choose_text string
---@return boolean
function API.BankClickItem_InvChoose(id, choose_text)
	return BankClickItem_InvChoose(id, choose_text)
end

---@return void
function API.BankClose()
	return BankClose()
end

---@param item number
---@return WPOINT
function API.BankGetItem(item)
	return BankGetItem(item)
end

---@param item number
---@return number
function API.BankGetItemStack_Inv(item)
	return BankGetItemStack_Inv(item)
end

---@param item number
---@return WPOINT
function API.BankGetItem_Inv(item)
	return BankGetItem_Inv(item)
end

---@return WPOINT
function API.BankGetLimits()
	return BankGetLimits()
end

---@return boolean
function API.BankGetVisItemsPrint()
	return BankGetVisItemsPrint()
end

---@return boolean
function API.BankOpen2()
	return BankOpen2()
end

---@param pin number
---@return boolean
function API.DoBankPin(pin)
	return DoBankPin(pin)
end

---@param bar Bbar
---@return number
function API.Bbar_ConvToSeconds(bar)
	return Bbar_ConvToSeconds(bar)
end

---@param print_all_out boolean
---@return table|Bbar
function API.Buffbar_GetAllIDs(print_all_out)
	return Buffbar_GetAllIDs(print_all_out)
end

--[[
Some ids:
perfect juju pot:33234
hittpoints over:1236
yak track:25830
citadel boost:12327
wise perk:26341
grace of elves,porters:51490
overloaded:26093
super/anti-fire,wyrmfire:14692
anti-poison:14693
poison+++ 14694
prayer renewal:14695
elder overload:49039
cinder core:48544
pulse core: 34918
scripture of wen 52117
aftershock: 26466
range pray:26044
magic pray:26041
mele pray: 26040
soulsplit: 26033
turmoil:   26019
anguish:   26020
torment:   26021
malevolenc:29262
desolation:29263
affliction:29264
glacial emprace stack:14766
The Hole buff:51729
Lemon sour:35054
masterstroke:49087
--]]
---@param id number
---@param debug boolean
---@return Bbar
function API.Buffbar_GetIDstatus(id, debug)
	return Buffbar_GetIDstatus(id, debug)
end

---@param text string
---@param limit number
---@return ChatTexts
function API.ChatFind(text, limit)
	return ChatFind(text, limit)
end

---old
---@return table|ChatTexts
function API.ChatGetMessages()
	return ChatGetMessages()
end

---@return number
function API.ChatPortableTime()
	return ChatPortableTime()
end

---@return boolean
function API.CheckDoItemOpen()
	return CheckDoItemOpen()
end

---@return boolean
function API.CheckDoToolOpen()
	return CheckDoToolOpen()
end

---@return boolean
function API.CheckFamiliar()
	return CheckFamiliar()
end

---@param print_all_out boolean
---@return table|Bbar
function API.DeBuffbar_GetAllIDs(print_all_out)
	return DeBuffbar_GetAllIDs(print_all_out)
end

---@param id number
---@param debug boolean
---@return Bbar
function API.DeBuffbar_GetIDstatus(id, debug)
	return DeBuffbar_GetIDstatus(id, debug)
end

---@return boolean
function API.DEPOInterfaceCheckvarbit()
	return DEPOInterfaceCheckvarbit()
end

---@return boolean
function API.EquipInterfaceCheckvarbit()
	return EquipInterfaceCheckvarbit()
end

---@param name string
---@param model_ids table|number
---@return boolean
function API.FindModelCompare(name, model_ids)
	return FindModelCompare(name, model_ids)
end

---@param bar_nr number
---@return table|Abilitybar
function API.GetABarInfo(bar_nr)
	return GetABarInfo(bar_nr)
end

--print all 0-2
---@return void
function API.GetABarInfo_DEBUG()
	return GetABarInfo_DEBUG()
end

---@param bar_nr number
---@param ability_id number
---@return Abilitybar
function API.GetAB_id(bar_nr, ability_id)
	return GetAB_id(bar_nr, ability_id)
end

---@param bar_nr number
---@param ability_name string
---@return Abilitybar
function API.GetAB_name(bar_nr, ability_name)
	return GetAB_name(bar_nr, ability_name)
end

---@param obj number
---@param distance number
---@param type number
---@param adjust_tile WPOINT
---@return AllObject
function API.GetAllObj_dist(obj, distance, type, adjust_tile)
	return GetAllObj_dist(obj, distance, type, adjust_tile)
end

---@param slot number
---@return IInfo
function API.GetEquipSlot(slot)
	return GetEquipSlot(slot)
end

---@return string
function API.GetFamiliarName()
	return GetFamiliarName()
end

---@param entity_base number
---@param debug boolean
---@return table|number
function API.GetModel_ids(entity_base, debug)
	return GetModel_ids(entity_base, debug)
end

---@return boolean
function API.IsSkillsPanelOpen()
	return IsSkillsPanelOpen()
end

---@return boolean
function API.ToggleSkillsPanelVisibility()
	return ToggleSkillsPanelVisibility()
end

---@param index number
---@return Skill
function API.GetSkillById(index)
	return GetSkillById(index)
end

--[[
ATTACK
STRENGTH
RANGED
MAGIC
DEFENCE
CONSTITUTION
PRAYER
SUMMONING
DUNGEONEERING
AGILITY
THIEVING
SLAYER
HUNTER
SMITHING
CRAFTING
FLETCHING
HERBLORE
RUNECRAFTING
COOKING
CONSTRUCTION
FIREMAKING
WOODCUTTING
FARMING
FISHING
MINING
DIVINATION
INVENTION
ARCHAEOLOGY
NECROMANCY
--]]
---@param name string
---@return Skill
function API.GetSkillByName(name)
	return GetSkillByName(name)
end

--[[
ATTACK
STRENGTH
RANGED
MAGIC
DEFENCE
CONSTITUTION
PRAYER
SUMMONING
DUNGEONEERING
AGILITY
THIEVING
SLAYER
HUNTER
SMITHING
CRAFTING
FLETCHING
HERBLORE
RUNECRAFTING
COOKING
CONSTRUCTION
FIREMAKING
WOODCUTTING
FARMING
FISHING
MINING
DIVINATION
INVENTION not known
ARCHAEOLOGY
NECROMANCY
--]]
---@param name string
---@return number
function API.GetSkillXP(name)
	return GetSkillXP(name)
end

--- check if inventory open 
---@return boolean
function API.InventoryInterfaceCheckvarbit()
	return InventoryInterfaceCheckvarbit()
end

---@return boolean
function API.LODEInterfaceCheckvarbit()
	return LODEInterfaceCheckvarbit()
end

---@param entity_base number
---@param model_ids table|number
---@return boolean
function API.ModelCompare(entity_base, model_ids)
	return ModelCompare(entity_base, model_ids)
end

---@param item number
---@return boolean
function API.Notestuff(item)
	return Notestuff(item)
end

---@param item number
---@return boolean
function API.DoNotestuff(item)
	return DoNoteStuff(item)
end

---@param item number
---@return boolean
function API.NotestuffInvfull(item)
	return NotestuffInvfull(item)
end

---@param chest number
---@param pushnumber number --char
---@param content_ids table|number
---@param size number
---@return table|number
function API.OpenBankChest_am(chest, pushnumber, content_ids, size)
	return OpenBankChest_am(chest, pushnumber, content_ids, size)
end

---@return void
function API.PrintEquipSlots()
	return PrintEquipSlots()
end

---@param bar_nr number
---@return void
function API.print_GetABarInfo(bar_nr)
	return print_GetABarInfo(bar_nr)
end

---@return void
function API.RandomEvents()
	return RandomEvents()
end

--use containers instead
---@return table|IInfo
function API.ReadEquipment()
	return ReadEquipment()
end

---@param boxtext string
---@param secondedit boolean
---@return table|string
function API.ScriptAskBox(boxtext, secondedit)
	return ScriptAskBox(boxtext, secondedit)
end

---@param boxtext string
---@param textchoices table|string
---@param button_name1 string
---@param button_name2 string
---@param Make string
---@param Edit string
---@return returntext
function API.ScriptDialogWindow2(boxtext, textchoices, button_name1, button_name2, Make, Edit)
	return ScriptDialogWindow2(boxtext, textchoices, button_name1, button_name2, Make, Edit)
end

---@param boxtext string
---@param password boolean
---@param arrtype number
---@param filename string
---@return table --<NAMEdata> prob not needed never
function API.ScriptDialogWindow_input(boxtext, password, arrtype, filename)
	return ScriptDialogWindow_input(boxtext, password, arrtype, filename)
end

---@param txt_to_find string
---@return boolean
function API.SelectToolOpen(txt_to_find)
	return SelectToolOpen(txt_to_find)
end

---@param input table|string
---@return table|number
function API.StringsToInts(input)
	return StringsToInts(input)
end

--it keeps thread in a loop until either ticks expire or howmanychecks fails to detect any action
---@return boolean
---@param tick_sleeps number --how many 600ms to wait
---@param howmanychecks number --how many times to check if actions is still going
---@return boolean --true is when howmanychecks fails to detect action, false is when loop ends successfully = something is still going
function API.WaitUntilMovingEnds(tick_sleeps, howmanychecks)
	return WaitUntilMovingEnds(tick_sleeps, howmanychecks)
end

--it keeps thread in a loop until either ticks expire or howmanychecks fails to detect any action
---@return boolean
---@param tick_sleeps number --how many 600ms to wait
---@param howmanychecks number --how many times to check if actions is still going
---@return boolean --true is when howmanychecks fails to detect action, false is when loop ends successfully = something is still going
function API.WaitUntilMovingandAnimEnds(tick_sleeps, howmanychecks)
	return WaitUntilMovingandAnimEnds(tick_sleeps, howmanychecks)
end

--it keeps thread in a loop until either ticks expire or howmanychecks fails to detect any action
---@return boolean
---@param tick_sleeps number --how many 600ms to wait
---@param howmanychecks number --how many times to check if actions is still going
---@return boolean --true is when howmanychecks fails to detect action, false is when loop ends successfully = something is still going
function API.WaitUntilMovingandAnimandCombatEnds(tick_sleeps, howmanychecks)
	return WaitUntilMovingandAnimandCombatEnds(tick_sleeps, howmanychecks)
end

---@param wait_time number
---@param random_time number
---@param reset boolean
---@return boolean
function API.Wait_Timer(wait_time, random_time, reset)
	return Wait_Timer(wait_time, random_time, reset)
end

---@param walktile WPOINT
---@param stopdistance number
---@return boolean
function API.WalkUntilClose(walktile, stopdistance)
	return WalkUntilClose(walktile, stopdistance)
end

---@param xp number
---@param elite boolean ---optional
---@return number
function API.XPLevelTable(xp)
	return XPLevelTable(xp)
end

---@param level number
---@param elite boolean ---optional
---@return number
function API.XPForLevel(level)
	return XPForLevel(level)
end

---@return boolean
function API.DoContinue_Dialog()
	return DoContinue_Dialog()
end

---@param text string
---@return boolean
function API.DoDialog_Option(text)
	return DoDialog_Option(text)
end

--- m_action and offset is from doaction debug
--- use exact_match for exact string match
---@param name string
---@param m_action number
---@param offset number
---@param exact_match boolean
---@return boolean
function API.DoAction_Ability(name, m_action, offset, exact_match)
	return DoAction_Ability(name, m_action, offset, exact_match)
end

--- m_action and offset is from doaction debug
--- use exact_match for exact string match
---@param name string
---@param m_action number
---@param offset number
---@param checkenabled boolean
---@param checkcooldown boolean
---@param exact_match boolean
---@return boolean
function API.DoAction_Ability_check(name, m_action, offset, checkenabled, checkcooldown, exact_match)
	return DoAction_Ability_check(name, m_action, offset, checkenabled, checkcooldown, exact_match)
end

---@param Ab Abilitybar
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Ability_Direct(Ab, m_action, offset)
	return DoAction_Ability_Direct(Ab, m_action, offset)
end

---@param id number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Bank(id, m_action, offset)
	return DoAction_Bank(id, m_action, offset)
end

---@param itemname string
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Bank_str(itemname, m_action, offset)
	return DoAction_Bank(itemname, m_action, offset)
end

---@param id number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Bank_Inv(id, m_action, offset)
	return DoAction_Bank_Inv(id, m_action, offset)
end

--For 2 part action. Dive/Bladeddive/bombs from interface ab -> then this
---@param normal_tile WPOINT
---@return boolean
function API.DoAction_SpecialWalk(normal_tile)
	return DoAction_SpecialWalk(normal_tile)
end

--For Dive
---@param normal_tile WPOINT
---@return boolean
function API.DoAction_Dive_Tile(normal_tile)
	return DoAction_Dive_Tile(normal_tile)
end

--For Bladed Dive
---@param normal_tile WPOINT
---@return boolean
function API.DoAction_BDive_Tile(normal_tile)
    return DoAction_BDive_Tile(normal_tile)
end

--For Bladed Dive and just Dive
---@param normal_tile WPOINT
---@param sleep number
---@return boolean
function API.DoAction_Dive_Tile_sleep(normal_tile,sleep)
	return DoAction_Dive_Tile(normal_tile,sleep)
end

---@param normal_tile WPOINT
---@param errorrange number
---@return boolean
function API.DoAction_Surge_Tile(normal_tile, errorrange)
	return DoAction_Surge_Tile(normal_tile, errorrange)
end

--Auto-retaliate button
---@return boolean
function API.DoAction_Button_AR()
	return DoAction_Button_AR()
end

--call familiar button
--[[
0 - call familiar
1 - cast special //legendary = no
2 - attack //legendary = can't
3 - summon pet
4 - dismiss
5 - follower details
6 - interact
7 - renew familiar
8 - give bob
9 - take bob
10 - restore points
]]--
---@param Possible_order number
---@return boolean
function API.DoAction_Button_FO(Possible_order)
	return DoAction_Button_FO(Possible_order)
end

--generate health
---@return boolean
function API.DoAction_Button_GH()
	return DoAction_Button_GH()
end

--quickpray
---@return boolean
function API.DoAction_Button_QP()
	return DoAction_Button_QP()
end

---@param action number
---@param route number
---@param obj AllObject
---@return boolean
function API.DoAction_G_Items_Direct(action, route, obj)
	return DoAction_G_Items_Direct(action, route, obj)
end

---@param action number
---@param obj table|number
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r_norm(action, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r_norm(action, obj, maxdistance, tile, radius)
end

---@param action number
---@param obj table|number
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r_normSTACKs(action, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r_normSTACKs(action, obj, maxdistance, tile, radius)
end

---@param command1 number
---@param command2 number
---@param command3 number
---@param numbererface1 number
---@param numbererface2 number
---@param numbererface3 number
---@param offset number
---@param pixel_x number
---@param pixel_y number
---@return boolean
function API.DoAction_Interface(command1, command2, command3, numbererface1, numbererface2, numbererface3, offset, pixel_x, pixel_y)
	return DoAction_Interface(command1, command2, command3, numbererface1, numbererface2, numbererface3, offset, pixel_x, pixel_y)
end

--1 That mini logout button attached to minimap
---@return boolean
function API.DoAction_Logout_mini()
	return DoAction_Logout_mini()
end

--2 pick logout from settings menu
---@return boolean
function API.DoAction_then_lobby()
	return DoAction_then_lobby()
end

--clicks loot all button if open
---@return boolean
function API.DoAction_LootAll_Button()
	return DoAction_LootAll_Button()
end

---@param ids table|number
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_Loot_w(ids, maxdistance, tile, radius)
	return DoAction_Loot_w(ids, maxdistance, tile, radius)
end

---@param ids table              - item ids to loot
---@param maxdistance number     - maximum distance to search for items
---@param max_item_count number  - max items to loot in one call
---@param keycode number         - ASCII key code for loot window shortcut
---@param keymod number          - 0 for no modifier, 1 or 2 for shift or alt respectively
---@return boolean
function API.DoAction_Loot_k(ids, maxdistance, max_item_count, keycode, keymod)
	return DoAction_Loot_k(ids, maxdistance, max_item_count, keycode, keymod)
end

---@return boolean
function API.DoAction_Loot_w_Close()
	return DoAction_Loot_w_Close()
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param ignore_star boolean
---@param health number
---@return boolean
function API.DoAction_NPC(action, offset, objects, maxdistance, ignore_star, health)
	return DoAction_NPC(action, offset, objects, maxdistance, ignore_star, health)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param bottom_left WPOINT
---@param top_right WPOINT
---@return boolean
function API.DoAction_NPC_In_Area(action, offset, obj, maxdistance, bottom_left, top_right, ignore_star, health)
	return DoAction_NPC_In_Area(action, offset, obj, maxdistance, bottom_left, top_right, ignore_star, health)
end

---@param action number
---@param offset number
---@param obj table|string
---@param maxdistance number
---@param ignore_star boolean
---@param health number
---@return boolean
function API.DoAction_NPC_str(action, offset, objects, maxdistance, ignore_star, health)
	return DoAction_NPC_str(action, offset, objects, maxdistance, ignore_star, health)
end

---@param action number
---@param offset number
---@param object AllObject
---@return boolean
function API.DoAction_NPC__Direct(action, offset, object)
	return DoAction_NPC__Direct(action, offset, object)
end

---@param action number
---@param offset number
---@param object AllObject
---@return boolean
function API.DoAction_Object_Direct(action, offset, object)
	return DoAction_Object_Direct(action, offset, object)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@return boolean
function API.DoAction_Object_furthest(action, offset, obj, maxdistance)
	return DoAction_Object_furthest(action, offset, obj, maxdistance)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param tile WPOINT
---@param tile_range number max distance FROM tile to found object, tile and tile_range range cant be zero
---@return boolean
function API.DoAction_Object_r(action, offset, obj, maxdistance, tile, tile_range)
	return DoAction_Object_r(action, offset, obj, maxdistance, tile, tile_range)
end

---@param normal_tile WPOINT
---@return boolean
function API.DoAction_Tile(normal_tile)
	return DoAction_Tile(normal_tile)
end

---@param normal_tile FFPOINT
---@return boolean
function API.DoAction_TileF(normal_tile)
	return DoAction_TileF(normal_tile)
end

---@param obj AllObject
---@param offset number
---@return boolean
function API.DoAction_VS_Player_action_Direct(obj, offset)
	return DoAction_VS_Player_action_Direct(obj, offset)
end

---@param obj table|string
---@param maxdistance number
---@return boolean
function API.DoAction_VS_Player_Follow(obj, maxdistance)
	return DoAction_VS_Player_Follow(obj, maxdistance)
end

---@param obj table|string
---@param maxdistance number
---@return boolean
function API.DoAction_VS_Player_Trade(obj, maxdistance)
	return DoAction_VS_Player_Trade(obj, maxdistance)
end

---@param normal_tile FFPOINT
---@param sleep number --50 is ok number
---@return boolean
function API.DoAction_WalkerF1(normal_tile, sleep)
	return DoAction_WalkerF(normal_tile, sleep)
end

---@param normal_tile FFPOINT
---@return boolean
function API.DoAction_WalkerF(normal_tile)
	return DoAction_WalkerF(normal_tile)
end

---@param normal_tile FFPOINT
---@param sleep number --50 is ok number
---@return boolean
function API.DoAction_WalkerF1(normal_tile, sleep)
	return DoAction_WalkerF(normal_tile, sleep)
end

---@param normal_tile WPOINT
---@return boolean
function API.DoAction_WalkerW(normal_tile)
	return DoAction_WalkerW(normal_tile)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param highlight table|number
---@return boolean
function API.DOFindHl(action, offset, obj, maxdistance, highlight)
	return DOFindHl(action, offset, obj, maxdistance, highlight)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param highlight table|number
---@param localp_dist number --float
---@return boolean
function API.DOFindHLvsLocalPlayer(action, offset, obj, maxdistance, highlight, localp_dist)
	return DOFindHLvsLocalPlayer(action, offset, obj, maxdistance, highlight, localp_dist)
end

--- wide array of randoms
---@return boolean
function API.DoRandomEvents()
	return DoRandomEvents()
end

--- single random ncp
---@return boolean
function API.DoRandomEvent(randnpc)
	return DoRandomEvent(randnpc)
end

---@param value number
---@param arrayof table|number
---@return boolean
function API.Math_ValueEquals(value, arrayof)
	return Math_ValueEquals(value, arrayof)
end

---@param item number
---@param action number
---@return WPOINT
function API.InvFindItem1(item, action)
	return InvFindItem(item, action)
end

---@param item string
---@param action number
---@return WPOINT
function API.InvFindItem2(item, action)
	return InvFindItem(item, action)
end

---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObj1(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObj(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext table|string
---@return boolean
function API.FindObj2(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObj(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param AllStuff2 table|AllObject
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.ClickAllObj1(AllStuff2, accuracy, usemap, action, sidetext)
	return ClickAllObj(AllStuff2, accuracy, usemap, action, sidetext)
end

---@param AllStuff2 table|AllObject
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext table|string
---@return boolean
function API.ClickAllObj2(AllStuff2, accuracy, usemap, action, sidetext)
	return ClickAllObj(AllStuff2, accuracy, usemap, action, sidetext)
end

--[[AllObject Types 
0 obj
1 npc
2 player
3 ground item
4 highlights
5 projectiles
8 tiles
12 decor
--]]
---@param obj table|number
---@param maxdistance number
---@param type table|number {}
---@return AllObject
function API.GetAllObjArrayFirst(obj, maxdistance, type)
	return GetAllObjArrayFirst(obj, maxdistance,type)
end

--[[AllObject Types 
0 obj
1 npc
2 player
3 ground item
4 highlights
5 projectiles
8 tiles
12 decor
--]]
---@param obj table|number
---@param maxdistance number
---@param type table|number {}
---@param tile WPOINT
---@return AllObject
function API.GetAllObjArrayFirstTile(obj, maxdistance, type, tile)
	return GetAllObjArrayFirstTile(obj, maxdistance,type, tile)
end

--[[AllObject Types 
0 obj
1 npc
2 player
3 ground item
4 highlights
5 projectiles
8 tiles
12 decor
--]]
---@param obj table|number
---@param maxdistance number
---@param type table|number {}
---@return table|AllObject
function API.GetAllObjArray1(obj, maxdistance, type)
	return GetAllObjArray(obj, maxdistance,type)
end

--[[AllObject Types 
0 obj
1 npc
2 player
3 ground item
4 highlights
5 projectiles
8 tiles
12 decor
--]]
---@param obj table|number
---@param maxdistance number
---@param type table|number {}
---@param tile WPOINT
---@return table|AllObject
function API.GetAllObjArray2(obj, maxdistance, type, tile)
	return GetAllObjArray(obj, maxdistance, type, tile)
end

---@param tile WPOINT
---@return boolean
function API.CheckTileforObjects1(tile)
	return CheckTileforObjects(tile)
end

---@param tile WPOINT
---@param object number
---@param thresh number --float
---@return boolean
function API.CheckTileforObjects2(tile, object, thresh)
	return CheckTileforObjects(tile, object, thresh)
end

---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObjCheck_1(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObjCheck_(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param obj table|number
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@param tile WPOINT
---@return boolean
function API.FindObjCheck_2(obj, maxdistance, accuracy, usemap, action, sidetext, tile)
	return FindObjCheck_(obj, maxdistance, accuracy, usemap, action, sidetext, tile)
end

--int input
---@param item number
---@param randomelement number --0 default
---@param action number --0 left
---@param xrand number
---@param yrand number
---@return boolean
function API.ClickInv_1(item, randomelement, action, xrand, yrand)
	return ClickInv_(item, randomelement, action, xrand, yrand)
end

--text input
---@param item string
---@param randomelement number --0 default
---@param action number --0 left
---@param xrand number
---@param yrand number
---@return boolean
function API.ClickInv_2(item, randomelement, action, xrand, yrand)
	return ClickInv_(item, randomelement, action, xrand, yrand)
end

--old
---@param xy table|number c POINT
---@param mouse number
---@return void
function API.ClickTile_1(xy, mouse)
	return ClickTile_(xy, mouse)
end

--old
---@param x number
---@param y number
---@param z number
---@param mouse number
---@return void
function API.ClickTile_2(x, y, z, mouse)
	return ClickTile_(x, y, z, mouse)
end

---@param item number
---@return number
function API.InvItemcount_1(item)
	return InvItemcount_(item)
end

---@param item table|number
---@return table|number
function API.InvItemcount_2(item)
	return InvItemcount_(item)
end

---@param item number
---@return boolean
function API.InvItemFound1(item)
	return InvItemFound(item)
end

---@param items table|number
---@return boolean
function API.InvItemFound2(items)
	return InvItemFound(items)
end

---@param text string
---@return boolean
function API.SideTextEq1(text)
	return SideTextEq(text)
end

---@param text table|string
---@return boolean
function API.SideTextEq2(text)
	return SideTextEq(text)
end

---@param xstart number
---@param xend number
---@param xcurrent number
---@param ystart number
---@param yend number
---@param ycurrent number
---@return boolean
function API.InArea21(xstart, xend, xcurrent, ystart, yend, ycurrent)
	return InArea2(xstart, xend, xcurrent, ystart, yend, ycurrent)
end

---@param xstart number --float
---@param xend number --float
---@param xcurrent number --float
---@param ystart number --float
---@param yend number --float
---@param ycurrent number --float
---@return boolean
function API.InArea22(xstart, xend, xcurrent, ystart, yend, ycurrent)
	return InArea2(xstart, xend, xcurrent, ystart, yend, ycurrent)
end

---@param norm_tile FFPOINT
---@param range number --float
---@return boolean
function API.PInAreaF1(norm_tile, range)
	return PInAreaF(norm_tile, range)
end

---@param norm_tile FFPOINT
---@param range number
---@return boolean
function API.PInAreaF2(norm_tile, range)
	return PInAreaF(norm_tile, range)
end

---@param xstart number
---@param xend number
---@param ystart number
---@param yend number
---@return boolean
function API.PInArea21(xstart, xend, ystart, yend)
	return PInArea2(xstart, xend, ystart, yend)
end

---@param xstart number --float
---@param xend number --float
---@param ystart number --float
---@param yend number --float
---@return boolean
function API.PInArea22(xstart, xend, ystart, yend)
	return PInArea2(xstart, xend, ystart, yend)
end

--- Ascii numeric values, 1 is 49, enter is 17, space is 32
---@param codes number
---@param sleep number
---@param rand number
---@return void
function API.KeyboardPress31(codes, sleep, rand)
	return KeyboardPress3(codes, sleep, rand)
end

--- Ascii numeric values, 1 is 49, enter is 17, space is 32
---@param codes number
---@param keymod number
---@return void
function API.KeyboardPress32(codes, keymod)
	return KeyboardPress3(codes, keymod)
end

---@param value number
---@param arrayof table|IInfo
---@return boolean
function API.Math_IInfo_ValueEquals1(value, arrayof)
	return Math_IInfo_ValueEquals(value, arrayof)
end

---@param value table|IInfo
---@param arrayof table|IInfo
---@return boolean
function API.Math_IInfo_ValueEquals2(value, arrayof)
	return Math_IInfo_ValueEquals(value, arrayof)
end

---@param number number --double
---@return number
function API.Math_RandomNumber1(number)
	return Math_RandomNumber(number)
end

---@param number number --float
---@return number
function API.Math_RandomNumber2(number)
	return Math_RandomNumber(number)
end

---@param number number
---@return number
function API.Math_RandomNumber3(number)
	return Math_RandomNumber(number)
end

---@param spot number
---@return WPOINT
function API.W2ScreenNat1(spot)
	return W2ScreenNat(spot)
end

---@param entity FFPOINT
---@return WPOINT
function API.W2ScreenNat2(entity)
	return W2ScreenNat(entity)
end

---@param loop number
---@return boolean
function API.Local_PlayerInterActingWith_21(loop)
	return Local_PlayerInterActingWith_2(loop)
end

---@param loop number
---@param name string
---@return boolean
function API.Local_PlayerInterActingWith_22(loop, name)
	return Local_PlayerInterActingWith_2(loop, name)
end

---@param player string
---@return string
function API.PlayerInterActingWith_1(player)
	return PlayerInterActingWith_(player)
end

---@param localmem number
---@return string
function API.PlayerInterActingWith_2(localmem)
	return PlayerInterActingWith_(localmem)
end

---@param target_under boolean
---@param lv_ID table|InterfaceComp5
---@return table|IInfo
function API.ScanForInterfaceTest2Get(target_under, lv_ID)
	if type(lv_ID[1]) == "table" then
		local ids = {}
		
		for i = 1, #lv_ID do
			local comp = InterfaceComp5:new(lv_ID[i][1], lv_ID[i][2], lv_ID[i][3], lv_ID[i][4])
			table.insert(ids, comp)
		end
		
		return ScanForInterfaceTest2Get(target_under, ids)
	end
	
	return ScanForInterfaceTest2Get(target_under, lv_ID)
end

---@param item number
---@return number
function API.BankGetItemStack1(item)
	return BankGetItemStack(item)
end

---@param itemname string
---@return number
function API.BankGetItemStack_str(itemname)
	return BankGetItemStack(itemname)
end

---@param item table|number
---@return table|number
function API.BankGetItemStack2(item)
	return BankGetItemStack(item)
end

---@param item1 number
---@param item2 number
---@return boolean
function API.CheckInvStuff1(item1, item2)
	return CheckInvStuff(item1, item2)
end

---@param item1 number
---@return boolean
function API.CheckInvStuff2(item1)
	return CheckInvStuff(item1)
end

---@param item1 table|number
---@return table|number
function API.CheckInvStuff3(item1)
	return CheckInvStuff(item1)
end

---@param items table|number
---@return boolean
function API.CheckInvStuffCheckAll1(items)
	return CheckInvStuffCheckAll(items)
end

---@param items table|number
---@param size number
---@return boolean
function API.CheckInvStuffCheckAll2(items, size)
	return CheckInvStuffCheckAll(items, size)
end

---@param port number
---@param checktext string
---@return boolean
function API.DoPortables1(port, checktext)
	return DoPortables(port, checktext)
end

---@param port number
---@param settID number
---@param checktext string
---@return boolean
function API.DoPortables2(port, settID, checktext)
	return DoPortables(port, settID, checktext)
end

---@param slot number
---@param id number
---@return boolean
function API.EquipSlotEq1(slot, id)
	return EquipSlotEq(slot, id)
end

---@param slot number
---@param txt string
---@return boolean
function API.EquipSlotEq2(slot, txt)
	return EquipSlotEq(slot, txt)
end

-- probl some old scripts use it
---@param ability_name string
---@return Abilitybar
function API.GetABs_name1(ability_name)
	return GetABs_name(ability_name)
end

-- get ability data by name
-- use exact_match for exact string match
---@param ability_name string
---@param exact_match boolean
---@return Abilitybar
function API.GetABs_name(ability_name, exact_match)
	return GetABs_name(ability_name, exact_match)
end

-- gets ability data by matching icon id
---@param ability_id number
---@return Abilitybar
function API.GetABs_id(ability_id)
	return GetABs_id(ability_id)
end

-- gets ability data by matching icon ids
---@param ability_ids number
---@return table|Abilitybar
function API.GetABs_ids(ability_ids)
	return GetABs_ids(ability_ids)
end

-- get ability data by names
---@param ability_names table|string
---@return table|Abilitybar
function API.GetABs_names(ability_names)
	return GetABs_names(ability_names)
end

-- gets ability data by matching icon ids, in order of input, for potions, super_restore = { 3024,3026,3028,3030 } <- full dose to smaller
---@param ability_ids number
---@return Abilitybar --single slot
function API.GetAB_ids(ability_ids)
	return GetAB_ids(ability_ids)
end

---@param chest number
---@return boolean
function API.OpenBankChest1(chest)
	return OpenBankChest(chest)
end

---@param chest number
---@param pushnumber number --char
---@return boolean
function API.OpenBankChest2(chest, pushnumber)
	return OpenBankChest(chest, pushnumber)
end

---@param chest number
---@param pushnumber number --char
---@param content_ids table|number
---@return boolean
function API.OpenBankChest3(chest, pushnumber, content_ids)
	return OpenBankChest(chest, pushnumber, content_ids)
end

---@param action number
---@param obj table|number
---@param maxdistance number
---@return boolean
function API.DoAction_G_Items1(action, obj, maxdistance)
	return DoAction_G_Items(action, obj, maxdistance)
end

---@param action number
---@param obj table|number
---@param maxdistance number
---@param atTile WPOINT
---@return boolean
function API.DoAction_G_Items2(action, obj, maxdistance, atTile)
	return DoAction_G_Items(action, obj, maxdistance, atTile)
end

---@param action number
---@param obj table|number
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r1(action, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r(action, obj, maxdistance, tile, radius)
end

---@param action number
---@param action_route number
---@param obj table|number
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r2(action, action_route, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r(action, action_route, obj, maxdistance, tile, radius)
end

---@param id number
---@param random number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Inventory1(id, random, m_action, offset)
	return DoAction_Inventory(id, random, m_action, offset)
end

---@param ids table|number
---@param random number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Inventory2(ids, random, m_action, offset)
	return DoAction_Inventory(ids, random, m_action, offset)
end

---@param itemname string
---@param random number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Inventory3(itemname, random, m_action, offset)
	return DoAction_Inventory(itemname, random, m_action, offset)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@return boolean
function API.DoAction_Object1(action, offset, obj, maxdistance)
	return DoAction_Object(action, offset, obj, maxdistance)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param tile WPOINT
---@return boolean
function API.DoAction_Object2(action, offset, obj, maxdistance, tile)
    return DoAction_Object(action, offset, obj, maxdistance, tile)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param valid boolean
---@return boolean
function API.DoAction_Object_valid1(action, offset, obj, maxdistance, valid)
	return DoAction_Object_valid(action, offset, obj, maxdistance, valid)
end

---@param action number
---@param offset number
---@param obj table|number
---@param maxdistance number
---@param tile WPOINT
---@param valid boolean
---@return boolean
function API.DoAction_Object_valid2(action, offset, obj, maxdistance, tile, valid)
	return DoAction_Object_valid(action, offset, obj, maxdistance, tile, valid)
end

---@param action number
---@param offset number
---@param obj table|string
---@param maxdistance number
---@param valid boolean
---@return boolean
function API.DoAction_Object_string1(action, offset, obj, maxdistance, valid)
	return DoAction_Object_string(action, offset, obj, maxdistance, valid)
end

---@param action number
---@param offset number
---@param obj table|string
---@param maxdistance number
---@param tile WPOINT
---@param valid boolean
---@return boolean
function API.DoAction_Object_string2(action, offset, obj, maxdistance, tile, valid)
	return DoAction_Object_string(action, offset, obj, maxdistance, tile, valid)
end

---@param obj table|string
---@param maxdistance number
---@return boolean
function API.DoAction_VS_Player_Attack1(obj, maxdistance)
	return DoAction_VS_Player_Attack(obj, maxdistance)
end

---@param obj table|string
---@param maxdistance number
---@param checkcombat boolean
---@param xstart number
---@param xend number
---@param ystart number
---@param yend number
---@return boolean
function API.DoAction_VS_Player_Attack2(obj, maxdistance, checkcombat, xstart, xend, ystart, yend)
	return DoAction_VS_Player_Attack(obj, maxdistance, checkcombat, xstart, xend, ystart, yend)
end

---@param logline string
---@param level string --info debug warn error
function API.Log(logline, level)
	return Log(logline, level)
end

---@param logline string
function API.logInfo(logline)
	return Log(logline,'info')
end

---@param logline string
function API.logDebug(logline)
	return Log(logline,'debug')
end

---@param logline string
function API.logWarn(logline)
	return Log(logline,'warn')
end

---@param logline string
function API.logError(logline)
	return Log(logline,'error')
end

---@return TrackedSkill -- vector<TrackedSkill>
function API.GetTrackedSkills()
	return GetTrackedSkills()
end

---@return string -- Current time in the format hh:mm:ss
function API.FormattedTime()
	return FormattedTime()
end

---@return number -- script runtime in seconds
function API.ScriptRuntime()
	return ScriptRuntime()
end

---@return string -- script runtime in the format [hh:mm:ss]
function API.ScriptRuntimeString()
	return ScriptRuntimeString()
end

---@param val boolean
function API.SetDrawLogs(val)
	return SetDrawLogs(val)
end

---@param val boolean
function API.SetDrawTrackedSkills(val)
	return SetDrawTrackedSkills(val)
end

---Get item price from exchange API
---@param number|table itemid or table of itemids to lookup
---@return number|table price of table of prices with itemid as key, price as value
---@overload fun(itemids: table): table
function API.GetExchangePrice(itemid)
    return GetExchangePrice(itemid)
end

---Grand Exchange LUADoc

---@class OrderType
---@field BUY number
---@field SELL number
OrderType = OrderType

---
-- Represents an entry in the Grand Exchange.
---@class ExchangeEntry
---@field status number The status of the order.
---@field order_type OrderType The type of order Buy|Sell.
---@field item_id number The itemid of the order.
---@field price number The price of the order.
---@field quantity number The volume of the order.
---@field completed_quantity number The completed quantity of the order.
---@field completed_value number The completed value of the order.

GrandExchange = GrandExchange

--- Sets the delay offset for sleeps in Grand Exchange actions.
---@param offset number The sleep delay offset to be added.
---@return void
function GrandExchange:DelayOffset(offset) end

-- Retrieves the data for a specific slot from the GrandExchange table.
---@function GrandExchange:GetSlotData
---@param slot (number) The index of the slot to retrieve data for.
---@return ExchangeEntry ExchangeEntry data associated with the specified slot.
function GrandExchange:GetSlotData(slot) end

--- Places an order in the Grand Exchange.
---@param type OrderType The type of order to place
---@param itemId number The ID of the item.
---@param itemName string The name of the item.
---@param price number The price of the item.
---@param quantity number The quantity of the item.
---@return boolean
function GrandExchange:PlaceOrder(type, itemId, itemName, price, quantity) end

--- Retrieves the data for all slots in the Grand Exchange.
---@return ExchangeEntry[] ExchangeEntry array containing the data for each slot.
function GrandExchange:GetData() end

--- Checks if the player is at the Grand Exchange.
---@return boolean True if the player is at the Grand Exchange
function GrandExchange:IsAtGE() end

--- Checks if the Grand Exchange window is open.
---@return boolean True if the Grand Exchange window is open
function GrandExchange:IsGEWindowOpen() end

--- Checks if the Grand Exchange search interface is open.
---@return boolean True if the Grand Exchange search interface is open
function GrandExchange:IsGESearchOpen() end

--- Collects items from the Grand Exchange to the player's inventory.
---@return boolean
function GrandExchange:CollectToInventory() end

--- Returns to the previous interface from the Grand Exchange.
---@return boolean
function GrandExchange:Back() end

--- Opens the Grand Exchange
---@return boolean
function GrandExchange:Open() end

--- Closes the Grand Exchange
---@return boolean
function GrandExchange:Close() end

--- Returns the number of available slots in the Grand Exchange.
---@return number The number of available slots.
function GrandExchange:GetAvailableSlots() end

--- Returns the number of finished slots in the Grand Exchange.
---@return number The number of finished slots.
function GrandExchange:GetFinishedSlots() end

--- Returns the index of the next available slot in the Grand Exchange.
---@return number The index of the next available slot.
function GrandExchange:GetNextAvailableSlot() end

--- Opens a specific slot in the Grand Exchange.
---@param slot number The index of the slot to open.
---@return boolean True if the slot was successfully opened
function GrandExchange:OpenSlot(slot) end

--- Opens the next available slot in the Grand Exchange.
---@return boolean True if the next available slot was successfully opened
function GrandExchange:OpenNextAvailableSlot() end

--- Sets the quantity for an item in the Grand Exchange.
---@param quantity number The quantity to set.
---@return boolean True if the quantity was successfully set
function GrandExchange:SetQuantity(quantity) end

--- Sets the price for an item in the Grand Exchange.
---@param price number The price to set.
---@return boolean
function GrandExchange:SetPrice(price) end

--- Searches for an item in the Grand Exchange UI.
---@param itemId number The ID of the item to search for.
---@return number slotIndex of the item in the UI, or -1 if not found.
function GrandExchange:SearchForItemInUI(itemId) end

--- Selects an item in the Grand Exchange UI.
---@param itemId number The ID of the item to select.
---@return boolean True if the item was successfully selected.
function GrandExchange:SelectItem(itemId) end

--- Confirms an order in the Grand Exchange.
---@return boolean True if the order was successfully confirmed.
function GrandExchange:ConfirmOrder() end

--- Finds an order in the Grand Exchange by item ID.
---@param itemId number The ID of the item to find.
---@return number slotNumber slot number of the order, or -1 if not found.
function GrandExchange:FindOrder(itemId) end

--- Cancels an order in the Grand Exchange.
---@param slot number The slot number of the order to cancel.
---@return boolean True if the order was successfully canceled.
function GrandExchange:CancelOrder(slot) end

--- Inventory LUADoc
--- 
--- Represents an item in the Inventory.
---@class InventoryItem
---@field id number The ID of the item.
---@field name string The name of the item.
---@field amount number The size of the item stack.
---@field slot number The inventory slot the item is in.
---@field xp number The experience of the item.

--- Represents the Inventory system.
---@class Inventory
Inventory = Inventory

--- Checks whether the Inventory interface is currently open.
---@return boolean `true` if the Inventory is open, `false` otherwise.
function Inventory:IsOpen() end

--- Checks whether the Inventory is full.
---@return boolean `true` if the Inventory is full, `false` otherwise.
function Inventory:IsFull() end

--- Checks whether the Inventory is empty.
---@return boolean `true` if the Inventory is empty, `false` otherwise.
function Inventory:IsEmpty() end

--- Checks if the Inventory contains a specific item.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to check for.
---@return boolean `true` if the Inventory contains the item, `false` otherwise.
function Inventory:Contains(item) end

--- Checks if the Inventory contains all of the specified items.
---
--- Accepts a list of item IDs or a list of item names.
---@param items number[]|string[] The item IDs (number) or item names (string) to check for.
---@return boolean `true` if the Inventory contains all of the items, `false` otherwise.
function Inventory:ContainsAll(items) end

--- Checks if the Inventory contains any of the specified items.
---
--- Accepts a list of item IDs or a list of item names.
---@param items number[]|string[] The item IDs (number) or item names (string) to check for.
---@return boolean `true` if the Inventory contains any of the items, `false` otherwise.
function Inventory:ContainsAny(items) end

--- Checks if the Inventory contains only the specified items.
---
--- Accepts a list of item IDs or a list of item names.
---@param items number[]|string[] The item IDs (number) or item names (string) to check for.
---@return boolean `true` if the Inventory contains only the specified items, `false` otherwise.
function Inventory:ContainsOnly(items) end

--- Checks whether an item is currently selected in the Inventory.
---@return boolean `true` if an item is selected, `false` otherwise.
function Inventory:IsItemSelected() end

--- Retrieves the number of free spaces in the Inventory.
---@return number The number of free spaces in the Inventory.
function Inventory:FreeSpaces() end

--- Retrieves the experience of a specific item in the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to check.
---@return number itemXP The experience of the item. Returns `-1` if not found or an error occurs.
function Inventory:GetItemXp(item) end

--- Gets the current amount of a specific item in the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to check.
---@return number amount The current amount of the item in the Inventory.
function Inventory:GetItemAmount(item) end

--- Eats a specified item from the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to eat.
---@return boolean `true` if the item was eaten, `false` otherwise.
function Inventory:Eat(item) end

--- Uses a specified item from the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to use.
---@return boolean `true` if the item was used, `false` otherwise.
function Inventory:Use(item) end

--- Rubs a piece of jewelry from the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to rub.
---@return boolean `true` if the item was rubbed, `false` otherwise.
function Inventory:Rub(item) end

--- Equips a specified item from the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to equip.
---@return boolean `true` if the item was equipped, `false` otherwise.
function Inventory:Equip(item) end

--- Drops a specified item from the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to drop.
---@return boolean `true` if the item was successfully dropped, `false` otherwise.
function Inventory:Drop(item) end

--- Notes a specified item in the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to note.
---@return boolean `true` if the item was noted, `false` otherwise.
function Inventory:NoteItem(item) end

--- Uses one item on another in the Inventory.
---
--- Accepts either an item ID or an item name for both source and target.
---@param source number|string The item ID (number) or item name (string) to use.
---@param target number|string The item ID (number) or item name (string) to use the source on.
---@return boolean `true` if the items were used successfully, `false` otherwise.
function Inventory:UseItemOnItem(source, target) end

--- Retrieves all items currently in the Inventory.
---
--- Returns a list of `InventoryItem` objects.
---@return InventoryItem[] List of all current inventory items.
function Inventory:GetItems() end

--- Retrieves all occurrences of a specific item from the Inventory.
---
--- Accepts an item ID or item name.
---@param item number|string The item ID (number) or item name (string) to retrieve.
---@return InventoryItem[] List of matching inventory items.
function Inventory:GetItem(item) end

--- Retrieves the item information for the given slot.
---
--- @param slot number The slot index to retrieve the item from.
---@return InventoryItem The item information for the specified slot.
function Inventory:GetSlotData(slot) end

--- Generic DoAction function to perform a custom action on an item.
---
--- Accepts an item ID or item name along with action parameters.
---@param target number|string The item ID (number) or item name (string) to perform the action on.
---@param action number The action identifier (`m_action`).
---@param offset number The offset value, typically an `OFF_ACT`.
---@return boolean `true` if the action was successful, `false` otherwise.
function Inventory:DoAction(target, action, offset) end


--- Equipment LUADoc

--- Represents an item in the player's worn Equipment.
---@class EquipmentItem
---@field id number The ID of the item.
---@field name string The name of the item.
---@field amount number The size of the item stack.
---@field slot number The equipment slot the item is in.
---@field xp number The experience of the item.

--- Represents an ESlot item
---@class ESlot
---@field HEAD number
---@field CAPE number
---@field NECK number
---@field MAINHAND number
---@field BODY number
---@field OFFHAND number
---@field BOTTOM number
---@field GLOVES number
---@field BOOTS number
---@field RING number
---@field AMMO number
---@field AURA number
---@field POCKET number

--- Represents the Equipment system.
---@class Equipment
Equipment = Equipment

--- Retrieves the experience of an item in a specific slot.
---@param slot ESlot The equipment slot (e.g., ESlot.HEAD).
---@return number The experience of the item in the specified slot.
function Equipment:GetItemXp(slot) end

--- Checks whether the Equipment interface is currently open.
---@return boolean `true` if the Equipment is open, `false` otherwise.
function Equipment:IsOpen() end

--- Attempts to open the Equipment interface.
---@return boolean `true` if the Equipment was successfully opened, `false` otherwise.
function Equipment:OpenInterface() end

--- Checks whether the Equipment is empty.
---@return boolean `true` if the Equipment is empty, `false` otherwise.
function Equipment:IsEmpty() end

--- Checks whether the Equipment is full.
---@return boolean `true` if the Equipment is full, `false` otherwise.
function Equipment:IsFull() end

--- Checks if the Equipment contains a specific item.
---
--- Accepts an item ID or name.
---@param item number|string The item ID (number) or name (string) to check for.
---@return boolean `true` if the Equipment contains the item, `false` otherwise.
function Equipment:Contains(item) end

--- Checks if the Equipment contains all items in the provided list.
---
--- Accepts a list of item IDs or names.
---@param items number[]|string[] A table containing item IDs (number) or names (string).
---@return boolean `true` if the Equipment contains all the specified items, `false` otherwise.
function Equipment:ContainsAll(items) end

--- Checks if the Equipment contains any item in the provided list.
---
--- Accepts a list of item IDs or names.
---@param items number[]|string[] A table containing item IDs (number) or names (string).
---@return boolean `true` if the Equipment contains any of the specified items, `false` otherwise.
function Equipment:ContainsAny(items) end

--- Checks if the Equipment contains only the items in the provided list.
---
--- Accepts a list of item IDs or names.
---@param items number[]|string[] A table containing item IDs (number) or names (string).
---@return boolean `true` if the Equipment contains only the specified items, `false` otherwise.
function Equipment:ContainsOnly(items) end

--- Unequips a specified item.
---
--- Accepts an item ID or name.
---@param item number|string The item ID (number) or name (string) to unequip.
---@return boolean `true` if the item was successfully unequipped, `false` otherwise.
function Equipment:Unequip(item) end

--- Retrieves the item data from a specific slot.
---@param slot ESlot The equipment slot; e.g., ESlot.HEAD or ESlot.OFFHAND.
---@return EquipmentItem The item data in the specified slot.
function Equipment:GetSlotData(slot) end

--- Retrieves all items currently equipped.
---@return EquipmentItem[] Table of EquipmentItems containing all equipped items.
function Equipment:GetItems() end

--- Retrieves the equipped Helm item.
---@return EquipmentItem The item currently in the Helm slot.
function Equipment:GetHelm() end

--- Retrieves the equipped Cape item.
---@return EquipmentItem The item currently in the Cape slot.
function Equipment:GetCape() end

--- Retrieves the equipped Neck item.
---@return EquipmentItem The item currently in the Neck slot.
function Equipment:GetNeck() end

--- Retrieves the equipped Mainhand item.
---@return EquipmentItem The item currently in the Mainhand slot.
function Equipment:GetMainhand() end

--- Retrieves the equipped Body item.
---@return EquipmentItem The item currently in the Body slot.
function Equipment:GetBody() end

--- Retrieves the equipped Offhand item.
---@return EquipmentItem The item currently in the Offhand slot.
function Equipment:GetOffhand() end

--- Retrieves the equipped Bottom item.
---@return EquipmentItem The item currently in the Bottom slot.
function Equipment:GetBottom() end

--- Retrieves the equipped Gloves item.
---@return EquipmentItem The item currently in the Gloves slot.
function Equipment:GetGloves() end

--- Retrieves the equipped Boots item.
---@return EquipmentItem The item currently in the Boots slot.
function Equipment:GetBoots() end

--- Retrieves the equipped Ring item.
---@return EquipmentItem The item currently in the Ring slot.
function Equipment:GetRing() end

--- Retrieves the equipped Ammunition item.
---@return EquipmentItem The item currently in the Ammunition slot.
function Equipment:GetAmmo() end

--- Retrieves the equipped Aura item.
---@return EquipmentItem The item currently in the Aura slot.
function Equipment:GetAura() end

--- Retrieves the equipped Pocket item.
---@return EquipmentItem The item currently in the Pocket slot.
function Equipment:GetPocket() end


--- Represents the Interact system.
---@class Interact
Interact = Interact

--- Carries out DoAction to the specified NPC (in place of DoAction_NPC)
---@param name string The Name of the NPC
---@param action string The Action to do against the NPC (e.g. "Attack")
---@param distance number Optional - max distance to search across. defaults to 60 if not specified.
function Interact:NPC(name, action, distance) end

--- Carries out DoAction to the specified Object (in place of DoAction_Object)
---@param name string The Name of the Object
---@param action string The Action to do against the Object (e.g. "Search")
---@param distance number Optional - max distance to search across. defaults to 60 if not specified.
function Interact:Object(name, action, ditance) end

return API