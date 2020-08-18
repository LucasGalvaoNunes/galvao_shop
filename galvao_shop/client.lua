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
    toogleUI(open, zone, vendas)
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