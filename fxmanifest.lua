fx_version 'cerulean'

game 'gta5'

description 'A banking system that adds interactable banks and ATMs for EYE System'
lua54 'yes'
version '1.0.1'
legacyversion '1.9.1'

shared_scripts {
	'@joker_core/imports.lua',
	'@joker_core/locale.lua',
	'locales/*.lua',
	'config.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_scripts {
	'client/main.lua'
}

ui_page 'html/ui.html'

files {
	'html/**',
}

dependency 'joker_core'
