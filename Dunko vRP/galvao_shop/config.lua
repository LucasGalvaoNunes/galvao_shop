--
-- Created by IntelliJ IDEA.
-- User: GalvaoNinja
-- Date: 17/08/2020
-- Time: 21:29
-- To change this template use File | Settings | File Templates.
--

GalvaoShopConf = {}

GalvaoShopConf.Zones = {
    Ammunation = {
        Vendas = {
            Armamentos = {
                Icone = 'glock.png',
                Items = {
                    {
                        itemLabel = "Winchester 22",
                        item = 'wbody|WEAPON_MUSKET',
                        price = 50000,
                        quantity = 1,
                        imglink = 'winchester22.png',
                    }
                }
            },
            Municoes = {
                Icone = 'm-aks.png',
                Items = {
                    {
                        itemLabel = "Winchester 22",
                        item = 'wammo|WEAPON_MUSKET',
                        price = 3000,
                        quantity = 1,
                        imglink = 'm-winchester22.png',
                    },
                    {
                        itemLabel = "Sinalizador",
                        item = 'wammo|WEAPON_FLARE',
                        price = 1000,
                        quantity = 1,
                        imglink = 'm-sinalizador.png',
                    }
                }
            },
            ArmasBrancas = {
                Icone = 'faca.png',
                Items = {
                    {
                        itemLabel = "Faca",
                        item = 'wbody|WEAPON_KNIFE',
                        price = 2000,
                        quantity = 1,
                        imglink = 'faca.png',
                    },
                    {
                        itemLabel = "Adaga",
                        item = 'wbody|WEAPON_DAGGER',
                        price = 2000,
                        quantity = 1,
                        imglink = 'adaga.png',
                    },
                    {
                        itemLabel = "Soco-Inglês",
                        item = 'wbody|WEAPON_KNUCKLE',
                        price = 2000,
                        quantity = 1,
                        imglink = 'ingles.png',
                    },
                    {
                        itemLabel = "Machete",
                        item = 'wbody|WEAPON_MACHETE',
                        price = 2000,
                        quantity = 1,
                        imglink = 'machete.png',
                    },
                    {
                        itemLabel = "Canivete",
                        item = 'wbody|WEAPON_SWITCHBLADE',
                        price = 2000,
                        quantity = 1,
                        imglink = 'canivete.png',
                    },
                    {
                        itemLabel = "Chave de Grifo",
                        item = 'wbody|WEAPON_WRENCH',
                        price = 2000,
                        quantity = 1,
                        imglink = 'grifo.png',
                    },
                    {
                        itemLabel = "Martelo",
                        item = 'wbody|WEAPON_HAMMER',
                        price = 2000,
                        quantity = 1,
                        imglink = 'martelo.png',
                    },
                    {
                        itemLabel = "Taco de Golf",
                        item = 'wbody|WEAPON_GOLFCLUB',
                        price = 2000,
                        quantity = 1,
                        imglink = 'golf.png',
                    },
                    {
                        itemLabel = "Pé de Cabra",
                        item = 'wbody|WEAPON_CROWBAR',
                        price = 2000,
                        quantity = 1,
                        imglink = 'cabra.png',
                    },
                    {
                        itemLabel = "Machado",
                        item = 'wbody|WEAPON_HATCHET',
                        price = 2000,
                        quantity = 1,
                        imglink = 'machado.png',
                    },
                    {
                        itemLabel = "Lanterna",
                        item = 'wbody|WEAPON_FLASHLIGHT',
                        price = 2000,
                        quantity = 1,
                        imglink = 'lanterna.png',
                    },
                    {
                        itemLabel = "Taco de Beisebol",
                        item = 'wbody|WEAPON_BAT',
                        price = 2000,
                        quantity = 1,
                        imglink = 'beisebol.png',
                    },
                    {
                        itemLabel = "Garrafa",
                        item = 'wbody|WEAPON_BOTTLE',
                        price = 2000,
                        quantity = 1,
                        imglink = 'garrafa.png',
                    },
                    {
                        itemLabel = "Machado de Batalha",
                        item = 'wbody|WEAPON_BATTLEAXE',
                        price = 2000,
                        quantity = 1,
                        imglink = 'batalha.png',
                    },
                    {
                        itemLabel = "Taco de Sinuca",
                        item = 'wbody|WEAPON_POOLCUE',
                        price = 2000,
                        quantity = 1,
                        imglink = 'sinuca.png',
                    },
                    {
                        itemLabel = "Machado de Pedra",
                        item = 'wbody|WEAPON_STONE_HATCHET',
                        price = 10000,
                        quantity = 1,
                        imglink = 'pedra.png',
                    },
                }
            },
            Utilidades = {
                Icone = 'ferramenta.png',
                Items = {
                    {
                        itemLabel = "Paraquedas",
                        item = 'wbody|GADGET_PARACHUTE',
                        price = 1000,
                        quantity = 1,
                        imglink = 'paraquedas.png',
                    },
                    {
                        itemLabel = "Serra",
                        item = 'serra',
                        price = 5000,
                        quantity = 1,
                        imglink = 'serra.png',
                    },
                    {
                        itemLabel = "Furadeira",
                        item = 'furadeira',
                        price = 8000,
                        quantity = 1,
                        imglink = 'furadeira.png',
                    },
                    {
                        itemLabel = "Sinalizador",
                        item = 'wbody|WEAPON_FLARE',
                        price = 500,
                        quantity = 1,
                        imglink = 'sinalizador.png',
                    }
                }
            }
        },
        Pos = {
            { 1692.62, 3759.50, 34.70 },
            { 252.89, -49.25, 69.94 },
            { 843.28, -1034.02, 28.19 },
            { -331.35, 6083.45, 31.45 },
            { -663.15, -934.92, 21.82 },
            { -1305.18, -393.48, 36.69 },
            { -1118.80, 2698.22, 18.55 },
            { 2568.83, 293.89, 108.73 },
            { -3172.68, 1087.10, 20.83 },
            { 21.32, -1106.44, 29.79 },
            { 811.19, -2157.67, 29.61 }
        }
    },
    TwentyFourSeven = {
        Vendas = {
            Utilidades = {
                Icone = 'ferramenta.png',
                Items = {
                    {
                        itemLabel = "Isca",
                        item = 'isca',
                        price = 500,
                        quantity = 1,
                        imglink = 'isca.png',
                    },
                    {
                        itemLabel = "Garrafa Vazia",
                        item = 'water',
                        price = 15,
                        quantity = 1,
                        imglink = 'garrafavazia.png',
                    },
                    {
                        itemLabel = "Kit de Reparos",
                        item = 'repairkit',
                        price = 10000,
                        quantity = 1,
                        imglink = 'repairkit.png',
                    },
                    {
                        itemLabel = "Ferramentas",
                        item = 'ferramenta',
                        price = 20,
                        quantity = 1,
                        imglink = 'ferramenta.png',
                    },
                    {
                        itemLabel = "Bandagem",
                        item = 'bandagem',
                        price = 3000,
                        quantity = 1,
                        imglink = 'bandagem.png',
                    },
                    {
                        itemLabel = "Serra",
                        item = 'serra',
                        price = 10000,
                        quantity = 1,
                        imglink = 'serra.png',
                    },
                    {
                        itemLabel = "Furadeira",
                        item = 'furadeira',
                        price = 10000,
                        quantity = 1,
                        imglink = 'furadeira.png',
                    },
                    {
                        itemLabel = "Radio",
                        item = 'radio',
                        price = 1000,
                        quantity = 1,
                        imglink = 'radio.png',
                    }
                }
            },
            Vestuario = {
                Icone = 'mochila.png',
                Items = {
                    {
                        itemLabel = "Mochila",
                        item = 'mochila',
                        price = 10000,
                        quantity = 1,
                        imglink = 'mochila.png',
                    },
                    {
                        itemLabel = "Aliança",
                        item = 'alianca',
                        price = 150,
                        quantity = 1,
                        imglink = 'alianca.png',
                    }
                }
            },
            Bebidas = {
                Icone = 'cerveja.png',
                Items = {
                    {
                        itemLabel = "Cerveja",
                        item = 'cerveja',
                        price = 18,
                        quantity = 1,
                        imglink = 'cerveja.png',
                    },
                    {
                        itemLabel = "Tequila",
                        item = 'tequila',
                        price = 30,
                        quantity = 1,
                        imglink = 'tequila.png',
                    },
                    {
                        itemLabel = "Vodka",
                        item = 'vodka',
                        price = 48,
                        quantity = 1,
                        imglink = 'vodka.png',
                    },
                    {
                        itemLabel = "Whisky",
                        item = 'whisky',
                        price = 60,
                        quantity = 1,
                        imglink = 'whisky.png',
                    },
                    {
                        itemLabel = "Conhaque",
                        item = 'conhaque',
                        price = 72,
                        quantity = 1,
                        imglink = 'conhaque.png',
                    },
                    {
                        itemLabel = "Absinto",
                        item = 'absinto',
                        price = 90,
                        quantity = 1,
                        imglink = 'absinto.png',
                    },
                    {
                        itemLabel = "Energético",
                        item = 'energetico',
                        price = 5000,
                        quantity = 1,
                        imglink = 'energetico.png',
                    }
                }
            }
        },
        Pos = {
            { 25.65, -1346.58, 29.49 },
            { 2556.75, 382.01, 108.62 },
            { 1163.54, -323.04, 69.20 },
            { -707.37, -913.68, 19.21 },
            { -47.73, -1757.25, 29.42 },
            { 373.90, 326.91, 103.56 },
            { -3243.10, 1001.23, 12.83 },
            { 1729.38, 6415.54, 35.03 },
            { 547.90, 2670.36, 42.15 },
            { 1960.75, 3741.33, 32.34 },
            { 2677.90, 3280.88, 55.24 },
            { 1698.45, 4924.15, 42.06 },
            { -1820.93, 793.18, 138.11 },
            { 1392.46, 3604.95, 34.98 },
            { -2967.82, 390.93, 15.04 },
            { -3040.10, 585.44, 7.90 },
            { 1135.56, -982.20, 46.41 },
            { 1165.91, 2709.41, 38.15 },
            { -1487.18, -379.02, 40.16 },
            { -1222.78, -907.22, 12.32 }
        }
    }
}