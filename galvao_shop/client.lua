--
-- Created by IntelliJ IDEA.
-- User: GalvaoNinja
-- Date: 17/08/2020
-- Time: 19:08
-- To change this template use File | Settings | File Templates.
--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

galvaoShop = Tunnel.getInterface("galvao_shop")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false

-----------------------------------------------------------------------------------------------------------------------------------------
-- Net Events
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("galvaoShop:toggleMenu")
AddEventHandler("galvaoShop:toggleMenu", function(open, zone, vendas)

end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NUI Callbacks
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close", function(data, cb)
    toogleUI(false, "", {})
end)

RegisterNUICallback("buyItem", function(data, cb)
    local item = data.item
    local zone = data.zone
    local section = data.section

    galvaoShop.buyItem(item, zone, section)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Functions
-----------------------------------------------------------------------------------------------------------------------------------------
function toogleUI(show, zone, vendas)
    menuactive = show

    if menuactive then
        SetNuiFocus(true, true)
        SendNUIMessage({ toogleUi = true, zone = zone, vendas = vendas })
    else
        SetNuiFocus(false)
        SendNUIMessage({ toogleUi = false, zone = zone, vendas = vendas })
    end
end



Citizen.CreateThread(function()
    SetNuiFocus(false,false)
    while true do
        Citizen.Wait(1)
        for keyConfig, valueConfig in pairs(GalvaoShopConf.Zones) do
            for k, v in pairs(GalvaoShopConf.Zones[keyConfig].Pos) do
                local x, y, z = table.unpack(v)

                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),x,y,z,true)

                if distance <= 1 then
                    DrawMarker(21,x,y,z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
                    if IsControlJustPressed(0,38) then
                        toogleUI(true, keyConfig, GalvaoShopConf.Zones[keyConfig].Vendas)
                    end
                end
            end
        end
    end
end)