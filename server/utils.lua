QBCore = exports['qb-core']:GetCoreObject()

TimeoutCount = -1
CancelledTimeouts = {}

setTimeout = function(msec, cb)
    local id = TimeoutCount + 1
    SetTimeout(msec, function()
        if CancelledTimeouts[id] then
            CancelledTimeouts[id] = nil
        else
            cb()
        end
    end)
    TimeoutCount = id
    return id
end

clearTimeout = function(id)
    CancelledTimeouts[id] = true
end

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

