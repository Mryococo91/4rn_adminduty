---------------------------------------------
-- [ESX]AdminDuty | CLIENT (c)4rn_OLD 2020 --
---------------------------------------------
--
--	Created by Arnold Halics
--
--	This work is licensed under MIT.
--
--	If problem this script, please write e-mail: nemerdekel@sohivatal.hu
--

local duty = false
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
	while true do
        if duty and Config.superjmp then 
            SetSuperJumpThisFrame(PlayerId(-1))
			SetRunSprintMultiplierForPlayer(PlayerId(-1), 2.5) 
			SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
        end
 
        Citizen.Wait(0)
    end
end)


function cleanPlayer(playerPed)
    local playerPed = PlayerPedId()
	
	SetPedArmour(playerPed, 0)
    ClearPedBloodDamage(playerPed)
    ResetPedVisibleDamage(playerPed)
    ClearPedLastWeaponDamage(playerPed)
    ResetPedMovementClipset(playerPed, 0)
end

function setUniform(playerPed)
    local playerPed = PlayerPedId()
    
    TriggerEvent('skinchanger:getSkin', function(skin)
    ESX.TriggerServerCallback("Admin:getRankFromPlayer", function(group)
        if skin.sex == 0 then
            if group == "superadmin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.superadmin.male)
                elseif group == "admin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.admin.male)
                elseif group == "mod" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mod.male)
                end
            else
                if group == "superadmin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.superadmin.female)
                elseif group == "admin" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.admin.female)
                elseif group == "mod" then
                    TriggerEvent("skinchanger:loadClothes", skin, Config.Admin.mod.female)
                end
            end
        end)
    end)
end


RegisterNetEvent("adminSzoli")
AddEventHandler("adminSzoli", function()
	local playerPed = PlayerPedId()
	if duty then
		duty = false
		TriggerEvent("chatMessage", _U('admin_off') )
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		TriggerEvent('skinchanger:loadSkin', skin)
		SetEntityInvincible(playerPed, false)
		SetPedCanRagdoll(GetPlayerPed(-1), true)
		ESX.DrawMissionText("~r~".._U('admin_off'), 4000)
		end)
	else
		duty = true
		TriggerEvent("chatMessage", _U('admin_on'))
		ESX.DrawMissionText("~g~".._U('admin_on'), 4000)
		SetEntityInvincible(playerPed, true)
		
		if Config.canrd then 
			SetPedCanRagdoll(GetPlayerPed(-1), false) 
		end
		cleanPlayer()
		setUniform()
	end
end)


















