ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('deniz:para')
AddEventHandler('deniz:para', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(Config.Price)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('you_paid', ESX.Math.GroupDigits(Config.Price))})
	--TriggerClientEvent('esx:showNotification', source, _U('you_paid', ESX.Math.GroupDigits(Config.Price)))
end)

ESX.RegisterServerCallback('deniz:paracheck', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	cb(xPlayer.getMoney() >= Config.Price)
end)

ESX.RegisterServerCallback('deniz:paracheck2', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	cb(xPlayer.getMoney() >= Config.illegalprice)

end)

RegisterServerEvent('deniz:para2')
AddEventHandler('deniz:para2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(Config.illegalprice)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'success', text = _U('you_paid', ESX.Math.GroupDigits(Config.illegalprice))})

end)
