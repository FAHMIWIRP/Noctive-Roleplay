#define	MAX_DOOR	100

enum ddoor
{
	dName[128],
	dPass[32],
	dIcon,
	dLocked,
	dAdmin,
	dVip,
	dFaction,
	dFamily,
	dGarage,
	dCustom,
	dExtvw,
	dExtint,
	Float:dExtposX,
	Float:dExtposY,
	Float:dExtposZ,
	Float:dExtposA,
	dIntvw,
	dIntint,
	Float:dIntposX,
	Float:dIntposY,
	Float:dIntposZ,
	Float:dIntposA,
	//NotSave
	Text3D:dLabelext,
	Text3D:dLabelint,
	dPickupext,
	dPickupint
};

new dData[MAX_DOOR][ddoor],
	Iterator: Doors<MAX_DOOR>;

Doors_Save(did)
{
	new dquery[2048];
	mysql_format(mMysql, dquery, sizeof(dquery), "UPDATE doors SET name='%s', password='%s', icon='%d', locked='%d', admin='%d', vip='%d', faction='%d', family='%d', garage='%d', custom='%d', extvw='%d', extint='%d', extposx='%f', extposy='%f', extposz='%f', extposa='%f', intvw='%d', intint='%d', intposx='%f', intposy='%f', intposz='%f', intposa='%f' WHERE ID='%d'",
	dData[did][dName], dData[did][dPass], dData[did][dIcon], dData[did][dLocked], dData[did][dAdmin], dData[did][dVip], dData[did][dFaction], dData[did][dFamily], dData[did][dGarage], dData[did][dCustom], dData[did][dExtvw], dData[did][dExtint], dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ], dData[did][dExtposA], dData[did][dIntvw], dData[did][dIntint],
	dData[did][dIntposX], dData[did][dIntposY], dData[did][dIntposZ], dData[did][dIntposA], did);
	mysql_tquery(mMysql, dquery);
	return 1;
}

epublic: LoadDoors()
{
    new rows = cache_num_rows();
 	if(rows)
  	{
   		new did, name[128], password[128];
		for(new i; i < rows; i++)
		{
  			cache_get_value_name_int(i, "ID", did);
	    	cache_get_value_name(i, "name", name);
			format(dData[did][dName], 128, name);
		    cache_get_value_name(i, "password", password);
			format(dData[did][dPass], 128, password);
		    cache_get_value_name_int(i, "icon", dData[did][dIcon]);
		    cache_get_value_name_int(i, "locked", dData[did][dLocked]);
		    cache_get_value_name_int(i, "admin", dData[did][dAdmin]);
		    cache_get_value_name_int(i, "vip", dData[did][dVip]);
		    cache_get_value_name_int(i, "faction", dData[did][dFaction]);
		    cache_get_value_name_int(i, "family", dData[did][dFamily]);
			cache_get_value_name_int(i, "garage", dData[did][dGarage]);
		    cache_get_value_name_int(i, "custom", dData[did][dCustom]);
		    cache_get_value_name_int(i, "extvw", dData[did][dExtvw]);
		    cache_get_value_name_int(i, "extint", dData[did][dExtint]);
		    cache_get_value_name_float(i, "extposx", dData[did][dExtposX]);
			cache_get_value_name_float(i, "extposy", dData[did][dExtposY]);
			cache_get_value_name_float(i, "extposz", dData[did][dExtposZ]);
			cache_get_value_name_float(i, "extposa", dData[did][dExtposA]);
			cache_get_value_name_int(i, "intvw", dData[did][dIntvw]);
			cache_get_value_name_int(i, "intint", dData[did][dIntint]);
			cache_get_value_name_float(i, "intposx", dData[did][dIntposX]);
			cache_get_value_name_float(i, "intposy", dData[did][dIntposY]);
			cache_get_value_name_float(i, "intposz", dData[did][dIntposZ]);
			cache_get_value_name_float(i, "intposa", dData[did][dIntposA]);

			Iter_Add(Doors, did);
			Doors_Updatelabel(did);
	    }
	    printf("[Doors] Number of Doors loaded: %d.", rows);
	}
}

Doors_Updatelabel(did)
{
	if(did != -1)
	{
		if(IsValidDynamic3DTextLabel(dData[did][dLabelext]))
            DestroyDynamic3DTextLabel(dData[did][dLabelext]);

        if(IsValidDynamicPickup(dData[did][dPickupext]))
            DestroyDynamicPickup(dData[did][dPickupext]);

        if(IsValidDynamic3DTextLabel(dData[did][dLabelint]))
            DestroyDynamic3DTextLabel(dData[did][dLabelint]);

        if(IsValidDynamicPickup(dData[did][dPickupint]))
            DestroyDynamicPickup(dData[did][dPickupint]);

		if(dData[did][dGarage] == 1)
		{
			new mstr[512];
			format(mstr,sizeof(mstr),"[ID: %d]\n{FFFFFF}%s\n{FFFFFF}Press {FF0000}F/ENTER {FFFFFF}to enter", did, dData[did][dName]);
			dData[did][dPickupext] = CreateDynamicPickup(19130, 23, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ], dData[did][dExtvw], dData[did][dExtint]);
			dData[did][dLabelext] = CreateDynamic3DTextLabel(mstr, COLOR_YELLOW, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ]+0.35, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, dData[did][dExtvw], dData[did][dExtint]);
		}
		else
		{
			new mstr[512];
			format(mstr,sizeof(mstr),"[ID: %d]\n{FFFFFF}%s\n{FFFFFF}Press {FF0000}F/ENTER {FFFFFF}to enter", did, dData[did][dName]);
			dData[did][dPickupext] = CreateDynamicPickup(19130, 23, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ], dData[did][dExtvw], dData[did][dExtint]);
			dData[did][dLabelext] = CreateDynamic3DTextLabel(mstr, COLOR_YELLOW, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ]+0.35, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, dData[did][dExtvw], dData[did][dExtint]);
		}

        if(dData[did][dIntposX] != 0.0 && dData[did][dIntposY] != 0.0 && dData[did][dIntposZ] != 0.0)
        {
			if(dData[did][dGarage] == 1)
			{
				new mstr[512];
				format(mstr,sizeof(mstr),"[ID: %d]\n{FFFFFF}%s\n{FFFFFF}Press {FF0000}F/ENTER {FFFFFF}to exit", did, dData[did][dName]);

				dData[did][dLabelint] = CreateDynamic3DTextLabel(mstr, COLOR_YELLOW, dData[did][dIntposX], dData[did][dIntposY], dData[did][dIntposZ]+0.7, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, dData[did][dIntvw], dData[did][dIntint]);
				dData[did][dPickupint] = CreateDynamicPickup(19130, 23, dData[did][dIntposX], dData[did][dIntposY], dData[did][dIntposZ], dData[did][dIntvw], dData[did][dIntint], -1, 7);
			}
			else
			{
				new mstr[512];
				format(mstr,sizeof(mstr),"[ID: %d]\n{FFFFFF}%s\n{FFFFFF}Press {FF0000}F/ENTER {FFFFFF}to exit", did, dData[did][dName]);

				dData[did][dLabelint] = CreateDynamic3DTextLabel(mstr, COLOR_YELLOW, dData[did][dIntposX], dData[did][dIntposY], dData[did][dIntposZ]+0.7, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, dData[did][dIntvw], dData[did][dIntint]);
				dData[did][dPickupint] = CreateDynamicPickup(19130, 23, dData[did][dIntposX], dData[did][dIntposY], dData[did][dIntposZ], dData[did][dIntvw], dData[did][dIntint], -1, 7);
			}
		}
	}
}

ColouredText(text[])
{
    new
        pos = -1,
        string[144]
    ;
    strmid(string, text, 0, 128, (sizeof(string) - 16));

    while((pos = strfind(string, "#", true, (pos + 1))) != -1)
    {
        new
            i = (pos + 1),
            hexCount
        ;
        for( ; ((string[i] != 0) && (hexCount < 6)); ++i, ++hexCount)
        {
            if(!(('a' <= string[i] <= 'f') || ('A' <= string[i] <= 'F') || ('0' <= string[i] <= '9')))
            {
                    break;
            }
        }
        if((hexCount == 6) && !(hexCount < 6))
        {
            string[pos] = '{';
            strins(string, "}", i);
        }
    }
    return string;
}

CMD:createdoor(playerid, params[])
{
	if(admin_level[playerid] < 8)
		return PermissionError(playerid);

	new did = Iter_Free(Doors), mstr[128], query[248];
	if(did == -1) return Error(playerid, "You cant create more door!");
	new name[128];
	if(sscanf(params, "s[128]", name)) return Info(playerid, "/createdoor [name]");
	format(dData[did][dName], 128, name);
	GetPlayerPos(playerid, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ]);
	GetPlayerFacingAngle(playerid, dData[did][dExtposA]);
	dData[did][dExtvw] = GetPlayerVirtualWorld(playerid);
	dData[did][dExtint] = GetPlayerInterior(playerid);
	format(dData[did][dPass], 32, "");
	dData[did][dIcon] = 19130;
	dData[did][dLocked] = 0;
	dData[did][dAdmin] = 0;
	dData[did][dVip] = 0;
	dData[did][dFaction] = 0;
	dData[did][dFamily] = -1;
	dData[did][dGarage] = 0;
	dData[did][dCustom] = 0;
	dData[did][dIntvw] = 0;
	dData[did][dIntint] = 0;
	dData[did][dIntposX] = 0;
	dData[did][dIntposY] = 0;
	dData[did][dIntposZ] = 0;
	dData[did][dIntposA] = 0;

	format(mstr,sizeof(mstr),"[ID: %d]\n{FFFFFF}%s\n{FFFFFF}Press {FF0000}ENTER {FFFFFF}to enter", did, dData[did][dName]);
	dData[did][dPickupext] = CreateDynamicPickup(19130, 23, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ], dData[did][dExtvw], dData[did][dExtint]);
	dData[did][dLabelext] = CreateDynamic3DTextLabel( mstr, COLOR_YELLOW, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ]+0.35, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, dData[did][dExtvw], dData[did][dExtint]);
    Doors_Updatelabel(did);
	Iter_Add(Doors, did);

	mysql_format(mMysql, query, sizeof(query), "INSERT INTO doors SET ID=%d, extvw=%d, extint=%d, extposx=%f, extposy=%f, extposz=%f, extposa=%f, name='%s'", did, dData[did][dExtvw], dData[did][dExtint], dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ], dData[did][dExtposA], name);
	mysql_tquery(mMysql, query, "OnDoorsCreated", "i", did);
	return 1;
}

epublic: OnDoorsCreated(did)
{
	Doors_Save(did);
	Doors_Updatelabel(did);
	return 1;
}

CMD:gotodoor(playerid, params[])
{
	new did;
	if(admin_level[playerid] < 2)
        return PermissionError(playerid);

	if(sscanf(params, "d", did))
		return Info(playerid, "/gotodoor [id]");
	if(!Iter_Contains(Doors, did)) return Error(playerid, "The doors you specified ID of doesn't exist.");
	SetPlayerPosition(playerid, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ], dData[did][dExtposA]);
    SetPlayerInterior(playerid, dData[did][dExtint]);
    SetPlayerVirtualWorld(playerid, dData[did][dExtvw]);
	PlayerInfo[playerid][pInDoor] = -1;
	PlayerInfo[playerid][pInHouse] = -1;
	PlayerInfo[playerid][pInBiz] = -1;
	Servers(playerid, "You has teleport to door");
	return 1;
}
CMD:editdoor(playerid, params[])
{
    static
        did,
        type[24],
        string[128];

    if(admin_level[playerid] < 8)
        return PermissionError(playerid);

    if(sscanf(params, "ds[24]S()[128]", did, type, string))
    {
        Info(playerid, "/editdoor [id] [name]");
        SendClientMessage(playerid, COLOR_YELLOW, "[NAMES]:{FFFFFF} location, interior, password, name, locked, admin, vip, faction, family, custom, virtual");
        return 1;
    }
    if((did < 0 || did >= MAX_DOOR))
        return Error(playerid, "You have specified an invalid entrance ID.");
	if(!Iter_Contains(Doors, did)) return Error(playerid, "The doors you specified ID of doesn't exist.");

    if(!strcmp(type, "location", true))
    {
		GetPlayerPos(playerid, dData[did][dExtposX], dData[did][dExtposY], dData[did][dExtposZ]);
		GetPlayerFacingAngle(playerid, dData[did][dExtposA]);

        dData[did][dExtvw] = GetPlayerVirtualWorld(playerid);
		dData[did][dExtint] = GetPlayerInterior(playerid);
        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has adjusted the location of entrance ID: %d.", PlayerInfo[playerid][pAname], did);
        SendAdminMessage(COLOR_RED, String);
    }
    else if(!strcmp(type, "interior", true))
    {
        GetPlayerPos(playerid, dData[did][dIntposX], dData[did][dIntposY], dData[did][dIntposZ]);
		GetPlayerFacingAngle(playerid, dData[did][dIntposA]);

        dData[did][dIntvw] = GetPlayerVirtualWorld(playerid);
		dData[did][dIntint] = GetPlayerInterior(playerid);
        Doors_Save(did);
		Doors_Updatelabel(did);

       /*foreach (new i : Player)
        {
            if(pData[i][pEntrance] == EntranceData[did][entranceID])
            {
                SetPlayerPos(i, EntranceData[did][entranceInt][0], EntranceData[did][entranceInt][1], EntranceData[did][entranceInt][2]);
                SetPlayerFacingAngle(i, EntranceData[did][entranceInt][3]);

                SetPlayerInterior(i, EntranceData[did][entranceInterior]);
                SetCameraBehindPlayer(i);
            }
        }*/
        format(String, sizeof(String), "%s has adjusted the interior spawn of entrance ID: %d.", PlayerInfo[playerid][pAname], did);
        SendAdminMessage(COLOR_RED, String);
    }
    else if(!strcmp(type, "custom", true))
    {
        new status;

        if(sscanf(string, "d", status))
            return Info(playerid, "/editdoor [id] [custom] [0/1]");

        if(status < 0 || status > 1)
            return Error(playerid, "You must specify at least 0 or 1.");

        dData[did][dCustom] = status;
        Doors_Save(did);
		Doors_Updatelabel(did);

        if(status) {
            //SendAdminMessage(COLOR_RED, "%s has enabled custom interior mode for entrance ID: %d.", pData[playerid][pAdminname], did);
        }
        else {
            //SendAdminMessage(COLOR_RED, "%s has disabled custom interior mode for entrance ID: %d.", pData[playerid][pAdminname], did);
        }
    }
    else if(!strcmp(type, "virtual", true))
    {
        new worldid;

        if(sscanf(string, "d", worldid))
            return Info(playerid, "/editdoor [id] [virtual] [interior world]");

        dData[did][dExtvw] = worldid;

        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has adjusted the virtual of entrance ID: %d to %d.", PlayerInfo[playerid][pAname], did, worldid);
        SendAdminMessage(COLOR_RED, String);
    }
    else if(!strcmp(type, "password", true))
    {
        new password[32];

        if(sscanf(string, "s[32]", password))
            return Info(playerid, "/editdoor [id] [password] [entrance pass] (use 'none' to disable)");

        if(!strcmp(password, "none", true)) {
            format(dData[did][dPass], 32, "");
        }
        else {
            format(dData[did][dPass], 32, password);
        }
        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has adjusted the password of entrance ID: %d to %s", PlayerInfo[playerid][pAname], did, password);
        SendAdminMessage(COLOR_RED, String);
    }
    else if(!strcmp(type, "locked", true))
    {
        new locked;

        if(sscanf(string, "d", locked))
            return Info(playerid, "/editdoor [id] [locked] [locked 0/1]");

        if(locked < 0 || locked > 1)
            return Error(playerid, "Invalid value. Use 0 for unlocked and 1 for locked.");

        dData[did][dLocked] = locked;
        Doors_Save(did);
		Doors_Updatelabel(did);

        if(locked) {
            //SendAdminMessage(COLOR_RED, "%s has locked entrance ID: %d.", pData[playerid][pAdminname], did);
        } else {
            //SendAdminMessage(COLOR_RED, "%s has unlocked entrance ID: %d.", pData[playerid][pAdminname], did);
        }
    }
    else if(!strcmp(type, "name", true))
    {
        new name[128];

        if(sscanf(string, "s[128]", name))
            return Info(playerid, "/editdoor [id] [name] [new name]");

        format(dData[did][dName], 128, ColouredText(name));

        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has adjusted the name of entrance ID: %d to \"%s\".", PlayerInfo[playerid][pAname], did, ColouredText(name));
        SendAdminMessage(COLOR_RED, String);
    }
	else if(!strcmp(type, "admin", true))
    {
        new level;

        if(sscanf(string, "d", level))
            return Info(playerid, "/editdoor [id] [admin] [level]");

        if(level < 0 || level > 5)
            return Error(playerid, "Invalid value. Use 0 - 5 for level.");

        dData[did][dAdmin] = level;
        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has set entrance ID: %d to admin level %d.", PlayerInfo[playerid][pAname], did, level);
        SendAdminMessage(COLOR_RED, String);
    }
	else if(!strcmp(type, "vip", true))
    {
        new level;

        if(sscanf(string, "d", level))
            return Info(playerid, "/editdoor [id] [VIP] [level]");

        if(level < 0 || level > 3)
            return Error(playerid, "Invalid value. Use 0 - 3 for level.");

        dData[did][dVip] = level;
        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has set entrance ID: %d to VIP level %d.", PlayerInfo[playerid][pAname], did, level);
        SendAdminMessage(COLOR_RED, String);
    }
	else if(!strcmp(type, "faction", true))
    {
        new fid;

        if(sscanf(string, "d", fid))
            return Info(playerid, "/editdoor [id] [faction] [faction id]");

        if(fid < 0 || fid > 25)
            return Error(playerid, "Invalid value. Use 0 - 4 for type.");

        dData[did][dFaction] = fid;
        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has set entrance ID: %d to faction id %d.", PlayerInfo[playerid][pAname], did, fid);
        SendAdminMessage(COLOR_RED, String);
    }
	else if(!strcmp(type, "family", true))
    {
        new fid;

        if(sscanf(string, "d", fid))
            return Info(playerid, "/editdoor [id] [family] [family id]");

        if(fid < -1 || fid > 9)
            return Error(playerid, "Invalid value. Use -1 - 9 for family id.");

        dData[did][dFamily] = fid;
        Doors_Save(did);
		Doors_Updatelabel(did);
		format(String, sizeof(String), "%s has set entrance ID: %d to family id %d.", PlayerInfo[playerid][pAname], did, fid);
        SendAdminMessage(COLOR_RED, String);
    }
	else if(!strcmp(type, "garage", true))
	{
		new gid;

        if(sscanf(string, "d", gid))
            return Info(playerid, "/editdoor [id] [garage] [0 - 1]");

        if(gid < 0 || gid > 1)
            return Error(playerid, "Invalid value! Use 0 to disable, 1 to enable.");

		if(gid == 0)
		{
			dData[did][dGarage] = 0;
			format(String, sizeof(String), "%s has set entrance ID: %d to garage vehicle disable.", PlayerInfo[playerid][pAname], did);
			SendAdminMessage(COLOR_RED, String);
		}
		else
		{
			dData[did][dGarage] = 1;
			format(String, sizeof(String), "%s has set entrance ID: %d to garage vehicle enable.",PlayerInfo[playerid][pAname], did);
			SendAdminMessage(COLOR_RED, String);
		}
		Doors_Save(gid);
		Doors_Updatelabel(gid);
	}
	else if(!strcmp(type, "delete", true))
    {
		DestroyDynamic3DTextLabel(dData[did][dLabelext]);
		DestroyDynamicPickup(dData[did][dPickupext]);
		DestroyDynamic3DTextLabel(dData[did][dLabelint]);
		DestroyDynamicPickup(dData[did][dPickupint]);

		dData[did][dExtposX] = 0;
		dData[did][dExtposY] = 0;
		dData[did][dExtposZ] = 0;
		dData[did][dExtposA] = 0;
		dData[did][dExtvw] = 0;
		dData[did][dExtint] = 0;
		format(dData[did][dPass], 32, "");
		dData[did][dIcon] = 0;
		dData[did][dLocked] = 0;
		dData[did][dAdmin] = 0;
		dData[did][dVip] = 0;
		dData[did][dFaction] = 0;
		dData[did][dFamily] = -1;
		dData[did][dGarage] = 0;
		dData[did][dCustom] = 0;
		dData[did][dIntvw] = 0;
		dData[did][dIntint] = 0;
		dData[did][dIntposX] = 0;
		dData[did][dIntposY] = 0;
		dData[did][dIntposZ] = 0;
		dData[did][dIntposA] = 0;

		dData[did][dLabelext] = Text3D: INVALID_3DTEXT_ID;
		dData[did][dLabelint] = Text3D: INVALID_3DTEXT_ID;
		dData[did][dPickupext] = -1;
		dData[did][dPickupint] = -1;

		Iter_Remove(Doors, did);
		new query[128];
		mysql_format(mMysql, query, sizeof(query), "DELETE FROM doors WHERE ID=%d", did);
		mysql_tquery(mMysql, query);
		format(String, sizeof(String), "%s has delete door ID: %d.", PlayerInfo[playerid][pAname], did);
        SendAdminMessage(COLOR_RED, String);
	}
    return 1;
}