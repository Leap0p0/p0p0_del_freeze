fx_version 'adamant'

game 'gta5'

dependency 'es_extended'

shared_scripts {
    'config.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    "locales/en.lua",
    "locales/fr.lua",
    'client/client.lua'
}

server_scripts {
    '@es_extended/locale.lua',
    '@mysql-async/lib/MySQL.lua',
    "locales/en.lua",
    "locales/fr.lua",
}

