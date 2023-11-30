-- Special for Escape from Apocalypce

if EFA_VERSION == nil then
	LOG("ESCAPE FROM APOCALYPCE V0.1 PRE ALPHA")

	EFA_VERSION = "V0.1 PRE ALPHA"
end

if R4M1_exit == nil then
	R4M1_exit = 0
end

if R0M1_exit == nil then
	R0M1_exit = 0
end

-- Счетчик количества рейдов 
if COUNT_RAIDS == nil then
	COUNT_RAIDS = 0
end

-- Таймер ящика диких
if CHESTSCAVS_TIMER_GLOBAL == nil then
	CHESTSCAVS_TIMER_GLOBAL = 0
end

-- Таймер генератора
if GENERATOR_TIMER_GLOBAL == nil then
	GENERATOR_TIMER_GLOBAL = 0
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

function GunsForEnemy(enemy, smallguns, bigguns, giantgun, sidegun)
	local veh=enemy
	local parts={"CABIN_","BASKET_","CHASSIS_"}
	local slots={"SMALL_","BIG_","GIANT_","SIDE_"}
	local guns={"GUN","GUN_0","GUN_1","GUN_2"}
	local i,j,k=1,1,1
	while parts[i] do
		while slots[j] do
			while guns[k] do
				local gun=1
				local slot=parts[i]..slots[j]..guns[k]
				if j==1 then
					gun=smallguns
				elseif j==2 then
					gun=bigguns
				elseif j==3 then
					gun=giantgun
				elseif j==4 then
					gun=sidegun
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
function ItemUse(ammo_used)
	HealItems()
	AddKeysQuestItem()
	UseAmmoItems(ammo_used)
end

function HealItems()
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
end

function AddKeysQuestItem()
	if HasPlayerAmountOfItems("item_key_gate_thetown", 1) and not(IsQuestItemPresent("quest_item_key_gate_thetown")) then
		AddQuestItem("quest_item_key_gate_thetown")
		AddFadingMsgByStrIdFormatted("fm_item_to_quest_items", "item_key_gate_thetown")
		RemoveItemsFromPlayerRepository("item_key_gate_thetown", 1)
		SetVar("item_key_gate_thetown_used", 10)
		SoundFadingMsg()
	end

	if HasPlayerAmountOfItems("item_key_gate_r1m3", 1) and not(IsQuestItemPresent("quest_item_key_gate_r1m3")) then
		AddQuestItem("quest_item_key_gate_r1m3")
		AddFadingMsgByStrIdFormatted("fm_item_to_quest_items", "item_key_gate_r1m3")
		RemoveItemsFromPlayerRepository("item_key_gate_r1m3", 1)
		SetVar("quest_item_key_gate_r1m3_used", 15)
		SoundFadingMsg()
	end
end

function UseAmmoItems(ammo_used)
	if ammo_used == nil then ammo_used = 0 end

	local small_slot = {"CABIN_SMALL_GUN", "CABIN_SMALL_GUN_1", "BASKET_SMALL_GUN_0"}
	for sml=1,3 do
		local small_gun = GetPlayerVehicle():GetPartByName(small_slot[sml])
		if small_gun then 
			local prot = small_gun:GetProperty("Prototype").AsString
			local poolshells = small_gun:GetShellsInPool()
			local currentshells = small_gun:GetShellsInCurrentCharge()
			if poolshells == 0 and currentshells == 0 then
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then
					if prot == "hornet01" or prot == "american_hornet01" or prot == "specter01" or prot == "pkt01" or prot == "kord01"  then
						if prot == "hornet01" then small_gun:SetShellsInPool(280) end
						if prot == "american_hornet01" then small_gun:SetShellsInPool(350) end
						if prot == "specter01" then small_gun:SetShellsInPool(280) end
						if prot == "pkt01" then small_gun:SetShellsInPool(400) end
						if prot == "kord01" then small_gun:SetShellsInPool(220) end
						RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) then
					if prot == "storm01" then
						if prot == "storm01" then small_gun:SetShellsInPool(25) end
						RemoveItemsFromPlayerRepository("ammo_chest_shotgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_SHOTGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1200)
						if ammo_used == 1 then SetVar("Use_AmmoChestShotGun", GetVar("Use_AmmoChestShotGun").AsInt+1) end
					end
				end
			end
		end
	end

	local big_slot = {"CABIN_BIG_GUN_1", "CABIN_BIG_GUN_2", "BASKET_BIG_GUN_0", "BASKET_BIG_GUN_1"}
	for big=1,4 do
		local big_gun = GetPlayerVehicle():GetPartByName(big_slot[big])
		if big_gun then 
			local prot = big_gun:GetProperty("Prototype").AsString
			local poolshells = big_gun:GetShellsInPool()
			local currentshells = big_gun:GetShellsInCurrentCharge()
			if poolshells == 0 and currentshells == 0 then
				if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) then
					if prot == "rapier01" or prot == "rainmetal01" then
						if prot == "rapier01" then big_gun:SetShellsInPool(44) end
						if prot == "rainmetal01" then big_gun:SetShellsInPool(240) end
						RemoveItemsFromPlayerRepository("ammo_chest_heavygun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_HEAVYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 2500)
						if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun", GetVar("Use_AmmoChestHeavyGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then
					if prot == "vector01" or prot == "vulcan01" or prot == "kpvt01" then
						if prot == "vector01" then big_gun:SetShellsInPool(270) end
						if prot == "vulcan01" then big_gun:SetShellsInPool(840) end
						if prot == "kpvt01" then big_gun:SetShellsInPool(650) end
						RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_shotgun", 1) then
					if prot == "flag01" then
						if prot == "flag01" then big_gun:SetShellsInPool(21) end
						RemoveItemsFromPlayerRepository("ammo_chest_shotgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_SHOTGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1200)
						if ammo_used == 1 then SetVar("Use_AmmoChestShotGun", GetVar("Use_AmmoChestShotGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) then
					if prot == "bumblebee01" or prot == "omega01" then
						if prot == "bumblebee01" then big_gun:SetShellsInPool(42) end
						if prot == "omega01" then big_gun:SetShellsInPool(36) end
						RemoveItemsFromPlayerRepository("ammo_chest_artillerygun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_ARTILLERYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1055)
						if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun", GetVar("Use_AmmoChestArtilleryGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then
					if prot == "hurricane01" then
						if prot == "hurricane01" then big_gun:SetShellsInPool(18) end
						RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
						if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
					end
				end
			end
		end
	end

	local giant_slot = {"CABIN_GIANT_GUN", "BASKET_GIANT_GUN", "BASKET_GIANT_GUN_0"}
	for gnt=1,3 do
		local giant_gun = GetPlayerVehicle():GetPartByName(giant_slot[gnt])
		if giant_gun then 
			local prot = giant_gun:GetProperty("Prototype").AsString
			local poolshells = giant_gun:GetShellsInPool()
			local currentshells = giant_gun:GetShellsInCurrentCharge()
			if poolshells == 0 and currentshells == 0 then
				if HasPlayerAmountOfItems("ammo_chest_heavygun", 1) then
					if prot == "cyclops01" then
						if prot == "cyclops01" then giant_gun:SetShellsInPool(28) end
						RemoveItemsFromPlayerRepository("ammo_chest_heavygun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_HEAVYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 2500)
						if ammo_used == 1 then SetVar("Use_AmmoChestHeavyGun", GetVar("Use_AmmoChestHeavyGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_machinegun", 1) then
					if prot == "octopus01" then
						if prot == "octopus01" then giant_gun:SetShellsInPool(360) end
						RemoveItemsFromPlayerRepository("ammo_chest_machinegun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_MACHINEGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1750)
						if ammo_used == 1 then SetVar("Use_AmmoChestMachineGun", GetVar("Use_AmmoChestMachineGun").AsInt+1) end
					end
				end
				if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then
					if prot == "rocketLauncher" or prot == "big_swingfire01" then
						if prot == "rocketLauncher" then giant_gun:SetShellsInPool(16) end
						if prot == "big_swingfire01" then giant_gun:SetShellsInPool(18) end
						RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
						AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
						CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
						if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
					end
				end
			end
		end
	end

	local basket_side_0 = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_0")
	local basket_side_l = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_L")
	local basket_side_r = GetPlayerVehicle():GetPartByName("BASKET_SIDE_GUN_R")
	if basket_side_0 then 
		local prot = basket_side_0:GetProperty("Prototype").AsString
		local poolshells_l = basket_side_l:GetShellsInPool()
		local currentshells_l = basket_side_l:GetShellsInCurrentCharge()
		local poolshells_r = basket_side_r:GetShellsInPool()
		local currentshells_r = basket_side_r:GetShellsInCurrentCharge()
		if poolshells_l == 0 and currentshells_l == 0 or poolshells_r == 0 and currentshells_r == 0 then
			if HasPlayerAmountOfItems("ammo_chest_rocketgun", 1) then
				if prot == "hailSideGun" or prot == "hunterSideGun" or prot == "mrakSideGun" then
					if prot == "hailSideGun" then basket_side_l:SetShellsInPool(12) basket_side_r:SetShellsInPool(12) end
					if prot == "hunterSideGun" then basket_side_l:SetShellsInPool(4) basket_side_r:SetShellsInPool(4) end
					if prot == "mrakSideGun" then basket_side_l:SetShellsInPool(12) basket_side_r:SetShellsInPool(12) end
					RemoveItemsFromPlayerRepository("ammo_chest_rocketgun", 1)
					AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
					CreateEffectTTLed("ET_S_USE_RELOAD_ROCKETGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 732)
					if ammo_used == 1 then SetVar("Use_AmmoChestRocketGun", GetVar("Use_AmmoChestRocketGun").AsInt+1) end
				end
			end
			if HasPlayerAmountOfItems("ammo_chest_artillerygun", 1) then
				if prot == "marsSideGun" then
					if prot == "marsSideGun" then basket_side_l:SetShellsInPool(3) basket_side_r:SetShellsInPool(3) end
					RemoveItemsFromPlayerRepository("ammo_chest_artillerygun", 1)
					AddFadingMsgByStrIdFormatted("fm_use_ammo_chest", prot)
					CreateEffectTTLed("ET_S_USE_RELOAD_ARTILLERYGUN", GetPlayerVehicle():GetPosition(), Quaternion(0, 0, 0, 1), 1055)
					if ammo_used == 1 then SetVar("Use_AmmoChestArtilleryGun", GetVar("Use_AmmoChestArtilleryGun").AsInt+1) end
				end
			end
		end
	end
end

-- Дать патроны для конкретного оружия
function AddAmmoItemsForGuns(veh, count)
	local vehicle = veh

	local small_gun
	local big_gun
	local giant_gun
	local side_gun

	if count == nil then count = 1 end

	if vehicle then
		local small_slot = {"CABIN_SMALL_GUN", "CABIN_SMALL_GUN_1", "BASKET_SMALL_GUN_0"}
		for sml=1,3 do
			if vehicle:GetPartByName(small_slot[sml]) then
				small_gun = vehicle:GetPartByName(small_slot[sml]):GetProperty("Prototype").AsString
				if small_gun == "hornet01" or small_gun == "american_hornet01" or small_gun == "specter01" or small_gun == "pkt01" or small_gun == "kord01" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if small_gun == "storm01" then
					vehicle:AddItemsToRepository("ammo_chest_shotgun", count)
				end
			end
		end

		local big_slot = {"CABIN_BIG_GUN_1", "CABIN_BIG_GUN_2", "BASKET_BIG_GUN_0", "BASKET_BIG_GUN_1"}
		for big=1,4 do
			if vehicle:GetPartByName(big_slot[big]) then
				big_gun = vehicle:GetPartByName(big_slot[big]):GetProperty("Prototype").AsString
				if big_gun == "rapier01" or big_gun == "rainmetal01" then
					vehicle:AddItemsToRepository("ammo_chest_heavygun", count)
				end
				if big_gun == "vector01" or big_gun == "vulcan01" or big_gun == "kpvt01" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if big_gun == "flag01" then
					vehicle:AddItemsToRepository("ammo_chest_shotgun", count)
				end
				if big_gun == "bumblebee01" or big_gun == "omega01" then
					vehicle:AddItemsToRepository("ammo_chest_artillerygun", count)
				end
				if big_gun == "hurricane01" then
					vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
				end
			end
		end

		local giant_slot = {"CABIN_GIANT_GUN", "BASKET_GIANT_GUN", "BASKET_GIANT_GUN_0"}
		for gnt=1,3 do
			if vehicle:GetPartByName(giant_slot[gnt]) then
				giant_gun = vehicle:GetPartByName(giant_slot[gnt]):GetProperty("Prototype").AsString
				if giant_gun == "cyclops01" then
					vehicle:AddItemsToRepository("ammo_chest_heavygun", count)
				end
				if giant_gun == "octopus01" then
					vehicle:AddItemsToRepository("ammo_chest_machinegun", count)
				end
				if giant_gun == "rocketLauncher" or giant_gun == "big_swingfire01" then
					vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
				end
			end
		end

		if vehicle:GetPartByName("BASKET_SIDE_GUN_0") then
			side_gun = vehicle:GetPartByName("BASKET_SIDE_GUN_0"):GetProperty("Prototype").AsString
			if side_gun == "hailSideGun" or side_gun == "hunterSideGun" or side_gun == "mrakSideGun" then
				vehicle:AddItemsToRepository("ammo_chest_rocketgun", count)
			end
			if side_gun == "marsSideGun" then
				vehicle:AddItemsToRepository("ammo_chest_arillerygun", count)
			end
		end
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

	local other = {"item_zapal", "tobacco", "bottle", "item_vodka", "item_monolit", "item_kaktus", "item_filter", "item_emre_kara", "item_keqing", "item_waterfilter", "item_fitanyashka", "item_paracord", "item_vitalik", "item_airfilter", "item_ananaga"}
	local other_items = getn(other)

	local tools = {"item_roulet", "item_wrench", "item_screw", "item_pliers", "item_screw_flat", "item_nippers", "item_metalscissors", "item_pliers_round", "item_leatherman", "item_screw_flat_long", "item_toolset", "item_awl", "item_fullmaster", "item_sewing_kit", "item_handrill", "item_buldex", "item_ratchet_wrench", "item_pipe_wrench"}
	local tools_items = getn(tools)

	local valuables = {"item_chain", "shkatulka", "item_ex", "item_teapon", "item_cat", "item_rolex", "item_chain_gold", "item_woodclock", "item_chiken", "item_skullring", "item_lion", "item_bitcoin"}
	local valuables_items = getn(valuables)

	local gun = {"hornet01","specter01","pkt01","kord01","storm01","fagot01","maxim01","vector01","vulcan01","kpvt01","rapier01","flag01","rainmetal01","elephant01","odin01","omega01","bumblebee01","hammer01","hunterSideGun","mrakSideGun","big_swingfire01","cyclops01","octopus01","hailSideGun","hurricane01","rocketLauncher","zeusSideGun","marsSideGun"}
	local gun_items = getn(gun)

	local ammo = {"ammo_chest_shotgun", "ammo_chest_machinegun", "ammo_chest_heavygun", "ammo_chest_rocketgun", "ammo_chest_artillerygun"}
	local ammo_items = getn(ammo)

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
			items = {use[random(use_items)], building[exrandom(building_items)], electronics[exrandom(electronics_items)], energy[exrandom(energy_items)], flammable[exrandom(flammable_items)], household[exrandom(household_items)], info[exrandom(info_items)], medical[exrandom(medical_items)], other[exrandom(other_items)], tools[exrandom(tools_items)], valuables[exrandom(valuables_items)], gun[exrandom(gun_items)], ammo[random(ammo_items)]}
		else
			items = {use[random(use_items)], building[exrandom(building_items)], electronics[exrandom(electronics_items)], energy[exrandom(energy_items)], flammable[exrandom(flammable_items)], household[exrandom(household_items)], info[exrandom(info_items)], medical[exrandom(medical_items)], other[exrandom(other_items)], tools[exrandom(tools_items)], valuables[exrandom(valuables_items)], gun[exrandom(gun_items)], ammo[random(ammo_items)],  exlusive[exrandom(exlusive_items)]}
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
	local ammo_r = random(2)
	local ammo_item = 0

	if notloot > 10 then
		
		if gun_r == 2 then
			local gun_item = gun[exrandom(gun_rand)]

			local Gun = CreateNewObject{prototypeName = gun_item, objName = "GunItem"..random(10000), belong = 1100}
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
			
			if ammo_r == 1 then
				if gun_item == "hornet01" or gun_item == "specter01" or gun_item == "pkt01" or gun_item == "kord01" or gun_item == "vector01" or gun_item == "vulcan01" or gun_item == "kpvt01" or gun_item == "vulcan01" or gun_item == "octopus01" then
					ammo_item = "ammo_chest_machinegun"
				elseif gun_item == "storm01" or gun_item == "flag01" then
					ammo_item = "ammo_chest_shotgun"
				elseif gun_item == "rapier01" or gun_item == "rainmetal01" or gun_item == "cyclops01" then
					ammo_item = "ammo_chest_heavygun"
				elseif gun_item == "omega01" or gun_item == "bumblebee01" or gun_item == "marsSideGun" then
					ammo_item = "ammo_chest_artillerygun"
				elseif gun_item == "hurricane01" or gun_item == "rocketLauncher" or gun_item == "big_swingfire01" or gun_item == "mrakSideGun" or gun_item == "hailSideGun" or gun_item == "hunterSideGun" then
					ammo_item = "ammo_chest_rocketgun"
				end
				if not(ammo_item == 0) then
					local Ammo = CreateNewObject{prototypeName = ammo_item, objName = "AmmoItem"..random(10000), belong = 1100}
					local AmmoId = GetEntityByID(Ammo)
					if ChestId and AmmoId then
						ChestId:AddChild(AmmoId)
					end
				end
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






