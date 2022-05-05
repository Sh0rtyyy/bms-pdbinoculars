ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterUsableItem('pdbinoculars', function(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	--xPlayer.showNotification('Where are you looking ?')
end)

RegisterServerEvent('heli:spotlight')
AddEventHandler('heli:spotlight', function(state)
	local serverID = source
	TriggerClientEvent('heli:spotlight', -1, serverID, state)
end)
