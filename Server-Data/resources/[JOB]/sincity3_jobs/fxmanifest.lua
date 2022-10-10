fx_version 'adamant'

game 'gta5'

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/fr.lua',
	'config.lua',

	'jobs/tailor.lua',
	'jobs/chemical.lua',
	--'jobs/galaxy.lua',
	'jobs/farm.lua',
	--'jobs/blackwood.lua',
	--'jobs/skybar.lua',
	--'jobs/bahamas.lua',
	'jobs/vigne.lua',
	'jobs/fisherman.lua',
	'jobs/fueler.lua',
	--'jobs/poolbar.lua',
	'jobs/lumberjack.lua',
	'jobs/miner.lua',
	--'jobs/unicorn.lua',
	'jobs/reporter.lua',
	'jobs/slaughterer.lua',
	'jobs/goldsmith.lua',
	--'jobs/yellowjack.lua',
	'jobs/brasserie.lua',
	'jobs/tabac.lua',
	--'jobs/lifeinvader.lua',
	'jobs/gouv.lua',
	'jobs/gouvc.lua',
	'jobs/justice.lua',	
	'jobs/farmcayo.lua',
	'jobs/avocat1.lua',	
	'jobs/avocat2.lua',
	'server/main.lua',
	'server/registeritem.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',

	'jobs/tailor.lua',
	--'jobs/poolbar.lua',
	--'jobs/blackwood.lua',
	--'jobs/yellowjack.lua',
	--'jobs/unicorn.lua',
	--'jobs/skybar.lua',
	--'jobs/bahamas.lua',
	'jobs/chemical.lua',
	'jobs/farm.lua',
	--'jobs/galaxy.lua',
	'jobs/vigne.lua',
	'jobs/fisherman.lua',
	'jobs/fueler.lua',
	'jobs/lumberjack.lua',
	--'jobs/lifeinvader.lua',
	'jobs/miner.lua',
	'jobs/reporter.lua',
	'jobs/slaughterer.lua',
	'jobs/goldsmith.lua',
	'jobs/brasserie.lua',
	'jobs/tabac.lua',
	'jobs/farmcayo.lua',
	'jobs/gouv.lua',
	'jobs/gouvc.lua',
	'jobs/justice.lua',	
	'jobs/avocat1.lua',	
	'jobs/avocat2.lua',	
	'client/main.lua'
}

dependencies {
	'es_extended',
	'esx_addonaccount',
	'skinchanger',
	'esx_skin'
}
