ESX = nil
local menuOpen = false
local wasOpen = false
local shopMenu = MenuV:CreateMenu(false, 'Drug Dealer', 'center', 155, 0, 0, 'size-125', 'none', 'menuv', 'drugdealer')
local inDealer = false
local sleep = 1000
AddEventHandler('ak47_qb_druglabs:startDealerInArea', function(zone)
    sleep = 0
    while inDealer do
        Citizen.Wait(0)
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords, zone, true) > 20 then
            sleep = 1000
            inDealer = false
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(sleep)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		for i = 1, #Config.DrugDealerItems, 1 do
			if GetDistanceBetweenCoords(coords, Config.DrugDealerItems[i].pos, true) < 2.0  and not menuOpen then
				if not inDealer then
					inDealer = true
					TriggerEvent('ak47_qb_druglabs:startDealerInArea',Config.DrugDealerItems[i].pos)
				end
				ShowHelpNotification(string.format(Locales['dealer_prompt']))
				if IsControlJustReleased(0, 38) then
					OpenDrugShop(i, Config.DrugDealerItems[i].items, Config.DrugDealerItems[i].pos)
				end
			end
		end
	end
end)

shopMenu:On('close', function() 
    menuOpen = false 
end)

shopMenu:On('open', function()
    menuOpen = true
end)

function OpenDrugShop(id, items, coord)
	local id = id
	local items = items
	local coord = coord
	MenuV:CloseMenu(shopMenu)
	shopMenu:ClearItems()
	local elements = {}
	menuOpen = true
	Citizen.CreateThread(function( ... )
		while menuOpen do
			Citizen.Wait(0)
			local playerPed = PlayerPedId()
			local coords = GetEntityCoords(playerPed)
			if GetDistanceBetweenCoords(coords, coord, true) > 2.0 then
				menuOpen = false
				MenuV:CloseMenu(shopMenu)
			end
		end
	end)
	for i, v in pairs(items) do
        local shopMenuButton = shopMenu:AddButton({
            label = i, data = i,
            value = i,
            select = function(btn)
                MenuV:CloseMenu(shopMenu)
                local value = LocalInput('How many you want to sell', 255, '')
		        if tonumber(value) and tonumber(value) > 0 then
		            TriggerServerEvent('ak47_qb_druglabs:sellDrug', id, btn.Value, tonumber(value))
		            Citizen.Wait(1000)
		            OpenDrugShop(id, items, coord)
		        else
		            showNotification('Invalid Input!')
		        end
            end
        })
    end
    MenuV:OpenMenu(shopMenu)
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		if menuOpen then
			ESX.UI.Menu.CloseAll()
		end
	end
end)

function CreateBlipCircle(coords, text, color, sprite, radius, size)
	local blip = AddBlipForRadius(coords, radius)
	SetBlipHighDetail(blip, true)
	SetBlipColour(blip, color)
	SetBlipAlpha (blip, 128)
	blip = AddBlipForCoord(coords)
	SetBlipHighDetail(blip, true)
	SetBlipSprite (blip, sprite)
	SetBlipScale  (blip, size)
	SetBlipColour (blip, color)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
end

Citizen.CreateThread(function()
	for i, v in pairs(Config.Blips) do
		local zone = v
		CreateBlipCircle(zone.pos, zone.name, zone.color, zone.sprite, zone.radius, zone.size)
	end
end)