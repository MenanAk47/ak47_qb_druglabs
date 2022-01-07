fx_version 'adamant'
game 'gta5'
description 'Ak47 Drug Labs'
version '1.0.0'

server_scripts {
	'locales/en.lua',
	'config.lua',
	'server/utils.lua',
	'server/loader.lua',
}

client_scripts {
	'@menuv/menuv.lua',
	'locales/en.lua',
	'config.lua',
	'client/utils.lua',
	'client/main.lua',
	'client/drugdealer.lua',
	'client/teleport.lua',
	'client/loader.lua',
}
