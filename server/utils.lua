QBCore = exports['qb-core']:GetCoreObject()

TimeoutCallbacks          = {}

setTimeout = function(msec, cb)
	table.insert(TimeoutCallbacks, {
		time = GetGameTimer() + msec,
		cb   = cb
	})
	return #TimeoutCallbacks
end

clearTimeout = function(i)
	TimeoutCallbacks[i] = nil
end

-- SetTimeout
Citizen.CreateThread(function()
	while true do
		local sleep = 100
		if #TimeoutCallbacks > 0 then
			local currTime = GetGameTimer()
			sleep = 0
			for i=1, #TimeoutCallbacks, 1 do
				if currTime >= TimeoutCallbacks[i].time then
					TimeoutCallbacks[i].cb()
					TimeoutCallbacks[i] = nil
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)

function canCarryItems(id, item, amount)
	local xPlayer = QBCore.Functions.GetPlayer(id)
	local totalWeight = QBCore.Player.GetTotalWeight(xPlayer.PlayerData.items)
	local itemInfo = QBCore.Shared.Items[item:lower()]
	if (totalWeight + (itemInfo['weight'] * amount)) <= QBCore.Config.Player.MaxWeight then
		return true
	else
		return false
	end
end

function GetItemLabel(item)
	return QBCore.Shared.Items[item].label
end

function GetPlayerFromId(id)
	return QBCore.Functions.GetPlayer(id).Functions
end

function getMoney(id)
	local xPlayer = QBCore.Functions.GetPlayer(id)
	return xPlayer.PlayerData.money['cash']
end

function canSwapItems(id, item, amount)
    local xPlayer = QBCore.Functions.GetPlayer(id)
	local totalWeight = QBCore.Player.GetTotalWeight(xPlayer.PlayerData.items)
	local itemInfo = QBCore.Shared.Items[item:lower()]
	if (totalWeight + (itemInfo['weight'] * amount)) <= QBCore.Config.Player.MaxWeight then
		return true
	else
		return false
	end
end

