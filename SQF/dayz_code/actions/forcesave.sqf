private["_object"];

dayzUpdateVehicle = [_this select 3,"all"];
if (isServer) then {
	dayzUpdateVehicle call server_updateObject;
} else {
	publicVariableServer "dayzUpdateVehicle";
};