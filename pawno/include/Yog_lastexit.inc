stock YogLastExit(playerid)
{
    if(PlayerInfo[playerid][pSetSpawn] == 7)
    {
	new file[256];
	new INT, VW;
	new Float: LEX, Float: LEY, Float: LEZ, Float: LEA;
	INT = GetPlayerInterior(playerid);
	VW = GetPlayerVirtualWorld(playerid);
	GetPlayerPos(playerid, LEX, LEY, LEZ);
	GetPlayerFacingAngle(playerid, LEA);
	format(file, sizeof(file), "[YOGLASTEXIT]/%s.ini", Name(playerid));

	if(!dini_Exists(file))
	dini_Create(file);
	dini_FloatSet(file, "posX", LEX);
	dini_FloatSet(file, "posY", LEY);
	dini_FloatSet(file, "posZ", LEZ);
	dini_FloatSet(file, "posA", LEA);
	dini_IntSet(file, "int", INT);
	dini_IntSet(file, "vw", VW);
	printf("[YOG LASTEXIT] BERHASIL DIMUAT");
	}

	if(PlayerInfo[playerid][pLastCar] == 1)
	{
    new use_car = GetPlayerUseHomeCar(playerid);
    new vehicleid = GetPlayerVehicleID(playerid);
    if(use_car == -1) return true;
    {
        GetVehiclePos(vehicleid, player_car_park[playerid][use_car][0], player_car_park[playerid][use_car][1], player_car_park[playerid][use_car][2]);
        GetVehicleZAngle(vehicleid, player_car_park[playerid][use_car][3]);
        SavePlayerCarPark(playerid);
        DestroyVehicleEx(vehicleid);
        SaveCars(playerid);
        printf("[YOG LASTEXIT] BERHASIL DIMUAT");
    }
	}
	return 1;
}

stock PosisiTerakhir(playerid)
{
	new file[256];
	new INT, VW;
	new Float: LEX, Float: LEY, Float: LEZ, Float: LEA;
	GetPlayerPos(playerid, LEX, LEY, LEZ);
	GetPlayerFacingAngle(playerid, LEA);
	format(file, sizeof(file), "[YOGLASTEXIT]/%s.ini", Name(playerid));
	LEX = dini_Float(file, "posX");
	LEY = dini_Float(file, "posY");
	LEZ = dini_Float(file, "posZ");
	LEA = dini_Float(file, "posA");
	INT = dini_Int(file, "int");
	VW = dini_Int(file, "vw");
	SetPPos(playerid, LEX, LEY, LEZ, LEA, INT, VW, false);
	printf("[YOG LASTEXIT] BERHASIL DIMUAT");
	return 1;
}