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
vRPclient = Tunnel.getInterface("vRP","galvao_shop")


RegisterServerEvent("galvaoShop:buyItem")
AddEventHandler("galvaoShop:buyItem",function(item, zone, section)
    buyItem(item, zone, section)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Functions
-----------------------------------------------------------------------------------------------------------------------------------------
function buyItem(item, zone, section)
    local source = source
    local user_id = vRP.getUserId({source})

    if user_id then
        local vendasSection = GalvaoShopConf.Zones[zone].Vendas[section]

        for k, v in pairs(vendasSection.Items) do
            if item == v.item then
                if vRP.getInventoryWeight({ user_id }) + vRP.getItemWeight({ v.item }) * v.quantity <= vRP.getInventoryMaxWeight({ user_id }) then
                    if vRP.tryPayment({ user_id, parseInt(v.price) }) then
                        vRP.giveInventoryItem({ user_id, v.item, parseInt(v.quantity) })
                        vRPclient.notify(user_id, {"Comprou ".. v.quantity .."x " .. v.itemLabel .. " por ~g~$" .. string.format(parseInt(v.price)) .. " dólares"})
                    else
                        vRPclient.notify(user_id, {"~r~Dinheiro insuficiente!"})
                    end
                else
                    vRPclient.notify(user_id, {"~r~Espaço insuficiente!"})
                end
            end
        end
    end
end