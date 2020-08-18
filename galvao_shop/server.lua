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