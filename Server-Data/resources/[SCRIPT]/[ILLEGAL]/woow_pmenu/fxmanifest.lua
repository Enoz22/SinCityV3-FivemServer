fx_version 'adamant'

game 'gta5'




client_scripts {
	'cl_settings.lua',
	'framework.lua'
}

ui_page 'html/ui.html'

files {
    'html/ui.html',
    'html/img/image.png',
    'html/css/app.css',
    'html/scripts/app.js'
}


client_scripts {
	'dependencies/menu.lua',
	'client.lua',
	'config.lua',
	'@es_extended/locale.lua'
}

server_scripts {
	'server.lua',
	'@es_extended/locale.lua'
}
