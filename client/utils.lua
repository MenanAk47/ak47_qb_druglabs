QBCore = exports['qb-core']:GetCoreObject()

function isPlayerDead()
    return IsEntityDead(GetPlayerPed(-1))
end

function showNotification(text, eType, time)
	ShowNotificationDefault(text)
end

RegisterNetEvent('ak47_qb_druglabs:showNotification')
AddEventHandler('ak47_qb_druglabs:showNotification', function(text, eType, time)
    showNotification(text, eType, time)
end)

function ShowNotificationDefault(msg)
    QBCore.Functions.Notify(msg)
end

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

function LocalInput(text, number, windows)
    AddTextEntry("FMMC_MPM_NA", text)
    DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", windows or "", "", "", "", number or 30)
    while (UpdateOnscreenKeyboard() == 0) do
        DisableAllControlActions(0)
        Wait(0)
    end
    if (GetOnscreenKeyboardResult()) then
    local result = GetOnscreenKeyboardResult()
        return result
    end
end