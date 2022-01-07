local color = { r = 220, g = 220, b = 220, alpha = 255 }
local font = 0
local dropShadow = true
local default_timer = 2
local teleport_ready = true

tpArea = false
tpSleep = 1000

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(tpSleep)
        for i, v in pairs(Config.Teleports) do
            local plyCoords = GetEntityCoords(GetPlayerPed(PlayerId()), false)
            local distance = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, v.enter.x, v.enter.y, v.enter.z)
            local entrance_name = i
            if distance <= 1.5 then
                if not tpArea then
                    tpArea = true
                    TriggerEvent('ak47_qb_druglabs:startTpInArea',vector3(v.enter.x, v.enter.y, v.enter.z))
                end
                if teleport_ready then
                    DrawText3D(v.enter.x, v.enter.y, v.enter.z + 1.0, string.format(Locales['tp_enter'], entrance_name))
                end
                if IsControlJustPressed(1, 38) and teleport_ready then
                    teleport_ready = false
                    TeleportToExit(entrance_name)
                    timer()
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(tpSleep)
        for i, v in pairs(Config.Teleports) do
            local plyCoords = GetEntityCoords(GetPlayerPed(PlayerId()), false)
            local distance = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, v.exit.x, v.exit.y, v.exit.z)
            local exit_name = i
            if distance <= 1.5 then
                if not tpArea then
                    tpArea = true
                    TriggerEvent('ak47_qb_druglabs:startTpInArea',vector3(v.exit.x, v.exit.y, v.exit.z))
                end
                if teleport_ready then
                    DrawText3D(v.exit.x, v.exit.y, v.exit.z + 1.0, string.format(Locales['tp_exit'],exit_name))
                end
                if IsControlJustPressed(1, 38) and teleport_ready then
                    teleport_ready = false
                    TeleportToEntrance(exit_name)
                    timer()
                end
            end
        end
    end
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    local px,py,pz = table.unpack(GetGameplayCamCoord())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
    local scale = ((1/dist)*2)*(1/GetGameplayCamFov())*95
    if onScreen then
        SetTextColour(color.r, color.g, color.b, color.alpha)
        SetTextScale(0.0*scale, 0.45*scale)
        SetTextFont(font)
        SetTextProportional(1)
        SetTextCentre(true)
        if dropShadow then
            SetTextDropshadow(10, 100, 100, 100, 255)
        end
        BeginTextCommandWidth("STRING")
        AddTextComponentString(text)
        local height = GetTextScaleHeight(0.55 * scale, font)
        local width = EndTextCommandGetWidth(font)
        SetTextEntry("STRING")
        AddTextComponentString(text)
        EndTextCommandDisplayText(_x, _y)
    end
end
function timer()
    local time = default_timer
    for i = 1, time do
        Citizen.Wait(0)
    end
    teleport_ready = true
end
function TeleportToExit(name)
    DoScreenFadeOut(500)
    Citizen.Wait(1000)
    SetPedCoordsKeepVehicle(GetPlayerPed(PlayerId()),Config.Teleports[name].exit.x, Config.Teleports[name].exit.y, Config.Teleports[name].exit.z)
    FreezeEntityPosition(GetPlayerPed(PlayerId()), true)
    Citizen.Wait(1000)
    DoScreenFadeIn(500)
    showNotification(Locales['tp_loading'])
    Citizen.Wait(5000)
    FreezeEntityPosition(GetPlayerPed(PlayerId()), false)
end
function TeleportToEntrance(name)
    DoScreenFadeOut(500)
    Citizen.Wait(1000)
    SetPedCoordsKeepVehicle(GetPlayerPed(PlayerId()), Config.Teleports[name].enter.x, Config.Teleports[name].enter.y, Config.Teleports[name].enter.z)
    Citizen.Wait(1000)
    DoScreenFadeIn(500)
    Citizen.Wait(1000)
end