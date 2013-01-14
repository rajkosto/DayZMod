//Server only EHs
"dayzDeath"			addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};
"dayzDiscoAdd"		addPublicVariableEventHandler {dayz_disco set [count dayz_disco,(_this select 1)];};
"dayzDiscoRem"		addPublicVariableEventHandler {dayz_disco = dayz_disco - [(_this select 1)];};
"dayzPlayerSave"  	addPublicVariableEventHandler {(_this select 1) call server_playerSync;};
"dayzPublishObj"	addPublicVariableEventHandler {(_this select 1) call server_publishObj};
"dayzUpdateVehicle" addPublicVariableEventHandler {_id = (_this select 1) spawn server_updateObject};
"dayzDeleteObj"		addPublicVariableEventHandler {_id = (_this select 1) spawn server_deleteObj};
"dayzLogin"      	addPublicVariableEventHandler {(_this select 1) call server_playerLogin};
"dayzLogin2"		addPublicVariableEventHandler {(_this select 1) call server_playerSetup};
"dayzPlayerMorph"	addPublicVariableEventHandler {(_this select 1) call server_playerMorph};
"dayzUpdate"		addPublicVariableEventHandler {_id = (_this select 1) spawn dayz_processUpdate};
"dayzLoginRecord"	addPublicVariableEventHandler {_id = (_this select 1) spawn dayz_recordLogin};
"dayzCharSave"    	addPublicVariableEventHandler {(_this select 1) call server_playerSync};
"dayzCharDisco"    	addPublicVariableEventHandler {(_this select 1) call server_characterSync};