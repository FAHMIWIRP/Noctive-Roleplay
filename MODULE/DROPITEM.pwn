#define MAX_DROPPED_ITEMS 1000
enum droppedItems
{
	droppedID,
	droppedItem[32],
	droppedPlayer[24],
	droppedModel,
	droppedQuantity,
	Float:droppedPos[3],
	droppedWeapon,
	droppedAmmo,
	droppedInt,
	droppedWorld,
	droppedObject,
	Text3D:droppedText3D
};

new DroppedItems[MAX_DROPPED_ITEMS][droppedItems],
	Iterator:DROPPED<MAX_DROPPED_ITEMS>;

epublic: Dropped_Load()
{
	new rows;
	cache_get_row_count(rows);
 	if(rows)
  	{
  		new id, i = 0;
    	while(i < rows)
		{
		    cache_get_value_name_int(i, "ID", id);
			cache_get_value_name(i, "itemName", DroppedItems[id][droppedItem]);
			cache_get_value_name_int(i, "itemModel", DroppedItems[id][droppedModel]);
			cache_get_value_name_int(i, "itemQuantity", DroppedItems[id][droppedQuantity]);
			cache_get_value_name_float(i, "itemX", DroppedItems[id][droppedPos][0]);
			cache_get_value_name_float(i, "itemY", DroppedItems[id][droppedPos][1]);
			cache_get_value_name_float(i, "itemZ", DroppedItems[id][droppedPos][2]);
			cache_get_value_name_int(i, "itemInt", DroppedItems[id][droppedInt]);
			cache_get_value_name_int(i, "itemWorld", DroppedItems[id][droppedWorld]);
			DroppedItems[id][droppedObject] = CreateDynamicObject(DroppedItems[id][droppedModel], DroppedItems[id][droppedPos][0], DroppedItems[id][droppedPos][1], DroppedItems[id][droppedPos][2], 0.0, 0.0, 0.0, DroppedItems[id][droppedWorld], DroppedItems[id][droppedInt]);
			DroppedItems[id][droppedText3D] = CreateDynamic3DTextLabel(DroppedItems[id][droppedItem], COLOR_LIGHTGREEN, DroppedItems[id][droppedPos][0], DroppedItems[id][droppedPos][1], DroppedItems[id][droppedPos][2], 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, DroppedItems[id][droppedWorld], DroppedItems[id][droppedInt]);
			Iter_Add(DROPPED, id);
			i++;
		}
		printf("[DROPITEM] Loaded: %d Dropped Items", i);
	}
}
Dropped_Save(id)
{
	new cQuery[512];
	format(cQuery, sizeof(cQuery), "UPDATE dropped SET itemName='%s', itemModel='%d', itemQuantity='%d', itemX='%f', itemY='%f', itemZ='%f', itemInt='%d', itemWorld='%d' WHERE ID='%d'",
	DroppedItems[id][droppedItem],
	DroppedItems[id][droppedModel],
	DroppedItems[id][droppedQuantity],
	DroppedItems[id][droppedPos][0],
	DroppedItems[id][droppedPos][1],
	DroppedItems[id][droppedPos][2],
	DroppedItems[id][droppedInt],
	DroppedItems[id][droppedWorld],
	id
	);
	return mysql_tquery(mMysql, cQuery);
}
epublic: DropItem(name[], itemid, value, Float:x, Float:y, Float:z, interior, world)
{
	new
	    query[512];

	new id = Iter_Free(DROPPED);

    format(DroppedItems[id][droppedItem], 32, name);

	DroppedItems[id][droppedModel] = itemid;
	DroppedItems[id][droppedPos][0] = x;
	DroppedItems[id][droppedPos][1] = y;
	DroppedItems[id][droppedPos][2] = z;
	DroppedItems[id][droppedQuantity] = value;
	DroppedItems[id][droppedInt] = interior;
	DroppedItems[id][droppedWorld] = world;
	printf("DropItem: %d", value);

	DroppedItems[id][droppedObject] = CreateDynamicObject(itemid, x, y, z, 0.0, 0.0, 0.0, world, interior);

	DroppedItems[id][droppedText3D] = CreateDynamic3DTextLabel(name, COLOR_LIGHTGREEN, x, y, z, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, world, interior);

	Iter_Add(DROPPED, id);
	mysql_format(mMysql, query, sizeof(query), "INSERT INTO dropped SET ID='%d', itemName='%s', itemModel='%d', itemQuantity='%d', itemX='%.4f', itemY='%.4f', itemZ='%.4f', itemInt='%d', itemWorld='%d'", id, name, itemid, value, x, y, z, interior, world);
	mysql_tquery(mMysql, query, "OnDroppedItem", "d", id);
	return 1;
}
epublic: OnDroppedItem(id)
{
	Dropped_Save(id);
	return 1;
}
epublic: DropPlayerItem(playerid, itemid, name[], value)
{
    new str[500], Float:x, Float:y, Float:z, Float:angle;

	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, angle);

	if(!strcmp(name, "Uang", true))
	{
		if(PlayerInfo[playerid][pCash] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 1212;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Uang", str, 1212, 3);
		GivePlayerMoneyEx(playerid, -value, "uang");
		OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Ponsel", true))
	{
		if(PlayerInfo[playerid][pProducts][0] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 18867;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Ponsel", str, 18867, 3);
		PlayerInfo[playerid][pProducts][0] -= value;
		format(str, sizeof(str), "UPDATE `accounts` SET `pProducts` = '%i,%i,%i' WHERE `pID` = %i",
        PlayerInfo[playerid][pProducts][0], PlayerInfo[playerid][pProducts][1], PlayerInfo[playerid][pProducts][2], GetPlayerAccountID(playerid));

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Radio", true))
	{
		if(PlayerInfo[playerid][pRadio] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 19513;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Radio", str, 19513, 3);
		PlayerInfo[playerid][pRadio] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pRadio", PlayerInfo[playerid][pRadio]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Boombox", true))
	{
		if(PlayerInfo[playerid][pBoombox] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 2226;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Boombox", str, 2226, 3);
		PlayerInfo[playerid][pBoombox] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pBoombox", PlayerInfo[playerid][pBoombox]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Snack", true))
	{
		if(PlayerInfo[playerid][pSnack] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 2821;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Snack", str, 2821, 3);
		PlayerInfo[playerid][pSnack] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pSnack", PlayerInfo[playerid][pSnack]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Sprunk", true))
	{
		if(PlayerInfo[playerid][pSprunk] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 2958;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Sprunk", str, 2958, 3);
		PlayerInfo[playerid][pSprunk] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pSprunk", PlayerInfo[playerid][pSprunk]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Perban", true))
	{
		if(PlayerInfo[playerid][pHeals] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 11738;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Perban", str, 11738, 3);
		PlayerInfo[playerid][pHeals] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pHeals", PlayerInfo[playerid][pHeals]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Drugs", true))
	{
		if(PlayerInfo[playerid][pDrugs] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 1580;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Drugs", str, 1580, 3);
		PlayerInfo[playerid][pDrugs] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pDrugs", PlayerInfo[playerid][pDrugs]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Rokok", true))
	{
		if(PlayerInfo[playerid][pRokok] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 19625;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Rokok", str, 19625, 3);
		PlayerInfo[playerid][pRokok] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pRokok", PlayerInfo[playerid][pRokok]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Component", true))
	{
		if(PlayerInfo[playerid][pComponent] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 3096;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Component", str, 3096, 3);
		PlayerInfo[playerid][pComponent] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pComponent", PlayerInfo[playerid][pComponent]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Masker", true))
	{
		if(PlayerInfo[playerid][pMask] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 19036;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Masker", str, 19036, 3);
		PlayerInfo[playerid][pMask] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pMask", PlayerInfo[playerid][pMask]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	else if(!strcmp(name, "Repairkit", true))
	{
		if(PlayerInfo[playerid][pRepairKit] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		itemid = 19627;
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Repairkit", str, 19627, 3);
		PlayerInfo[playerid][pRepairKit] -= value;
		OnPlayerUpdateAccountsPer(playerid, "pRepairKit", PlayerInfo[playerid][pRepairKit]);

        printf("Itemid: %d, Name: %s, value: %d", itemid, name, value);

	    DropItem(name, itemid, value, x, y, z - 0.9, GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid));

        Inventory_Close(playerid);
	    ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
 	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s has dropped a %s.", Name(playerid), name);
	}
	return 1;
}
epublic: TakePlayerItem(playerid, id, name[])
{
	new str[1000], query[1000];
	DestroyDynamicObject(DroppedItems[id][droppedObject]);
	DestroyDynamic3DTextLabel(DroppedItems[id][droppedText3D]);
	DroppedItems[id][droppedObject] = -1;
	DroppedItems[id][droppedText3D] = Text3D: -1;
	Iter_Remove(DROPPED, id);

	if(!strcmp(name, "Uang", true))
	{
		GivePlayerMoneyEx(playerid, DroppedItems[id][droppedQuantity], "uang");
		OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Ponsel", true))
	{
		if(PlayerInfo[playerid][pProducts][0] >= 1) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki ponsel");
		PlayerInfo[playerid][pProducts][0] += DroppedItems[id][droppedQuantity];
		format(str, sizeof(str), "UPDATE `accounts` SET `pProducts` = '%i,%i,%i' WHERE `pID` = %i",
        PlayerInfo[playerid][pProducts][0], PlayerInfo[playerid][pProducts][1], PlayerInfo[playerid][pProducts][2], GetPlayerAccountID(playerid));

        if(PlayerInfo[playerid][pNumber] == 0)
        {
            player_sim_number[playerid] = RandomEx(111111, 999999);
            format(MySQLStr, 96, "SELECT * FROM `accounts` WHERE `pNumber` = %d", player_sim_number[playerid]);
 	        mysql_tquery(mMysql, MySQLStr, "OnMySQL_Query","iis", playerid, 5, player_sim_number[playerid]);
		}

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Radio", true))
	{
		if(PlayerInfo[playerid][pRadio] >= 1) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki radio");
		PlayerInfo[playerid][pRadio] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pRadio", PlayerInfo[playerid][pRadio]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Boombox", true))
	{
		if(PlayerInfo[playerid][pBoombox] >= 1) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki boombox");
		PlayerInfo[playerid][pBoombox] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pBoombox", PlayerInfo[playerid][pBoombox]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Snack", true))
	{
        if(PlayerInfo[playerid][pSnack] >= 5) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki 5 snack");
		PlayerInfo[playerid][pSnack] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pSnack", PlayerInfo[playerid][pSnack]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Sprunk", true))
	{
        if(PlayerInfo[playerid][pSprunk] >= 5) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki 5 sprunk");
		PlayerInfo[playerid][pSprunk] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pSprunk", PlayerInfo[playerid][pSprunk]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Perban", true))
	{
        if(PlayerInfo[playerid][pHeals] >= 3) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki 3 perban");
		PlayerInfo[playerid][pHeals] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pHeals", PlayerInfo[playerid][pHeals]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Drugs", true))
	{
        if(PlayerInfo[playerid][pDrugs] >= 100) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki 100gr drugs");
		PlayerInfo[playerid][pDrugs] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pDrugs", PlayerInfo[playerid][pDrugs]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Rokok", true))
	{
        if(PlayerInfo[playerid][pRokok] >= 3) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki 3 rokok");
		PlayerInfo[playerid][pRokok] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pRokok", PlayerInfo[playerid][pRokok]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Component", true))
	{
		PlayerInfo[playerid][pComponent] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pComponent", PlayerInfo[playerid][pComponent]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Masker", true))
	{
        if(PlayerInfo[playerid][pMask] >= 2) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki 2 masker");
		PlayerInfo[playerid][pMask] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pMask", PlayerInfo[playerid][pMask]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	else if(!strcmp(name, "Repairkit", true))
	{
        if(PlayerInfo[playerid][pRepairKit] >= 3) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda sudah memiliki 3 repairkit");
		PlayerInfo[playerid][pRepairKit] += DroppedItems[id][droppedQuantity];
		OnPlayerUpdateAccountsPer(playerid, "pRepairKit", PlayerInfo[playerid][pRepairKit]);

	    mysql_format(mMysql, query, sizeof(query), "DELETE FROM dropped WHERE id= %d", id);
	    mysql_tquery(mMysql, query);

	    format(str, sizeof(str), "Received_%dx", DroppedItems[id][droppedQuantity]);
	    ShowItemBox(playerid, DroppedItems[id][droppedItem], str, DroppedItems[id][droppedModel], 3);
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s had taken a %s.", Name(playerid), name);
	    ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
	}
	return 1;
}
NearItemDropped(playerid, targetid, Float:radius)
{
    return (IsPlayerInRangeOfPoint(playerid, radius, DroppedItems[targetid][droppedPos][0], DroppedItems[targetid][droppedPos][1], DroppedItems[targetid][droppedPos][2]));
}

CMD:takedrop(playerid)
{
	new count = 0, str[500], strr[500];
	foreach(new i : DROPPED) if(NearItemDropped(playerid, i, 2))
	{
		format(str, sizeof(str), "%d. %s\tAmount: %d\n", i, DroppedItems[i][droppedItem], DroppedItems[i][droppedQuantity]);
		strcat(strr, str);
		SetPlayerListitemValue(playerid, count++, i);
	}
	if(!count) SCM(playerid, COLOR_RED, "ERROR: "W"Tidak ada item yang terbuang di dekat anda");
	else ShowPlayerDialog(playerid, DIALOG_TAKE, DIALOG_STYLE_LIST, ""GREEN"JatiPride "W"- Item Drop", strr, "Ambil", "Tutup");
}
