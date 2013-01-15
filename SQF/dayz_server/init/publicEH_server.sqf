"dayzDeath"			addPublicVariableEventHandler {(_this select 1) call server_playerDied};
"dayzDiscoAdd"		addPublicVariableEventHandler {dayz_disco set [count dayz_disco,(_this select 1)];};
"dayzDiscoRem"		addPublicVariableEventHandler {dayz_disco = dayz_disco - [(_this select 1)];};
"dayzPlayerSave"	addPublicVariableEventHandler {(_this select 1) call server_playerSync;};
"dayzPublishObj"	addPublicVariableEventHandler {(_this select 1) call server_publishObj};
"dayzUpdateVehicle"	addPublicVariableEventHandler {(_this select 1) call server_updateObject};
"dayzDeleteObj"		addPublicVariableEventHandler {(_this select 1) call server_deleteObj}; 	
"dayzLogin"			addPublicVariableEventHandler {(_this select 1) call server_playerLogin};
"dayzLogin2"		addPublicVariableEventHandler {(_this select 1) call server_playerSetup};
"dayzPlayerMorph"	addPublicVariableEventHandler {(_this select 1) call server_playerMorph};
"dayzLoginRecord"	addPublicVariableEventHandler {(_this select 1) call dayz_recordLogin}; 
"dayzCharDisco"		addPublicVariableEventHandler {(_this select 1) call server_characterSync};
"dayzSetFix"		addPublicVariableEventHandler {(_this select 1) call object_setFixServer};
"dayzGutBody"		addPublicVariableEventHandler {(_this select 1) spawn server_gutObject};

"usecMorphine"		addPublicVariableEventHandler {	
					(_this select 1) select 0 setVariable["hit_legs",0];
					(_this select 1) select 0 setVariable["hit_hands",0];
				};