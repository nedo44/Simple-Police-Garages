fx_version 'adamant'
game 'gta5'
description 'Simple script for PD Garages'
lua54 'yes'
version '1.0.0'

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua'
}

client_scripts {
    'client.lua',
    'config.lua'
}

dependencies {
    'ox_lib'
}
