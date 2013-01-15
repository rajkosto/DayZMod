"dayzSetFuel"		addPublicVariableEventHandler {(_this select 1) call local_setFuel};
"dayzSetFix"		addPublicVariableEventHandler {(_this select 1) call object_setFixServer};

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\init\publicEH_server.sqf";
};

if (!isDedicated) then {
	"norrnRaLW"   		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\publicEH\load_wounded.sqf"};
	"norrnRLact"		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\load\load_wounded.sqf"};
	"usecMorphine"		addPublicVariableEventHandler {(_this select 1) call player_medMorphine};
	"usecBleed"			addPublicVariableEventHandler {_id = (_this select 1) spawn fnc_usec_damageBleed};
	"usecBandage"		addPublicVariableEventHandler {(_this select 1) call player_medBandage};
	"usecEpi"			addPublicVariableEventHandler {(_this select 1) call player_medEpi};
	"usecTransfuse"		addPublicVariableEventHandler {(_this select 1) call player_medTransfuse};
	"usecPainK"			addPublicVariableEventHandler {(_this select 1) call player_medPainkiller};
	"dayzHideBody"		addPublicVariableEventHandler {hideBody (_this select 1)};
	"dayzHumanity"		addPublicVariableEventHandler {(_this select 1) spawn player_humanityChange};
	"dayzHitV"			addPublicVariableEventHandler {(_this select 1) call fnc_usec_damageVehicle};

	"dayzSetDate"		addPublicVariableEventHandler {setDate (_this select 1)};
	"dayzFlies"			addPublicVariableEventHandler {(_this select 1) call spawn_flies};
	"dayzRoadFlare"		addPublicVariableEventHandler {(_this select 1) spawn object_roadFlare};
	"norrnRaDrag"		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\publicEH\animDrag.sqf"};
	"dayzFire"			addPublicVariableEventHandler {nul=(_this select 1) spawn BIS_Effects_Burn};
};
