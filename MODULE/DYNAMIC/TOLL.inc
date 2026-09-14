#define MAX_TOLLS 100

enum E_TOLL
{
	tModel,
	Float:tSpeed,
	Float:tCX, Float:tCY, Float:tCZ,
	Float:tCRX, Float:tCRY, Float:tCRZ,
	Float:tOX, Float:tOY, Float:tOZ,
	Float:tORX, Float:tORY, Float:tORZ,
	tStatus,
	tObjID,
	Text3D:tText
};

new tData[MAX_TOLLS][E_TOLL],
	Iterator: Tolls<MAX_TOLLS>;

new Float:tPosX[MAX_PLAYERS],
	Float:tPosY[MAX_PLAYERS],
	Float:tPosZ[MAX_PLAYERS],
	Float:tRotX[MAX_PLAYERS],
	Float:tRotY[MAX_PLAYERS],
	Float:tRotZ[MAX_PLAYERS];


CMD:createtoll(playerid, params[])
{
	new object;
	if(admin_level[playerid] < 10 || !admin_logged[playerid])
		return PermissionError(playerid);

	new id = Iter_Free(Tolls), str[150], query[512];
	if(id == -1) return Error(playerid, "You cant create more tolls!");
	if(sscanf(params, "i", object)) return Info(playerid, "/createtoll [objectid]");

	GetPlayerPos(playerid, tData[id][tCX], tData[id][tCY], tData[id][tCZ]);
	tData[id][tModel] = object;
	tData[id][tCX] = tData[id][tCX] + 2;
	tData[id][tCY] = tData[id][tCY] + 2;
	tData[id][tCRX] = 0;
	tData[id][tCRY] = 0;
	tData[id][tCRZ] = 0;
	GetPlayerPos(playerid, tData[id][tOX], tData[id][tOY], tData[id][tOZ]);
	tData[id][tOX] = tData[id][tOX] + 2;
	tData[id][tOY] = tData[id][tOY] + 2;
	tData[id][tORX] = 0;
	tData[id][tORY] = 0;
	tData[id][tORZ] = 0;
	tData[id][tStatus] = 0;
	tData[id][tSpeed] = 2.0;

	// Creating
	tData[id][tObjID] = CreateDynamicObject(tData[id][tModel], tData[id][tCX], tData[id][tCY], tData[id][tCZ], tData[id][tCRX], tData[id][tCRY], tData[id][tCRZ], -1, -1, -1, 50.0, 50.0);

	format(str, sizeof(str), "{FF7F00}[Toll ID: %d]\n{FFFFFF}Gunakan /paytoll atau KLAKSON\nuntuk membayar toll!", id);
	tData[id][tText] = CreateDynamic3DTextLabel(str, COLOR_WHITE, tData[id][tCX], tData[id][tCY], tData[id][tCZ], 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	Iter_Add(Tolls, id);
	
	Servers(playerid, "You have created a toll gate.");

	// FIX: Menambahkan speed='%f' dan memanggil tData[id][tSpeed] ke dalam query insert
	mysql_format(mMysql, query, sizeof(query), "INSERT INTO tolls SET ID='%d', model='%d', speed='%f', cX='%f', cY='%f', cZ='%f', cRX='%f', cRY='%f', cRZ='%f', oX='%f', oY='%f', oZ='%f', oRX='%f', oRY='%f', oRZ='%f'",
	id, tData[id][tModel], tData[id][tSpeed], tData[id][tCX], tData[id][tCY], tData[id][tCZ], tData[id][tCRX], tData[id][tCRY], tData[id][tCRZ], tData[id][tOX], tData[id][tOY], tData[id][tOZ], tData[id][tORX], tData[id][tORY], tData[id][tORZ]);
	mysql_tquery(mMysql, query, "OnTollCreated", "i", id);
	return 1;
}

forward OnTollCreated(id);
public OnTollCreated(id)
{
	Toll_Save(id);
	return 1;
}

stock Toll_Save(id)
{
	new dquery[1024];
	mysql_format(mMysql, dquery, sizeof(dquery), "UPDATE tolls SET model='%d', speed='%f', cX='%f', cY='%f', cZ='%f', cRX='%f', cRY='%f', cRZ='%f', oX='%f', oY='%f', oZ='%f', oRX='%f', oRY='%f', oRZ='%f' WHERE ID='%d'",
	tData[id][tModel], tData[id][tSpeed], tData[id][tCX], tData[id][tCY], tData[id][tCZ], tData[id][tCRX], tData[id][tCRY], tData[id][tCRZ], tData[id][tOX], tData[id][tOY], tData[id][tOZ], tData[id][tORX], tData[id][tORY], tData[id][tORZ], id);
	mysql_tquery(mMysql, dquery);
	return 1;
}

forward LoadTolls();
public LoadTolls()
{
	new rows = cache_num_rows();
	if(rows)
	{
		new id;
		for(new i; i < rows; i++)
		{
			cache_get_value_name_int(i, "ID", id);
			cache_get_value_name_int(i, "model", tData[id][tModel]);
			cache_get_value_name_float(i, "speed", tData[id][tSpeed]);
			cache_get_value_name_float(i, "cX", tData[id][tCX]);
			cache_get_value_name_float(i, "cY", tData[id][tCY]);
			cache_get_value_name_float(i, "cZ", tData[id][tCZ]);
			cache_get_value_name_float(i, "cRX", tData[id][tCRX]);
			cache_get_value_name_float(i, "cRY", tData[id][tCRY]);
			cache_get_value_name_float(i, "cRZ", tData[id][tCRZ]);
			cache_get_value_name_float(i, "oX", tData[id][tOX]);
			cache_get_value_name_float(i, "oY", tData[id][tOY]);
			cache_get_value_name_float(i, "oZ", tData[id][tOZ]);
			cache_get_value_name_float(i, "oRX", tData[id][tORX]);
			cache_get_value_name_float(i, "oRY", tData[id][tORY]);
			cache_get_value_name_float(i, "oRZ", tData[id][tORZ]);

			Iter_Add(Tolls, id);
			new str[150];
			format(str, sizeof(str), "{FF7F00}[Toll ID: %d]\n{FFFFFF}Gunakan /paytoll atau KLAKSON\nuntuk membayar toll!", id);
			tData[id][tObjID] = CreateDynamicObject(tData[id][tModel], tData[id][tCX], tData[id][tCY], tData[id][tCZ], tData[id][tCRX], tData[id][tCRY], tData[id][tCRZ], -1, -1, -1, 50.0, 50.0);

			tData[id][tText] = CreateDynamic3DTextLabel(str, COLOR_WHITE, tData[id][tCX], tData[id][tCY], tData[id][tCZ], 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
			tData[id][tStatus] = 0;
		}
		printf("[Tolls] Number of Toll Gates loaded: %d.", rows);
	}
}

CMD:tolledit(playerid, params[])
{
	static id, type[24], string[128];

	if(admin_level[playerid] < 8 || !admin_logged[playerid])
		return PermissionError(playerid);

	if(sscanf(params, "ds[24]S()[128]", id, type, string))
	{
		Info(playerid, "/tolledit [id] [name]");
		Info(playerid, "object | close | open | speed | delete");
		return 1;
	}
	if((id < 0 || id >= MAX_TOLLS))
		return Error(playerid, "Invalid toll ID.");
	if(!Iter_Contains(Tolls, id)) return Error(playerid, "The toll you specified doesn't exist.");

	if(!strcmp(type, "object", true))
	{
		new object;
		if(sscanf(string, "d", object)) return Info(playerid, "/tolledit [id] [object] [objectid]");
		tData[id][tModel] = object;
		DestroyDynamicObject(tData[id][tObjID]);
		tData[id][tObjID] = CreateDynamicObject(tData[id][tModel], tData[id][tCX], tData[id][tCY], tData[id][tCZ], tData[id][tCRX], tData[id][tCRY], tData[id][tCRZ], -1, -1, -1, 50.0, 50.0);
		Servers(playerid, "You have set toll object ID.");
		Toll_Save(id);
	}
	else if(!strcmp(type, "speed", true))
	{
		new Float:speed;
		if(sscanf(string, "f", speed)) return Info(playerid, "/tolledit [id] [speed] [level]");
		tData[id][tSpeed] = speed;
		Servers(playerid, "You have set toll moving speed.");
		Toll_Save(id);
	}
	else if(!strcmp(type, "close", true))
	{
		PlayerInfo[playerid][gEdit] = 1;
		PlayerInfo[playerid][gEditID] = id;
		GetDynamicObjectPos(tData[id][tObjID], tPosX[playerid], tPosY[playerid], tPosZ[playerid]);
		GetDynamicObjectRot(tData[id][tObjID], tRotX[playerid], tRotY[playerid], tRotZ[playerid]);
		EditDynamicObject(playerid, tData[id][tObjID]);
		Servers(playerid, "You are now editing toll closing position.");
		Toll_Save(id);
	}
	else if(!strcmp(type, "open", true))
	{
		PlayerInfo[playerid][gEdit] = 2;
		PlayerInfo[playerid][gEditID] = id;
		GetDynamicObjectPos(tData[id][tObjID], tPosX[playerid], tPosY[playerid], tPosZ[playerid]);
		GetDynamicObjectRot(tData[id][tObjID], tRotX[playerid], tRotY[playerid], tRotZ[playerid]);
		EditDynamicObject(playerid, tData[id][tObjID]);
		Servers(playerid, "You are now editing toll opening position.");
	}
	else if(!strcmp(type, "delete", true))
	{
		tData[id][tModel] = 0;
		DestroyDynamicObject(tData[id][tObjID]);
		DestroyDynamic3DTextLabel(tData[id][tText]);

		Iter_Remove(Tolls, id);
		new query[128];
		mysql_format(mMysql, query, sizeof(query), "DELETE FROM tolls WHERE ID=%d", id);
		mysql_tquery(mMysql, query);
		Servers(playerid, "You have deleted the toll.");
	}
	return 1;
}

CMD:gototoll(playerid, params[])
{
	new id;
	if(admin_level[playerid] < 1) return PermissionError(playerid);
	if(sscanf(params, "i", id)) return Info(playerid, "/gototoll [toll_id]");
	if(!Iter_Contains(Tolls, id)) return Error(playerid, "The toll doesn't exist.");

	SetPlayerPosition(playerid, tData[id][tCX], tData[id][tCY], tData[id][tCZ], 5.0);
	SetPlayerInterior(playerid, 0);
	SetPlayerVirtualWorld(playerid, 0);
	Servers(playerid, "You have teleported to the toll.");
	return 1;
}

// ==========================================
// TOLL PAYMENT SYSTEM (KLAKSON / COMMAND)
// ==========================================

stock ProcessToll(playerid)
{
	// Harus pengemudi
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return 0; 

	foreach(new idx : Tolls)
	{
		if(tData[idx][tModel] && IsPlayerInRangeOfPoint(playerid, 8.0, tData[idx][tCX], tData[idx][tCY], tData[idx][tCZ]))
		{
			if(tData[idx][tStatus] == 1) return 1; // Jika toll sedang terbuka, jangan spam bayar lagi

			// Pembayaran $10 (Sesuaikan dengan sistem uang kamu, misal pMoney dll)
			if(GetPlayerMoney(playerid) < 10) 
			{
				Error(playerid, "Uang anda tidak cukup untuk membayar toll ($10).");
				return 1;
			}
			
			GivePlayerMoney(playerid, -10); 
			Servers(playerid, "Anda berhasil membayar toll sebesar $10.");

			// Buka Toll
			tData[idx][tStatus] = 1;
			MoveDynamicObject(tData[idx][tObjID], tData[idx][tOX], tData[idx][tOY], tData[idx][tOZ], tData[idx][tSpeed]);
			SetDynamicObjectRot(tData[idx][tObjID], tData[idx][tORX], tData[idx][tORY], tData[idx][tORZ]);

			// FIX: Tutup otomatis setelah 8 detik (8000ms)
			SetTimerEx("CloseTollAuto", 8000, false, "i", idx);
			return 1;
		}
	}
	return 0;
}

forward CloseTollAuto(idx);
public CloseTollAuto(idx)
{
	if(tData[idx][tStatus] == 1)
	{
		tData[idx][tStatus] = 0;
		MoveDynamicObject(tData[idx][tObjID], tData[idx][tCX], tData[idx][tCY], tData[idx][tCZ], tData[idx][tSpeed]);
		SetDynamicObjectRot(tData[idx][tObjID], tData[idx][tCRX], tData[idx][tCRY], tData[idx][tCRZ]);
	}
	return 1;
}

CMD:paytoll(playerid, params[])
{
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) 
		return Error(playerid, "Anda harus mengemudikan kendaraan untuk membayar toll.");

	if(!ProcessToll(playerid)) 
		return Error(playerid, "Anda tidak berada di area pintu toll.");

	return 1;
}