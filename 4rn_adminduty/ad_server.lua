---------------------------------------------
-- [ESX]AdminDuty | SERVER (c)4rn_OLD 2020 --
---------------------------------------------
--
--	Created by Arnold Halics
--
--	This work is licensed under MIT.
--
--	If problem this script, please write e-mail: nemerdekel@sohivatal.hu
--


local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj  end)

ESX.RegisterServerCallback("Admin:getRankFromPlayer", function(source, cb)
    local player = ESX.GetPlayerFromId(source)

    if player ~= nil then
        local playerGroup = player.getGroup()

        if playerGroup ~= nil then 
            cb(playerGroup)
        else
            cb("user")
        end
    else
        cb("user")
    end
end)

TriggerEvent("es:addGroupCommand", "adminduty", "mod", function(source, args)
	TriggerClientEvent("adminSzoli", source)
	end, 
	function(source, args)
	TriggerClientEvent("chatMessage", source, _U('noadmin'))
	end,
	{help = _U('hlp')})
end)