-----------------------------------------------
-- [ESX]AdminDuty | MANIFEST (c)4rn_OLD 2020 --
-----------------------------------------------
--
--	Created by Arnold Halics
--
--	This work is licensed under MIT.
--
--	If problem this script, please write e-mail: nemerdekel@sohivatal.hu
--

resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

version '1.0'

description 'ESX 4rn_adminduty'

client_scripts {
	'@es_extended/locale.lua',
	'ad_client.lua',
	'locales/hu.lua',
	'ad_config.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'ad_server.lua',
	'locales/hu.lua',
	'ad_config.lua'
}

