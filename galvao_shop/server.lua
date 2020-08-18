--
-- Created by IntelliJ IDEA.
-- User: GalvaoNinja
-- Date: 17/08/2020
-- Time: 19:08
-- To change this template use File | Settings | File Templates.
--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

galvaoShop = {}
Tunnel.bindInterface("galvao_shop", galvaoShop)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Functions
-----------------------------------------------------------------------------------------------------------------------------------------
function galvaoShop.buyItem(item, zone, section)
    local source = source
    local user_id = vRP.getUserId(source)

    if user_id then
        local vendasSection = GalvaoShopConf.Zones[zone].Vendas[section]

        for k, v in pairs(vendasSection.Items) do
            if item == v.item then
                if vRP.getInventoryWeight(user_id) + vRP.getItemWeight(v.item) * v.quantity <= vRP.getInventoryMaxWeight(user_id) then
                    if vRP.tryPayment(user_id, parseInt(v.price)) then
                        vRP.giveInventoryItem(user_id, v.item, parseInt(v.quantity))
                        TriggerClientEvent("Notify", source, "sucesso", "Comprou <b> ".. v.quantity .."x " .. vRP.itemNameList(v.item) .. "</b> por <b>$" .. vRP.format(parseInt(v.price)) .. " dólares</b>.")
                    else
                        TriggerClientEvent("Notify", source, "negado", "Dinheiro insuficiente.")
                    end
                else
                    TriggerClientEvent("Notify", source, "negado", "Espaço insuficiente.")
                end
            end
        end
    end
end

local function buildShops(source)
    local user_id = vRP.getUserId(source)
    if user_id then
        for keyConfig, valueConfig in pairs(GalvaoShopConf.Zones) do
            for k, v in pairs(GalvaoShopConf.Zones[keyConfig].Pos) do
                local x, y, z = table.unpack(v)

                local shop_enter = function(source)
                    TriggerClientEvent("galvaoShop:toggleMenu", source, true, keyConfig, GalvaoShopConf.Zones[keyConfig].Vendas)
                end

                local function shop_leave(source)
                    TriggerClientEvent("galvaoShop:toggleMenu", source, false, nil, nil)
                end

                vRPclient._addMarker(source, 21, x, y, z - 0.6, 0.5, 0.5, 0.4, 255, 0, 0, 50, 100)
                vRP.setArea(source, "vRP:galvao_shop" .. k, x, y, z, 2, 2, shop_enter, shop_leave)
            end
        end
    end
end

AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
    if first_spawn then
        buildShops(source)
    end
end)