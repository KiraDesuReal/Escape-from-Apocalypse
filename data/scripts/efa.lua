-- Special for Escape from Apocalypce

if EFA_VERSION == nil then
	LOG("ESCAPE FROM APOCALYPCE V0.1 PRE ALPHA")

	EFA_VERSION = "V0.1 PRE ALPHA"
end

if R4M1_exit == nil then
	R4M1_exit = 0
end

-- Счетчик количества рейдов 
if COUNT_RAIDS == nil then
	COUNT_RAIDS = 0
end

-- Рандомизируем пушки ботам 
function GiveGunsForVehicle(vehicle, side_random)
	local veh=vehicle
	local belong = veh:GetBelong()
	local hornet
	if belong == 1089 then
		hornet = "american_hornet01"
	else
		hornet = "hornet01"
	end
	local parts={"CABIN_","BASKET_","CHASSIS_"}
	local slots={"SMALL_","BIG_","GIANT_","SIDE_"}
	local guns={"GUN","GUN_0","GUN_1","GUN_2"}
	local smallgun={hornet,"specter01","pkt01","kord01","maxim01","storm01","fagot01"}
	local biggun={"rapier01","vector01","vulcan01","flag01","kpvt01","rainmetal01","elephant01","odin01","bumblebee01","omega01","hurricane01"}
	local giantgun={"cyclops01","octopus01","rocketLauncher","big_swingfire01"}
	local sidegun={"hailSideGun","marsSideGun","zeusSideGun","hunterSideGun"}
	local side_rand = 1
	if side_random == 1 then
		side_rand = random(4)
	end
	local i,j,k=1,1,1
	while parts[i] do
		while slots[j] do
			while guns[k] do
				local gun=1
				local slot=parts[i]..slots[j]..guns[k]
				if j==1 then
					gun=smallgun[random(7)]
				elseif j==2 then
					gun=biggun[random(11)]
				elseif j==3 then
					gun=giantgun[exrandom(4)]
				elseif j==4 then
					if side_rand == 1 then		
						gun=sidegun[random(4)]
					else
						gun=""
					end
				end
				if veh:CanPartBeAttached(slot) then
					veh:SetNewPart(slot,gun)
				end
				k=k+1
			end
			k=1
			j=j+1
		end
		j=1
		i=i+1
	end
end

-- Использование предметов 
function ItemUse()

	local vehP = GetPlayerVehicle()
	local PlfCoor = vehP:GetPosition()
	local healthcar = GetPlayerHealth() 
	local healthmax = GetPlayerMaxHealth()
	local fuelcar = GetPlayerFuel()
	local fuelmax = GetPlayerMaxFuel()

	local scrap_metal_procent = 10
	local machinery_procent = 25
	local electronics_procent = 40

	local oil_procent = 15
	local fuel_procent = 30

	local procent
	local hp_pr


	if HasPlayerAmountOfItems("scrap_metal_use", 1) and HasPlayerAmountOfItems("machinery_use", 1) and HasPlayerAmountOfItems("electronics_use", 1) then
		procent = healthmax / 100 * electronics_procent
		hp_pr = healthmax - procent
		if vehP then 
			if hp_pr >= healthcar then
				vehP:AddModifier( "hp", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_LIFE", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_electronics", procent)
				RemoveItemsFromPlayerRepository("electronics_use", 1)
			end
		end
	end


	if HasPlayerAmountOfItems("machinery_use", 1) and HasPlayerAmountOfItems("electronics_use", 1) then
		procent = healthmax / 100 * electronics_procent
		hp_pr = healthmax - procent
		if vehP then 
			if hp_pr >= healthcar then
				vehP:AddModifier( "hp", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_LIFE", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_electronics", procent)
				RemoveItemsFromPlayerRepository("electronics_use", 1)
			end
		end
	end


	if HasPlayerAmountOfItems("scrap_metal_use", 1) and HasPlayerAmountOfItems("machinery_use", 1) then
		procent = healthmax / 100 * machinery_procent
		hp_pr = healthmax - procent
		if vehP then 
			if hp_pr >= healthcar then
				vehP:AddModifier( "hp", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_LIFE", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_machinery", procent)
				RemoveItemsFromPlayerRepository("machinery_use", 1)
			end
		end
	end


	if HasPlayerAmountOfItems("electronics_use", 1) then
		procent = healthmax / 100 * electronics_procent
		hp_pr = healthmax - procent
		if vehP then 
			if hp_pr >= healthcar then
				vehP:AddModifier( "hp", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_LIFE", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_electronics", procent)
				RemoveItemsFromPlayerRepository("electronics_use", 1)
			end
		end
	end


	if HasPlayerAmountOfItems("machinery_use", 1) then
		procent = healthmax / 100 * machinery_procent
		hp_pr = healthmax - procent
		if vehP then 
			if hp_pr >= healthcar then
				vehP:AddModifier( "hp", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_LIFE", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_machinery", procent)
				RemoveItemsFromPlayerRepository("machinery_use", 1)
			end
		end
	end

	
	if HasPlayerAmountOfItems("scrap_metal_use", 1) then
		procent = healthmax / 100 * scrap_metal_procent
		hp_pr = healthmax - procent
		if vehP then 
			if hp_pr >= healthcar then
				vehP:AddModifier( "hp", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_ARM", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_scrap_metal", procent)
				RemoveItemsFromPlayerRepository("scrap_metal_use", 1)
			end
		end
	end

	
	if HasPlayerAmountOfItems("oil_use", 1) and HasPlayerAmountOfItems("fuel_full_use", 1) then
		procent = fuelmax / 100 * fuel_procent
		hp_pr = fuelmax - procent
		if vehP then 
			if hp_pr >= fuelcar then
				vehP:AddModifier( "fuel", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_OIL", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_fuel_full", procent)
				RemoveItemsFromPlayerRepository("fuel_full_use", 1)
				AddItemsToPlayerRepository("fuel_nil_use", 1)
			end
		end
	end


	if HasPlayerAmountOfItems("fuel_full_use", 1) then
		procent = fuelmax / 100 * fuel_procent
		hp_pr = fuelmax - procent
		if vehP then 
			if hp_pr >= fuelcar then
				vehP:AddModifier( "fuel", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_OIL", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_fuel_full", procent)
				RemoveItemsFromPlayerRepository("fuel_full_use", 1)
				AddItemsToPlayerRepository("fuel_nil_use", 1)
			end
		end
	end


	if HasPlayerAmountOfItems("oil_use", 1) then
		procent = fuelmax / 100 * oil_procent
		hp_pr = fuelmax - procent
		if vehP then 
			if hp_pr >= fuelcar then
				vehP:AddModifier( "fuel", "+ "..procent ) 
				CreateEffectTTLed( "ET_PS_USE_OIL", PlfCoor, Quaternion(0, 0, 0, 1), 1000)
				AddFadingMsgByStrIdFormatted("fm_use_oil", procent)
				RemoveItemsFromPlayerRepository("oil_use", 1)
			end
		end
	end

	
	if HasPlayerAmountOfItems("item_key_gate_thetown", 1) and not(IsQuestItemPresent("quest_item_key_gate_thetown")) then
		AddQuestItem("quest_item_key_gate_thetown")
		AddFadingMsgByStrIdFormatted("fm_item_to_quest_items", "item_key_gate_thetown")
		RemoveItemsFromPlayerRepository("item_key_gate_thetown", 1)
	end

	if HasPlayerAmountOfItems("item_key_gate_r1m3", 1) and not(IsQuestItemPresent("quest_item_key_gate_r1m3")) then
		AddQuestItem("quest_item_key_gate_r1m3")
		AddFadingMsgByStrIdFormatted("fm_item_to_quest_items", "item_key_gate_r1m3")
		RemoveItemsFromPlayerRepository("item_key_gate_r1m3", 1)
	end
	
end

-- Генерация лута в ящиках 
function CreateBarrelLootBox(name, pos)

	local use = {"scrap_metal_use", "oil_use", "machinery_use", "fuel_nil_use", "fuel_full_use", "electronics_use"}
	local use_items = getn(use)

	local building = {"item_scotch", "item_nails", "item_nuts", "item_insulation", "item_screws", "scrap_metal", "doski", "item_bolts", "item_hose", "details", "item_plex", "item_parts", "item_poheram", "item_tube", "item_kek", "machinery", "item_military_tube", "item_thermometer", "item_pena", "item_datchik"}
	local building_items = getn(building)

	local electronics = {"item_usb", "item_wires", "item_tplug", "item_dvd", "item_lump", "item_rele", "item_cpu", "item_svech", "item_ram", "item_kondesators", "item_magnet", "item_energo_lump", "item_electronics_components", "item_phone", "item_ultra_lump", "item_cooler", "item_gazan", "item_geiger", "item_plate", "item_cable", "item_helix", "item_hdd", "item_drill", "item_lcd", "item_military_cable", "electronics", "item_bp", "item_engine", "item_iridiym", "item_tetris", "item_vpx", "item_virtex", "item_converter", "item_gpu"}
	local electronics_items = getn(electronics)

	local energy = {"item_battery_d", "item_battery_aa", "item_accum", "item_powerbank", "item_green_battery", "item_car_battery", "item_cyclon", "item_tank_battery"}
	local energy_items = getn(energy)

	local flammable = {"item_spich", "item_hunter_spich", "item_lighter", "item_wd40_100", "item_zibbo", "oil", "item_survl", "item_wd40_400", "fuel", "item_trotile", "item_dry", "item_propan", "item_prisadka", "item_termit"}
	local flammable_items = getn(flammable)

	local household = {"item_soap", "item_salt", "item_tb", "item_toothpaste", "item_soda", "item_paper", "item_alkani", "item_hlor", "book"}
	local household_items = getn(household)

	local info = {"item_disk", "item_manual", "item_flashdrive", "item_diary_s", "item_diary", "item_ssd", "item_disk_exmachina", "item_sas", "item_rozvidka"}
	local info_items = getn(info)

	local medical = {"item_medical_tools", "item_naci", "item_h2o2", "item_suringe", "item_c6h8o6", "item_aquapeps", "item_oftalmaskop", "item_ledx"}
	local medical_items = getn(medical)

	local other = {"item_zapal", "tobacco", "bottle", "item_vodka", "item_monolit", "item_filter", "item_emre_kara", "item_waterfilter", "item_fitanyashka", "item_paracord", "item_vitalik", "item_airfilter", "item_ananaga"}
	local other_items = getn(other)

	local tools = {"item_roulet", "item_wrench", "item_screw", "item_pliers", "item_screw_flat", "item_nippers", "item_metalscissors", "item_pliers_round", "item_leatherman", "item_screw_flat_long", "item_toolset", "item_awl", "item_fullmaster", "item_sewing_kit", "item_handrill", "item_buldex", "item_ratchet_wrench", "item_pipe_wrench"}
	local tools_items = getn(tools)

	local valuables = {"item_chain", "shkatulka", "item_ex", "item_teapon", "item_cat", "item_rolex", "item_chain_gold", "item_woodclock", "item_chiken", "item_skullring", "item_lion", "item_bitcoin"}
	local valuables_items = getn(valuables)

	local gun = {"hornet01","specter01","pkt01","kord01","storm01","fagot01","maxim01","vector01","vulcan01","kpvt01","rapier01","flag01","rainmetal01","elephant01","odin01","omega01","bumblebee01","hammer01","hunterSideGun","mrakSideGun","big_swingfire01","cyclops01","octopus01","hailSideGun","hurricane01","rocketLauncher","zeusSideGun","marsSideGun"}
	local gun_items = getn(gun)

	local exlusive = {}
	local loc
	local mapName = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	if mapName == "r1m1" then loc = "r1m1" end

	if loc == "r1m1" then
		exlusive = {"potato", "firewood", "item_pants40grn", "item_salo"}
	end

	local exlusive_items = getn(exlusive)

	CreateNewDummyObject("plastic_barrel", name, -1, -1, pos, Quaternion(0, 0, 0, 0),1)

	local Barrel = GetEntityByName(name)
	local BarrelPos = Barrel:GetPosition()
	BarrelPos.y = BarrelPos.y - 1.850
	Barrel:SetPosition(BarrelPos)

	local Chest = CreateNewObject{prototypeName = "opacityChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)

	local count = random(5)

	for l=1,count do

		local items = {}

		if loc == nil then
			items = {use[random(use_items)], building[exrandom(building_items)], electronics[exrandom(electronics_items)], energy[exrandom(energy_items)], flammable[exrandom(flammable_items)], household[exrandom(household_items)], info[exrandom(info_items)], medical[exrandom(medical_items)], other[exrandom(other_items)], tools[exrandom(tools_items)], valuables[exrandom(valuables_items)], gun[exrandom(gun_items)]}
		else
			items = {use[random(use_items)], building[exrandom(building_items)], electronics[exrandom(electronics_items)], energy[exrandom(energy_items)], flammable[exrandom(flammable_items)], household[exrandom(household_items)], info[exrandom(info_items)], medical[exrandom(medical_items)], other[exrandom(other_items)], tools[exrandom(tools_items)], valuables[exrandom(valuables_items)], gun[exrandom(gun_items)], exlusive[exrandom(exlusive_items)]}
		end

		local items_random = getn(items)
		
		local Item = CreateNewObject{prototypeName = items[random(items_random)], objName = "Item"..random(10000), belong = 1100}
		local ItemId = GetEntityByID(Item)

		if ChestId and ItemId then
			ChestId:AddChild(ItemId)
		end
	end

end

function CreateLootBoxForDeadScav(name, pos)

	local items = {"scrap_metal_use", "oil_use", "machinery_use", "fuel_nil_use", "fuel_full_use", "electronics_use",
					"item_scotch", "item_nails", "item_nuts", "item_insulation", "item_screws", "scrap_metal", "doski", "item_bolts", "item_hose", "details", "item_plex", "item_parts", "item_poheram", "item_tube", "item_kek", "machinery",
					"item_usb", "item_wires", "item_tplug", "item_dvd", "item_lump", "item_rele", "item_cpu", "item_svech", "item_ram", "item_kondesators", "item_magnet", "item_energo_lump", "item_electronics_components", "item_phone", "item_ultra_lump", "item_cooler", "item_gazan", "item_geiger", "item_plate", "item_cable", "item_helix", "electronics",
					"item_battery_d", "item_battery_aa", "item_accum", "item_powerbank", "item_green_battery",
					"item_spich", "item_hunter_spich", "item_lighter", "item_wd40_100", "item_zibbo", "oil", "item_survl", "item_wd40_400", "fuel",
					"item_soap", "item_salt", "item_tb", "item_toothpaste", "item_soda", "item_paper", "item_alkani", "item_hlor", "book",
					"item_disk", "item_flashdrive", "item_diary_s", "item_diary", "item_ssd", "item_disk_exmachina",
					"item_medical_tools", "item_naci", "item_h2o2", "item_suringe", "item_c6h8o6", "item_aquapeps",
					"item_zapal", "tobacco", "bottle", "item_vodka", "item_monolit", "item_filter", "item_paracord", "item_ananaga",
					"item_roulet", "item_wrench", "item_screw", "item_pliers", "item_screw_flat", "item_nippers", "item_metalscissors", "item_pliers_round", "item_leatherman", "item_screw_flat_long", "item_awl", "item_sewing_kit",
					"item_chain", "shkatulka", "item_ex", "item_chain_gold",
					"item_key_gate_thetown", "item_key_gate_r1m3"}	
	local items_rand = getn(items)

	local Chest = CreateNewObject{prototypeName = "someChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)

	local count = random(3)

	for l=1,count do

		local Item = CreateNewObject{prototypeName = items[random(items_rand)], objName = "ScavItem"..random(10000), belong = 1100}
		local ItemId = GetEntityByID(Item)

		if ChestId and ItemId then
			ChestId:AddChild(ItemId)
		end
	end

end

function CreateGunBox(name, pos)

	local gun = {"hornet01","specter01","pkt01","kord01","storm01","fagot01","maxim01","vector01","vulcan01","kpvt01","rapier01","flag01","rainmetal01","elephant01","odin01","omega01","bumblebee01","hammer01","hunterSideGun","mrakSideGun","big_swingfire01","cyclops01","octopus01","hailSideGun","hurricane01","rocketLauncher","zeusSideGun","marsSideGun"}
	local gun_rand = getn(gun)

	local gadgets = {"additional_fuel_tank", "additional_torque", "additional_durability", "additional_stability", "add_damage_guns", "add_damage_energy", "add_damage_guns", "add_damage_energy", "add_damage_explosion", "someTurboAccelerationPusher", "firing_range_guns", "firing_rate_guns", "firing_rate_energy", "firing_rate_guns", "grouping_angle_guns", "firing_rate_energy", "grouping_angle_guns", "cooling_system_guns", "cooling_system_guns", "cooling_system_energy", "cooling_system_energy", "cooling_system_explosion"}
	local gadgets_rand = getn(gadgets)

	local Chest = CreateNewObject{prototypeName = "someChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(3)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	local OpacityItem = CreateNewObject{prototypeName = "item_opacity", objName = "OpacityItem"..random(10000), belong = 1100}
	local OpacityItemId = GetEntityByID(OpacityItem)

	if ChestId and OpacityItemId then
		ChestId:AddChild(OpacityItemId)
	end

	local notloot = random(100)
	local count = random(2)
	local affics = random(0,2)
	local gun_r = random(2)

	if notloot > 10 then
		
		if gun_r == 2 then
			local Gun = CreateNewObject{prototypeName = gun[exrandom(gun_rand)], objName = "GunItem"..random(10000), belong = 1100}
			local GunId = GetEntityByID(Gun)

			local afflist = {}
			afflist = CreateRandomAffixesForGun(affics)

			if afflist ~= nil then
				for i=1,getn(afflist) do
					GunId:ApplyAffixByName(afflist[i])
				end
			end

			if ChestId and GunId then
				ChestId:AddChild(GunId)
			end
		end

		for l=1,count do
			local Gadgets = CreateNewObject{prototypeName = gadgets[exrandom(gadgets_rand)], objName = "GadgetItem"..random(10000), belong = 1100}
			local GadgetsId = GetEntityByID(Gadgets)
			if ChestId and GadgetsId then
				ChestId:AddChild(GadgetsId)
			end
		end

	end

end

function CreateMedBox(name, pos)

	local medical = {"item_medical_tools", "item_naci", "item_h2o2", "item_suringe", "item_c6h8o6", "item_aquapeps", "item_oftalmaskop", "item_ledx"}
	local medical_items = getn(medical)

	local Chest = CreateNewObject{prototypeName = "someChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(4)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	local OpacityItem = CreateNewObject{prototypeName = "item_opacity", objName = "OpacityItem"..random(10000), belong = 1100}
	local OpacityItemId = GetEntityByID(OpacityItem)

	if ChestId and OpacityItemId then
		ChestId:AddChild(OpacityItemId)
	end

	local notloot = random(100)
	local count = random(2)

	if notloot > 10 then
		
		for l=1,count do
			local Item = CreateNewObject{prototypeName = medical[exrandom(medical_items)], objName = "Item"..random(10000), belong = 1100}
			local ItemId = GetEntityByID(Item)
			if ChestId and ItemId then
				ChestId:AddChild(ItemId)
			end
		end

	end

end

function CreateTehnoBox(name, pos)

	local use = {"scrap_metal_use", "oil_use", "machinery_use", "fuel_nil_use", "fuel_full_use", "electronics_use"}
	local use_items = getn(use)

	local building = {"item_scotch", "item_nails", "item_nuts", "item_insulation", "item_screws", "scrap_metal", "doski", "item_bolts", "item_hose", "details", "item_plex", "item_parts", "item_poheram", "item_tube", "item_kek", "machinery", "item_military_tube", "item_thermometer", "item_pena", "item_datchik"}
	local building_items = getn(building)

	local energy = {"item_battery_d", "item_battery_aa", "item_accum", "item_powerbank", "item_green_battery", "item_car_battery", "item_cyclon", "item_tank_battery"}
	local energy_items = getn(energy)

	local flammable = {"item_spich", "item_hunter_spich", "item_lighter", "item_wd40_100", "item_zibbo", "oil", "item_survl", "item_wd40_400", "fuel", "item_trotile", "item_dry", "item_propan", "item_prisadka", "item_termit"}
	local flammable_items = getn(flammable)

	local household = {"item_soap", "item_salt", "item_tb", "item_toothpaste", "item_soda", "item_paper", "item_alkani", "item_hlor", "book"}
	local household_items = getn(household)

	local other = {"bottle", "item_filter", "item_waterfilter", "item_paracord", "item_airfilter"}
	local other_items = getn(other)

	local tools = {"item_roulet", "item_wrench", "item_screw", "item_pliers", "item_screw_flat", "item_nippers", "item_metalscissors", "item_pliers_round", "item_leatherman", "item_screw_flat_long", "item_toolset", "item_awl", "item_fullmaster", "item_sewing_kit", "item_handrill", "item_buldex", "item_ratchet_wrench", "item_pipe_wrench"}
	local tools_items = getn(tools)

	local Chest = CreateNewObject{prototypeName = "someChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(5)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	local OpacityItem = CreateNewObject{prototypeName = "item_opacity", objName = "OpacityItem"..random(10000), belong = 1100}
	local OpacityItemId = GetEntityByID(OpacityItem)

	if ChestId and OpacityItemId then
		ChestId:AddChild(OpacityItemId)
	end

	local notloot = random(100)
	local count = random(4)
	local useItem = random(2)

	if notloot > 10 then

		if useItem == 2 then
			local UseItem = CreateNewObject{prototypeName = use[exrandom(use_items)], objName = "UseItem"..random(10000), belong = 1100}
			local UseItemId = GetEntityByID(UseItem)
			if ChestId and UseItemId then
				ChestId:AddChild(UseItemId)
			end
		end
		
		for l=1,count do
			local items = {building[random(building_items)], energy[exrandom(energy_items)], flammable[random(flammable_items)], household[random(household_items)], other[exrandom(other_items)], tools[random(tools_items)]}
			local items_random = getn(items)

			local Item = CreateNewObject{prototypeName = items[random(items_random)], objName = "Item"..random(10000), belong = 1100}
			local ItemId = GetEntityByID(Item)
			if ChestId and ItemId then
				ChestId:AddChild(ItemId)
			end
		end

	end

end

function CreateToolsBox(name, pos)

	local building = {"item_scotch", "item_nails", "item_nuts", "item_insulation", "item_screws", "scrap_metal", "doski", "item_bolts", "item_hose", "details", "item_plex", "item_parts", "item_poheram", "item_tube", "item_kek", "machinery", "item_military_tube", "item_thermometer", "item_pena", "item_datchik"}
	local building_items = getn(building)

	local energy = {"item_battery_d", "item_battery_aa", "item_accum", "item_powerbank", "item_green_battery", "item_cyclon"}
	local energy_items = getn(energy)

	local flammable = {"item_spich", "item_hunter_spich", "item_lighter", "item_wd40_100", "item_zibbo", "oil", "item_survl", "item_wd40_400", "fuel", "item_trotile", "item_dry", "item_termit"}
	local flammable_items = getn(flammable)

	local other = {"bottle", "item_filter", "item_waterfilter", "item_paracord"}
	local other_items = getn(other)

	local tools = {"item_roulet", "item_wrench", "item_screw", "item_pliers", "item_screw_flat", "item_nippers", "item_metalscissors", "item_pliers_round", "item_leatherman", "item_screw_flat_long", "item_toolset", "item_awl", "item_fullmaster", "item_sewing_kit", "item_handrill", "item_buldex", "item_ratchet_wrench", "item_pipe_wrench"}
	local tools_items = getn(tools)

	local Chest = CreateNewObject{prototypeName = "someChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(6)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	local OpacityItem = CreateNewObject{prototypeName = "item_opacity", objName = "OpacityItem"..random(10000), belong = 1100}
	local OpacityItemId = GetEntityByID(OpacityItem)

	if ChestId and OpacityItemId then
		ChestId:AddChild(OpacityItemId)
	end

	local notloot = random(100)
	local count = random(3)

	if notloot > 10 then
		
		for l=1,count do
			local items = {building[random(building_items)], energy[exrandom(energy_items)], flammable[random(flammable_items)], other[exrandom(other_items)], tools[random(tools_items)]}
			local items_random = getn(items)

			local Item = CreateNewObject{prototypeName = items[random(items_random)], objName = "Item"..random(10000), belong = 1100}
			local ItemId = GetEntityByID(Item)
			if ChestId and ItemId then
				ChestId:AddChild(ItemId)
			end
		end

	end

end

function CreateValuableBox(name, pos)

	local item = {"item_disk", "item_manual", "item_flashdrive", "item_diary_s", "item_diary", "item_ssd", "item_disk_exmachina", "item_sas", "item_rozvidka",
					"item_chain", "shkatulka", "item_ex", "item_teapon", "item_cat", "item_rolex", "item_chain_gold", "item_woodclock", "item_chiken", "item_skullring", "item_lion", "item_bitcoin",
					"item_key_gate_thetown", "item_key_gate_r1m3"}
	local item_rand = getn(item)

	local Chest = CreateNewObject{prototypeName = "someChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(7)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	local OpacityItem = CreateNewObject{prototypeName = "item_opacity", objName = "OpacityItem"..random(10000), belong = 1100}
	local OpacityItemId = GetEntityByID(OpacityItem)

	if ChestId and OpacityItemId then
		ChestId:AddChild(OpacityItemId)
	end

	local Item = CreateNewObject{prototypeName = item[random(item_rand)], objName = "Item"..random(10000), belong = 1100}
	local ItemId = GetEntityByID(Item)

	if ChestId and ItemId then
		ChestId:AddChild(ItemId)
	end

end

function CreateElectronicsBox(name, pos)

	local electronics = {"item_usb", "item_wires", "item_tplug", "item_dvd", "item_lump", "item_rele", "item_cpu", "item_svech", "item_ram", "item_kondesators", "item_magnet", "item_energo_lump", "item_electronics_components", "item_phone", "item_ultra_lump", "item_cooler", "item_gazan", "item_geiger", "item_plate", "item_cable", "item_helix", "item_hdd", "item_drill", "item_lcd", "item_military_cable", "electronics", "item_bp", "item_engine", "item_iridiym", "item_tetris", "item_gpu"}
	local electronics_items = getn(electronics)

	local Chest = CreateNewObject{prototypeName = "someChest", objName = name.."Chest"}	
	local ChestId = GetEntityByID(Chest)
	ChestId:SetPosition(pos)
	ChestId:SetSkin(1)

	local ChestPos = ChestId:GetPosition()
	ChestPos.y = ChestPos.y + 1
	ChestId:SetPosition(ChestPos)

	local OpacityItem = CreateNewObject{prototypeName = "item_opacity", objName = "OpacityItem"..random(10000), belong = 1100}
	local OpacityItemId = GetEntityByID(OpacityItem)

	if ChestId and OpacityItemId then
		ChestId:AddChild(OpacityItemId)
	end

	local notloot = random(100)
	local count = random(3)

	if notloot > 10 then
		
		for l=1,count do
			local Item = CreateNewObject{prototypeName = electronics[exrandom(electronics_items)], objName = "Item"..random(10000), belong = 1100}
			local ItemId = GetEntityByID(Item)
			if ChestId and ItemId then
				ChestId:AddChild(ItemId)
			end
		end

	end

end

function shuffle (arr)
	for i = 1, getn(arr) - 1 do
		local j = math.random(i, getn(arr))
		arr[i], arr[j] = arr[j], arr[i]
	end
end

function shuffled_range_take (n, a, b)
	local numbers = {}
	for i = a, b do
		numbers[i] = i
	end

	shuffle(numbers)

	local cropped_numbers = {}

	for i = 1, n do
		cropped_numbers[i] = numbers[i]
	end 

	return cropped_numbers
end






