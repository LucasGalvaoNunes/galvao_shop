
# Galvão Shop - vRP/ vRPex

Script para montar as vendas nas lojas do jogo.

Com ela seu servidor vai ter uma interface mais bonita para mostrar os itens disponíveis para as vendas, funciona para qualquer loja (Ammunation, Conveniências e etc)

## Iniciando

Siga o passo-a-passo para configurar corretamente o script

### Instalação

no seu  `server.cfg` adicione está linha abaixo, lembre-se de que deve estar a baixo do `start vrp`:

```
start galvao_shop
```

## Arquivo de configuração

Na pasta galvao_shop existe um arquivo chamado config.lua é nele que você irá configurar os blips para acesso a loja, ele segue o seguinte padrão:

`GalvaoShopConf.Zones`, Aqui que você identifica as zonas de compras, exemplo: 
```lua
GalvaoShopConf.Zones = {
	IdentificacaoLoja = {
	...
	}
}
```
 Dentro da identificação da loja é obrigatório ter `Vendas` e `Pos`

- `Vendas`, aqui você coloca quais as seções de vendas, ex: Bebidas, Utilitários e etc.
	- Dentro da seção de vendas é obrigatório:
		- `Icone` é o nome da imagem com a extensão que se encontra dentro de `nui/images`, Ex: 'bebida.png'. 
		- `Items` é a lista de todos os items disponíveis nessa seção, dentro do objeto de cada item deve conter obrigatoriamente:
			- `itemLabel`, nome que será mostrado na interface.
			- `item`, o código do inventário para este item.
			- `price`, o preço de venda.
			- `quantity`, a quantidade da venda.
			- `imglink`, o nome da imagem com a extensão que se encontra dentro de `nui/images`, Ex: 'bebida.png'.
- `Pos`, aqui você informa todas as coordenadas para a criação dos blips, seguindo o padrão, X, Y, Z, Ex: `{ 25.65, -1346.58, 29.49 }`

Deixei pronto a configuração de todas as lojas de conveniências e ammunation, você pode pegar ela como referência para a criação das suas próprias.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Melhorias previstas

* Items diretamente pelo banco de dados
* Estoque de itens, sendo reabastecido em determinada hora da cidade
