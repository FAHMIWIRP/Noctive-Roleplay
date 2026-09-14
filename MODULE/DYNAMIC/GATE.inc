#define MAX_GATES 100

enum E_GATE
{
	gModel,
	gPass[36],
	gAdmin,
	gVip,
	gFaction,
	gFamily,
	Float:gSpeed,
	Float:gCX,
	Float:gCY,
	Float:gCZ,
	Float:gCRX,
	Float:gCRY,
	Float:gCRZ,
	Float:gOX,
	Float:gOY,
	Float:gOZ,
	Float:gORX,
	Float:gORY,
	Float:gORZ,
	gStatus,
	gObjID,
	Text3D:gText
};

new gData[MAX_GATES][E_GATE],
	Iterator: Gates<MAX_GATES>;

new Float:gPosX[MAX_PLAYERS],
	Float:gPosY[MAX_PLAYERS],
	Float:gPosZ[MAX_PLAYERS],
	Float:gRotX[MAX_PLAYERS],
	Float:gRotY[MAX_PLAYERS],
	Float:gRotZ[MAX_PLAYERS];

CMD:creategate(playerid, params[])
{
	new object;
	if(admin_level[playerid] < 8 || !admin_logged[playerid])
		return PermissionError(playerid);

	new id = Iter_Free(Gates), str[128], query[248];
	if(id == -1) return Error(playerid, "You cant create more gate!");
	if(sscanf(params, "i", object)) return Info(playerid, "/creategate [objectid]");

	GetPlayerPos(playerid, gData[id][gCX], gData[id][gCY], gData[id][gCZ]);
	gData[id][gModel] = object;
	gData[id][gCX] = gData[id][gCX] + 2;
	gData[id][gCY] = gData[id][gCY] + 2;
	gData[id][gCRX] = 0;
	gData[id][gCRY] = 0;
	gData[id][gCRZ] = 0;
	GetPlayerPos(playerid, gData[id][gOX], gData[id][gOY], gData[id][gOZ]);
	gData[id][gOX] = gData[id][gOX] + 2;
	gData[id][gOY] = gData[id][gOY] + 2;
	gData[id][gORX] = 0;
	gData[id][gORY] = 0;
	gData[id][gORZ] = 0;
	gData[id][gStatus] = 0;
	gData[id][gFamily] = -1;
	gData[id][gFaction] = 0;
	gData[id][gAdmin] = 0;
	gData[id][gVip] = 0;
	format(gData[id][gPass], 36, "");
	gData[id][gSpeed] = 2.0;
	// Creating
	gData[id][gObjID] = CreateDynamicObject(gData[id][gModel], gData[id][gCX], gData[id][gCY], gData[id][gCZ], gData[id][gCRX], gData[id][gCRY], gData[id][gCRZ], -1, -1, -1, 50.0, 50.0);

	format(str, sizeof(str), "{FF7F00}%d \ngunakan /gate untuk buka dan tutup!", id);
	gData[id][gText] = CreateDynamic3DTextLabel(str, COLOR_WHITE, gData[id][gCX], gData[id][gCY], gData[id][gCZ], 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
	gData[id][gStatus] = 0;
	Iter_Add(Gates, id);
	// Text
	Servers(playerid, "You has create gate");

	mysql_format(mMysql, query, sizeof(query), "INSERT INTO gates SET ID='%d', model='%d', cX='%f', cY='%f', cZ='%f', cRX='%f', cRY='%f', cRZ='%f', oX='%f', oY='%f', oZ='%f', oRX='%f', oRY='%f', oRZ='%f'",
	id, gData[id][gModel], gData[id][gCX], gData[id][gCY], gData[id][gCZ], gData[id][gCRX], gData[id][gCRY], gData[id][gCRZ], gData[id][gOX], gData[id][gOY], gData[id][gOZ], gData[id][gORX], gData[id][gORY], gData[id][gORZ]);
	mysql_tquery(mMysql, query, "OnGateCreated", "i", id);
	return 1;
}

epublic: OnGateCreated(id)
{
	Gate_Save(id);
	return 1;
}

Gate_Save(id)
{
	new dquery[2048];
	mysql_format(mMysql, dquery, sizeof(dquery), "UPDATE gates SET model='%d', password='%s', admin='%d', vip='%d', faction='%d', family='%d', speed='%f', cX='%f', cY='%f', cZ='%f', cRX='%f', cRY='%f', cRZ='%f', oX='%f', oY='%f', oZ='%f', oRX='%f', oRY='%f', oRZ='%f' WHERE ID='%d'",
	gData[id][gModel], gData[id][gPass], gData[id][gAdmin], gData[id][gVip], gData[id][gFaction], gData[id][gFamily], gData[id][gSpeed], gData[id][gCX], gData[id][gCY], gData[id][gCZ], gData[id][gCRX], gData[id][gCRY], gData[id][gCRZ], gData[id][gOX], gData[id][gOY], gData[id][gOZ], gData[id][gORX], gData[id][gORY], gData[id][gORZ], id);
	mysql_tquery(mMysql, dquery);
	return 1;
}

epublic: LoadGates()
{
    new rows = cache_num_rows();
 	if(rows)
  	{
   		new id, password[36];
		for(new i; i < rows; i++)
		{
  			cache_get_value_name_int(i, "ID", id);
	    	cache_get_value_name_int(i, "model", gData[id][gModel]);
		    cache_get_value_name(i, "password", password);
			format(gData[id][gPass], 36, password);
		    cache_get_value_name_int(i, "admin", gData[id][gAdmin]);
		    cache_get_value_name_int(i, "vip", gData[id][gVip]);
		    cache_get_value_name_int(i, "faction", gData[id][gFaction]);
		    cache_get_value_name_int(i, "family", gData[id][gFamily]);
		    cache_get_value_name_float(i, "speed", gData[id][gSpeed]);
		    cache_get_value_name_float(i, "cX", gData[id][gCX]);
			cache_get_value_name_float(i, "cY", gData[id][gCY]);
			cache_get_value_name_float(i, "cZ", gData[id][gCZ]);
			cache_get_value_name_float(i, "cRX", gData[id][gCRX]);
			cache_get_value_name_float(i, "cRY", gData[id][gCRY]);
			cache_get_value_name_float(i, "cRZ", gData[id][gCRZ]);
			cache_get_value_name_float(i, "oX", gData[id][gOX]);
			cache_get_value_name_float(i, "oY", gData[id][gOY]);
			cache_get_value_name_float(i, "oZ", gData[id][gOZ]);
			cache_get_value_name_float(i, "oRX", gData[id][gORX]);
			cache_get_value_name_float(i, "oRY", gData[id][gORY]);
			cache_get_value_name_float(i, "oRZ", gData[id][gORZ]);

			Iter_Add(Gates, id);
			new str[128];
			format(str, sizeof(str), "{FF7F00}%d \ngunakan /gate untuk buka dan tutup!", id);
			gData[id][gObjID] = CreateDynamicObject(gData[id][gModel], gData[id][gCX], gData[id][gCY], gData[id][gCZ], gData[id][gCRX], gData[id][gCRY], gData[id][gCRZ], -1, -1, -1, 50.0, 50.0);

			gData[id][gText] = CreateDynamic3DTextLabel(str, COLOR_WHITE, gData[id][gCX], gData[id][gCY], gData[id][gCZ], 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0);
			gData[id][gStatus] = 0;
	    }
	    printf("[Gates] Number of Gates loaded: %d.", rows);
	}
}

CMD:gedit(playerid, params[])
{
    static
        id,
        type[24],
        string[128];

    if(admin_level[playerid] < 8 || !admin_logged[playerid])
        return PermissionError(playerid);

    if(sscanf(params, "ds[24]S()[128]", id, type, string))
    {
        Info(playerid, "/gedit [id] [name]");
        Info(playerid, "object | admin | vip | faction | family | close | open | speed | password | delete");
        return 1;
    }
    if((id < 0 || id >= MAX_GATES))
        return Error(playerid, "You have specified an invalid gate ID.");
	if(!Iter_Contains(Gates, id)) return Error(playerid, "The gate you specified ID of doesn't exist.");

	if(!strcmp(type, "object", true))
    {
		new object;

        if(sscanf(string, "d", object))
            return Info(playerid, "/gedit [id] [Object] [objectid]");

        gData[id][gModel] = object;
		DestroyDynamicObject(gData[id][gObjID]);
		//gData[id][gObjID] = CreateDynamicObject(gData[id][gModel], gData[id][gCX], gData[id][gCY], gData[id][gCZ], gData[id][gCRX], gData[id][gCRY], gData[id][gCRZ]);
		gData[id][gObjID] = CreateDynamicObject(gData[id][gModel], gData[id][gCX], gData[id][gCY], gData[id][gCZ], gData[id][gCRX], gData[id][gCRY], gData[id][gCRZ], -1, -1, -1, 50.0, 50.0);
	    Servers(playerid, "You have set gate object ID.");
	    Gate_Save(id);
	}
	else if(!strcmp(type, "admin", true))
    {
		new admin;

        if(sscanf(string, "d", admin))
            return Info(playerid, "/gedit [id] [Admin] [level]");

		if(admin < 0 || admin > 6)
			return Error(playerid, "invalid vip id 0 - 6.");

		gData[id][gAdmin] = admin;
	    Servers(playerid, "You have set gate to admin level.");
	    Gate_Save(id);
	}
	else if(!strcmp(type, "vip", true))
    {
		new vip;

        if(sscanf(string, "d", vip))
            return Info(playerid, "/gedit [id] [VIP] [level]");

        if(vip < 0 || vip > 3)
            return Error(playerid, "Invalid value. Use 0 - 3 for level.");

		gData[id][gVip] = vip;
	    Servers(playerid, "You have set gate to VIP level.");
	    Gate_Save(id);
	}
	else if(!strcmp(type, "faction", true))
    {
		new fid;

        if(sscanf(string, "d", fid))
            return Info(playerid, "/gedit [id] [faction] [faction id]");

        if(fid < 0 || fid > 22)
            return Error(playerid, "Invalid value. Use 0 - 22 for type.");

		gData[id][gFaction] = fid;
	    Servers(playerid, "You have set gate to faction.");
	    Gate_Save(id);
	}
	else if(!strcmp(type, "family", true))
    {
		new fid;

        if(sscanf(string, "d", fid))
            return Info(playerid, "/gedit [id] [family] [family id]");

        if(fid < -1 || fid > 9)
            return Error(playerid, "Invalid value. Use -1 - 9 for family id.");

		gData[id][gFamily] = fid;
	    Servers(playerid, "You have set gate to family.");
	    Gate_Save(id);
	}
	else if(!strcmp(type, "speed", true))
    {
		new Float:speed;

        if(sscanf(string, "f", speed))
            return Info(playerid, "/gedit [id] [Speed] [level]");

		gData[id][gSpeed] = speed;
	    Servers(playerid, " You have set gate moving speed.");
	    Gate_Save(id);
	}
	else if(!strcmp(type, "close", true))
    {
		PlayerInfo[playerid][gEdit] = 1;
		PlayerInfo[playerid][gEditID] = id;
		GetDynamicObjectPos(gData[id][gObjID], gPosX[playerid], gPosY[playerid], gPosZ[playerid]);
		GetDynamicObjectRot(gData[id][gObjID], gRotX[playerid], gRotY[playerid], gRotZ[playerid]);
		EditDynamicObject(playerid, gData[id][gObjID]);
	    Servers(playerid, " You are now editing gate closing position.");
	    Gate_Save(id);
	}
	else if(!strcmp(type, "open", true))
    {
		PlayerInfo[playerid][gEdit] = 2;
		PlayerInfo[playerid][gEditID] = id;
		GetDynamicObjectPos(gData[id][gObjID], gPosX[playerid], gPosY[playerid], gPosZ[playerid]);
		GetDynamicObjectRot(gData[id][gObjID], gRotX[playerid], gRotY[playerid], gRotZ[playerid]);
		EditDynamicObject(playerid, gData[id][gObjID]);
	    Servers(playerid, " You are now editing gate opening position.");
	}
	else if(!strcmp(type, "password", true))
    {
		new password[36];

        if(sscanf(string, "s[36]", password))
            return Info(playerid, "/gedit [id] [password] [gate pass] (use 'none' to disable)");

        if(!strcmp(password, "none", true)) {
            format(gData[id][gPass], 36, "");
        }
        else {
            format(gData[id][gPass], 36, password);
        }
        Gate_Save(id);
        Servers(playerid, "You has adjusted the password of gate");
	}
	else if(!strcmp(type, "delete", true))
    {
		gData[id][gModel] = 0;
		gData[id][gCX] = 0;
		gData[id][gCY] = 0;
		gData[id][gCZ] = 0;
		gData[id][gCRX] = 0;
		gData[id][gCRY] = 0;
		gData[id][gCRZ] = 0;
		gData[id][gOX] = 0;
		gData[id][gOY] = 0;
		gData[id][gOZ] = 0;
		gData[id][gORX] = 0;
		gData[id][gORY] = 0;
		gData[id][gORZ] = 0;
		gData[id][gStatus] = 0;
		format(gData[id][gPass], 36, "");
		gData[id][gSpeed] = 0;

		DestroyDynamicObject(gData[id][gObjID]);
		DestroyDynamic3DTextLabel(gData[id][gText]);

		Iter_Remove(Gates, id);
		new query[128];
		mysql_format(mMysql, query, sizeof(query), "DELETE FROM gates WHERE ID=%d", id);
		mysql_tquery(mMysql, query);
		Servers(playerid, "You has deleted gate.");
	}
	return 1;
}
CMD:gotogate(playerid, params[])
{
    new id;
	if(admin_level[playerid] < 1)
		return PermissionError(playerid);

	if(sscanf(params, "i", id)) return Info(playerid, "/gotogate [gateid]");
	if(!Iter_Contains(Gates, id)) return Error(playerid, "The gate you specified ID of doesn't exist.");

	SetPlayerPosition(playerid, gData[id][gCX], gData[id][gCY], gData[id][gCZ], 5.0);
    SetPlayerInterior(playerid, 0);
    SetPlayerVirtualWorld(playerid, 0);
	Servers(playerid, "You has teleport to gate");
	return 1;
}

CMD:gate(playerid, params[])
{
    // Dynamic Gates
    foreach(new idx : Gates)
	{
	    if(gData[idx][gModel] && IsPlayerInRangeOfPoint(playerid, 8.0, gData[idx][gCX], gData[idx][gCY], gData[idx][gCZ]))
	    {
			if(gData[idx][gFaction] > 0)
			{
				if(gData[idx][gFaction] != PlayerInfo[playerid][pMember])
					return Error(playerid, "This gate only for faction.");
			}
			if(gData[idx][gFamily] > -1)
			{
				if(gData[idx][gFamily] != PlayerInfo[playerid][pFamily])
					return Error(playerid, "This gate only for family.");
			}

			if(gData[idx][gVip] > PlayerInfo[playerid][pVip])
				return Error(playerid, "Your VIP level not enough to enter this gate.");

			if(gData[idx][gAdmin] > admin_level[playerid])
				return Error(playerid, "Your admin level not enough to enter this gate.");

	        if(strlen(gData[idx][gPass]))
	        {
	            if(sscanf(params, "s[36]", params)) return Info(playerid, "/gate [password]");
	            if(strcmp(params, gData[idx][gPass])) return Error(playerid, "Invalid gate password.");
	            if(!gData[idx][gStatus])
		        {
		            gData[idx][gStatus] = 1;
		            MoveDynamicObject(gData[idx][gObjID], gData[idx][gOX], gData[idx][gOY], gData[idx][gOZ], gData[idx][gSpeed]);
		            SetDynamicObjectRot(gData[idx][gObjID], gData[idx][gORX], gData[idx][gORY], gData[idx][gORZ]);
		        }
		        else
		        {
		            gData[idx][gStatus] = 0;
		            MoveDynamicObject(gData[idx][gObjID], gData[idx][gCX], gData[idx][gCY], gData[idx][gCZ], gData[idx][gSpeed]);
		            SetDynamicObjectRot(gData[idx][gObjID], gData[idx][gCRX], gData[idx][gCRY], gData[idx][gCRZ]);
		        }
	        }
	        else
	        {
		        if(!gData[idx][gStatus])
		        {
		            gData[idx][gStatus] = 1;
		            MoveDynamicObject(gData[idx][gObjID], gData[idx][gOX], gData[idx][gOY], gData[idx][gOZ], gData[idx][gSpeed]);
		            SetDynamicObjectRot(gData[idx][gObjID], gData[idx][gORX], gData[idx][gORY], gData[idx][gORZ]);
		        }
		        else
		        {
		            gData[idx][gStatus] = 0;
		            MoveDynamicObject(gData[idx][gObjID], gData[idx][gCX], gData[idx][gCY], gData[idx][gCZ], gData[idx][gSpeed]);
		            SetDynamicObjectRot(gData[idx][gObjID], gData[idx][gCRX], gData[idx][gCRY], gData[idx][gCRZ]);
		        }
	        }
	        return 1;
	    }
	}
	return 1;
}