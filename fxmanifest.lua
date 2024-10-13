fx_version 'cerulean'          -- Defines the FX version
game 'gta5'                    -- Specifies the game
lua54 'yes'                    -- Indicates Lua 5.4 compatibility

-- Shared scripts (loaded before server and client scripts)
shared_scripts {
    'config.lua',              -- Configuration file shared between client and server
    '@ox_lib/init.lua'         -- External library, make sure this path is correct
}

-- Server scripts (loaded after shared scripts)
server_scripts {
    'server.lua',              -- Your server-side script
}

-- Client scripts (loaded after shared scripts)
client_scripts {
    'client.lua',              -- Your client-side script
}
