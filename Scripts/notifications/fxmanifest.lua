fx_version 'adamant'
games { 'gta5' }
name "https://github.com/lenix-x"

author '<BeansFL>'
description 'A free notify system for your server ig?'
version '<1.0.0>'
lua54 'yes'

-- shared_scripts {
--     'config.lua'
-- }

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

ui_page 'html/index.html'

files {
    'html/**/*'
    }