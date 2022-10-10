fx_version 'cerulean'
game 'gta5'

author 'Nicoo'
description 'Addict Drug pour Maman#3517'
version '1.0.0'

client_scripts {
  	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'client/client.lua'
}
server_scripts {
	'@mysql-async/lib/MySQL.lua',
  	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'server/server.lua',
}

