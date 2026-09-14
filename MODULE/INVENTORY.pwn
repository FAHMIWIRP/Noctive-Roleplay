#define MAX_INVENTORY 20
new PlayerText:INVNAME[MAX_PLAYERS][6];
new PlayerText:INVINFO[MAX_PLAYERS][11];
new PlayerText:NAMETD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:INDEXTD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:MODELTD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:AMOUNTTD[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:GARISBAWAH[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:NOTIFBOX[MAX_PLAYERS][5];
new BukaBackPack[MAX_PLAYERS];

enum inventoryData
{
	invExists,
	invItem[32 char],
	invModel,
	invAmount,
	invTotalQuantity
};
new InventoryData[MAX_PLAYERS][MAX_INVENTORY][inventoryData];

enum e_InventoryItems
{
	e_InventoryItem[32], //Nama item
	e_InventoryModel, //Object item
	e_InventoryTotal
};
new const g_aInventoryItems[][e_InventoryItems] =
{
    {"BackPack", 2919, 2},
	{"Uang", 1212, 5},
	{"Ponsel", 18867, 1},
	{"Radio", 19513, 1},
	{"Boombox", 2226, 1},
	{"Snack", 2821, 5},
	{"Sprunk", 2958, 5},
	{"Perban", 11738, 3},
	{"Drugs", 1580, 5},
	{"Rokok", 19625, 3},
	{"Component", 3096, 5},
	{"Masker", 19036, 2},
	{"Repairkit", 19921, 3},
	{"Ktp", 1581, 1},
	{"Jerigen", 1650, 2},
	{"Kecubung", 19473, 2},
	{"Air_Putih", 19570, 1},
	{"Jus_Apel", 19564, 3},
	{"Teh", 19835, 3},
	{"Nasi_Goreng", 19811, 3},
	{"Ikan_Bakar", 19882, 3},
	{"Pizza", 19571, 3},
	{"Sapi_Bakar", 19567, 3},
	{"Rusa_Bakar", 19568, 3},
	{"Daging_Sapi", 2804, 2},
	{"Daging_Rusa", 2804, 2},
    {"Gandum", 2901, 3},
    {"Apel", 19576, 2},
	{"Garam", 2060, 2},
	{"Ikan", 19630, 2},
	{"Joran", 18632, 2},
	{"Umpan", 19566, 2},
	{"Batu", 3929, 3},
	{"Ore", 2936, 2},
	{"Sampah", 1265, 1}

};

epublic: OpenBackPack(playerid)
{
    PlayerInfo[playerid][pCash] += 5000;
    OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);
    PlayerInfo[playerid][pSnack] += 5;
    OnPlayerUpdateAccountsPer(playerid, "pSnack", PlayerInfo[playerid][pSnack]);
    PlayerInfo[playerid][pSprunk] += 5;
    OnPlayerUpdateAccountsPer(playerid, "pSprunk", PlayerInfo[playerid][pSprunk]);
    PlayerInfo[playerid][pStaterpack] = 0;
    OnPlayerUpdateAccountsPer(playerid, "pStaterpack", PlayerInfo[playerid][pStaterpack]);
    ShowItemBox(playerid, "Uang", "Received_5000x", 1212, 3);
    ShowItemBox(playerid, "Snack", "Received_5x", 2821, 3);
    ShowItemBox(playerid, "Sprunk", "Received_5x", 2958, 3);
    ClearAnim(playerid), Inventory_Close(playerid), BukaBackPack[playerid] = 0;
    SCM(playerid, COLOR_SERVER, "SERVER: "W"Anda Diberi Kompensasi 5 Snack, 5 Sprunk, $5000");
    return 1;
}

stock Inventory_Clear(playerid)
{
	static
	    string[64];

	for(new i = 0; i < MAX_INVENTORY; i++)
	{
	    if (InventoryData[playerid][i][invExists])
	    {
	        InventoryData[playerid][i][invExists] = 0;
	        InventoryData[playerid][i][invModel] = 0;
			InventoryData[playerid][i][invAmount] = 0;
		}
	}
	return 1;
}
stock Inventory_GetItemID(playerid, item[])
{
	for(new i = 0; i < MAX_INVENTORY; i++)
	{
	    if (!InventoryData[playerid][i][invExists])
	        continue;

		if (!strcmp(InventoryData[playerid][i][invItem], item)) return i;
	}
	return -1;
}
stock Inventory_GetFreeID(playerid)
{
	if (Inventory_Items(playerid) >= 20)
		return -1;

	for(new i = 0; i < MAX_INVENTORY; i++)
	{
	    if (!InventoryData[playerid][i][invExists])
	        return i;
	}
	return -1;
}
stock Inventory_Items(playerid)
{
    new count;

    for(new i = 0; i < MAX_INVENTORY; i++) if (InventoryData[playerid][i][invExists]) {
        count++;
	}
	return count;
}
stock Inventory_Count(playerid, item[])
{
	new itemid = Inventory_GetItemID(playerid, item);

	if (itemid != -1)
	    return InventoryData[playerid][itemid][invAmount];

	return 0;
}
stock PlayerHasItem(playerid, item[])
{
	return (Inventory_GetItemID(playerid, item) != -1);
}
stock Inventory_Set(playerid, item[], model, amount, totalquantity)
{
	new itemid = Inventory_GetItemID(playerid, item);

	if (itemid == -1 && amount > 0)
		Inventory_Addset(playerid, item, model, amount, totalquantity);

	else if (amount > 0 && itemid != -1)
	    Inventory_SetQuantity(playerid, item, amount, totalquantity);

	else if (amount < 1 && itemid != -1)
	    Inventory_Remove(playerid, item, -1);

	return 1;
}
stock Inventory_SetQuantity(playerid, item[], quantity, totalquantity)
{
	new
	    itemid = Inventory_GetItemID(playerid, item);

	if (itemid != -1)
	{
	    InventoryData[playerid][itemid][invAmount] = quantity;
	    InventoryData[playerid][itemid][invTotalQuantity] = totalquantity;
	}
	return 1;
}
stock Inventory_Remove(playerid, item[], quantity = 1)
{
	new
		itemid = Inventory_GetItemID(playerid, item);

	if (itemid != -1)
	{
	    for (new i = 0; i < sizeof(g_aInventoryItems); i ++) if (!strcmp(g_aInventoryItems[i][e_InventoryItem], item, true))
		{
		    new totalquantity = g_aInventoryItems[i][e_InventoryTotal];
		    if (InventoryData[playerid][itemid][invAmount] > 0 && InventoryData[playerid][itemid][invTotalQuantity] > 0)
		    {
		        InventoryData[playerid][itemid][invAmount] -= quantity;
		        InventoryData[playerid][itemid][invTotalQuantity] -= totalquantity;
			}
			if (quantity == -1 || InventoryData[playerid][itemid][invTotalQuantity] < 1 || totalquantity == -1 || InventoryData[playerid][itemid][invAmount] < 1)
			{
			    InventoryData[playerid][itemid][invExists] = false;
			    InventoryData[playerid][itemid][invModel] = 0;
			    InventoryData[playerid][itemid][invAmount] = 0;
			    InventoryData[playerid][itemid][invTotalQuantity] = 0;
			}
			else if (quantity != -1 && InventoryData[playerid][itemid][invAmount] > 0 && totalquantity != -1 && InventoryData[playerid][itemid][invTotalQuantity] > 0)
			{
			    InventoryData[playerid][itemid][invAmount] = quantity;
			    InventoryData[playerid][itemid][invTotalQuantity] = totalquantity;
			}
		}
		return 1;
	}
	return 0;
}
stock Inventory_Addset(playerid, item[], model, amount = 1, totalquantity)
{
	new itemid = Inventory_GetItemID(playerid, item);
	if (itemid == -1)
	{
	    itemid = Inventory_GetFreeID(playerid);
	    if (itemid != -1)
	    {
	   		InventoryData[playerid][itemid][invExists] = true;
		    InventoryData[playerid][itemid][invModel] = model;
			InventoryData[playerid][itemid][invAmount] = amount;
			InventoryData[playerid][itemid][invTotalQuantity] = totalquantity;

		    strpack(InventoryData[playerid][itemid][invItem], item, 32 char);
		    return itemid;
		}
		return -1;
	}
	else
	{
		InventoryData[playerid][itemid][invAmount] += amount;
		InventoryData[playerid][itemid][invTotalQuantity] += totalquantity;
	}
	return itemid;
}
stock Inventory_Add(playerid, item[], model, quantity = 1)
{
	new
		itemid = Inventory_GetItemID(playerid, item);

	if (itemid == -1)
	{
	    itemid = Inventory_GetFreeID(playerid);

	    if (itemid != -1)
	    {
         	for (new i = 0; i < sizeof(g_aInventoryItems); i ++) if (!strcmp(g_aInventoryItems[i][e_InventoryItem], item, true))
			{
			    new totalquantity = g_aInventoryItems[i][e_InventoryTotal];
     	 	  	InventoryData[playerid][itemid][invExists] = true;
		        InventoryData[playerid][itemid][invModel] = model;
				InventoryData[playerid][itemid][invAmount] = model;
				InventoryData[playerid][itemid][invTotalQuantity] = totalquantity;
		        return itemid;
			}
		}
		return -1;
	}
	return itemid;
}
stock Inventory_Close(playerid)
{
	if(BukaInventory[playerid] == 0)
		return SCM(playerid, COLOR_RED, "ERROR: "W"Anda Belum Membuka Inventory!");

	CancelSelectTextDraw(playerid);
	BukaInventory[playerid] = 0;
	Menggeledah[playerid] = 0;
	SelectItem[playerid] = -1;
	AmountItem[playerid] = 0;
	BukaBackPack[playerid] = 0;
	for(new a = 0; a < 6; a++)
	{
		PlayerTextDrawHide(playerid, INVNAME[playerid][a]);
	}
	for(new a = 0; a < 11; a++)
	{
		PlayerTextDrawHide(playerid, INVINFO[playerid][a]);
	}
	PlayerTextDrawSetString(playerid, INVINFO[playerid][6], "Jumlah");
	for(new i = 0; i < MAX_INVENTORY; i++)
	{
		PlayerTextDrawHide(playerid, NAMETD[playerid][i]);
		PlayerTextDrawHide(playerid, INDEXTD[playerid][i]);
		PlayerTextDrawColor(playerid, INDEXTD[playerid][i], hud_transparant);
		PlayerTextDrawHide(playerid, MODELTD[playerid][i]);
		PlayerTextDrawHide(playerid, AMOUNTTD[playerid][i]);
		PlayerTextDrawHide(playerid, GARISBAWAH[playerid][i]);
	}
	return 1;
}
stock Inventory_Show(playerid)
{
	new str[256], string[256], totalall, quantitybar;
	format(str,1000,"%s", GetPName(playerid));
	PlayerTextDrawSetString(playerid, INVNAME[playerid][3], str);
	BarangMasuk(playerid);
	BukaInventory[playerid] = 1;
	BukaBackPack[playerid] = 0;
	PlayerPlaySound(playerid, 1039, 0,0,0);
	SelectTextDraw(playerid, hud_green_transparant);
	for(new a = 1; a < 6; a++)
	{
		PlayerTextDrawShow(playerid, INVNAME[playerid][a]);
	}
	for(new a = 1; a < 11; a++)
	{
		PlayerTextDrawShow(playerid, INVINFO[playerid][a]);
	}
	for(new i = 0; i < MAX_INVENTORY; i++)
	{
	    PlayerTextDrawShow(playerid, INDEXTD[playerid][i]);
		PlayerTextDrawShow(playerid, AMOUNTTD[playerid][i]);
		totalall += InventoryData[playerid][i][invTotalQuantity];
		format(str, sizeof(str), "%.1f/850.0", float(totalall));
		PlayerTextDrawSetString(playerid, INVNAME[playerid][4], str);
		quantitybar = totalall * 199/850;
	  	PlayerTextDrawTextSize(playerid, INVNAME[playerid][2], quantitybar, 3.0);
	  	PlayerTextDrawShow(playerid, INVNAME[playerid][2]);
		if(InventoryData[playerid][i][invExists])
		{
			PlayerTextDrawShow(playerid, NAMETD[playerid][i]);
			PlayerTextDrawShow(playerid, GARISBAWAH[playerid][i]);
			PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][i], InventoryData[playerid][i][invModel]);
			//sesuakian dengan object item kalian
			if(InventoryData[playerid][i][invModel] == 18867)
			{
				PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][i], -254.000000, 0.000000, 0.000000, 2.779998);
			}
			else if(InventoryData[playerid][i][invModel] == 16776)
			{
				PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][i], 0.000000, 0.000000, -85.000000, 1.000000);
			}
			else if(InventoryData[playerid][i][invModel] == 1581)
			{
				PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][i], 0.000000, 0.000000, -180.000000, 1.000000);
			}
			PlayerTextDrawShow(playerid, MODELTD[playerid][i]);
			strunpack(string, InventoryData[playerid][i][invItem]);
			format(str, sizeof(str), "%s", string);
			PlayerTextDrawSetString(playerid, NAMETD[playerid][i], str);
			format(str, sizeof(str), "%dx", InventoryData[playerid][i][invAmount]);
			PlayerTextDrawSetString(playerid, AMOUNTTD[playerid][i], str);
		}
		else
		{
			PlayerTextDrawHide(playerid, AMOUNTTD[playerid][i]);
		}
	}
	SetPlayerChatBubble(playerid, "Membuka inventory",COLOR_PURPLE,30.0,5000);
	return 1;
}
function OnPlayerGiveInvItem(playerid, userid, itemid, name[], value)
{
	new str[500];
	if(!strcmp(name, "Uang", true))
	{
		if(PlayerInfo[playerid][pCash] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");
		
		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Uang", str, 1212, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Uang", str, 1212, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s $%s Kepada %s.", Name(playerid), name, FormatMoney(value), Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s $%s Dari %s.", Name(userid), name, FormatMoney(value), Name(playerid));
	    
        GivePlayerMoneyEx(playerid, -value, "Memberikan uang kepada pemain");
        GivePlayerMoneyEx(userid, value, "Menerima uang dari pemain");

        OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);
        OnPlayerUpdateAccountsPer(userid, "pCash", PlayerInfo[userid][pCash]);
	}
	else if(!strcmp(name, "Snack", true))
	{
        if(PlayerInfo[playerid][pSnack] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		if(PlayerInfo[userid][pSnack] >= 5) return SCM(playerid, COLOR_RED, "ERROR: "W"Orang Yang Anda Beri Sudah Memiliki 5 Snack");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Snack", str, 2821, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Snack", str, 2821, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    
	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));
	    
        PlayerInfo[playerid][pSnack] -= value;
        PlayerInfo[userid][pSnack] += value;

        OnPlayerUpdateAccountsPer(playerid, "pSnack", PlayerInfo[playerid][pSnack]);
        OnPlayerUpdateAccountsPer(userid, "pSnack", PlayerInfo[userid][pSnack]);
	}
	else if(!strcmp(name, "Sprunk", true))
	{
        if(PlayerInfo[playerid][pSprunk] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		if(PlayerInfo[userid][pSprunk] >= 5) return SCM(playerid, COLOR_RED, "ERROR: "W"Orang Yang Anda Beri Sudah Memiliki 5 Sprunk");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Sprunk", str, 2958, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Sprunk", str, 2958, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);

	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));

        PlayerInfo[playerid][pSprunk] -= value;
        PlayerInfo[userid][pSprunk] += value;

        OnPlayerUpdateAccountsPer(playerid, "pSprunk", PlayerInfo[playerid][pSprunk]);
        OnPlayerUpdateAccountsPer(userid, "pSprunk", PlayerInfo[userid][pSprunk]);
	}
	else if(!strcmp(name, "Perban", true))
	{
        if(PlayerInfo[playerid][pHeals] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		if(PlayerInfo[userid][pHeals] >= 3) return SCM(playerid, COLOR_RED, "ERROR: "W"Orang Yang Anda Beri Sudah Memiliki 3 Perban");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Perban", str, 11738, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Perban", str, 11738, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);

	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));

        PlayerInfo[playerid][pHeals] -= value;
        PlayerInfo[userid][pHeals] += value;

        OnPlayerUpdateAccountsPer(playerid, "pHeals", PlayerInfo[playerid][pHeals]);
        OnPlayerUpdateAccountsPer(userid, "pHeals", PlayerInfo[userid][pHeals]);
	}
	else if(!strcmp(name, "Drugs", true))
	{
        if(PlayerInfo[playerid][pDrugs] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

        if(PlayerInfo[userid][pDrugs] >= 100) return SCM(playerid, COLOR_RED, "ERROR: "W"Orang Yang Anda Beri Sudah Memiliki 100Gr Drugs");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Drugs", str, 1580, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Drugs", str, 1580, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);

	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));

        PlayerInfo[playerid][pDrugs] -= value;
        PlayerInfo[userid][pDrugs] += value;

        OnPlayerUpdateAccountsPer(playerid, "pDrugs", PlayerInfo[playerid][pDrugs]);
        OnPlayerUpdateAccountsPer(userid, "pDrugs", PlayerInfo[userid][pDrugs]);
	}
	else if(!strcmp(name, "Rokok", true))
	{
        if(PlayerInfo[playerid][pRokok] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		if(PlayerInfo[userid][pRokok] >= 3) return SCM(playerid, COLOR_RED, "ERROR: "W"Orang Yang Anda Beri Sudah Memiliki 3 Rokok");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Rokok", str, 19625, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Rokok", str, 19625, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);

	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));

        PlayerInfo[playerid][pRokok] -= value;
        PlayerInfo[userid][pRokok] += value;

        OnPlayerUpdateAccountsPer(playerid, "pRokok", PlayerInfo[playerid][pRokok]);
        OnPlayerUpdateAccountsPer(userid, "pRokok", PlayerInfo[userid][pRokok]);
	}
	else if(!strcmp(name, "Component", true))
	{
        if(PlayerInfo[playerid][pComponent] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Component", str, 3096, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Component", str, 3096, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);

	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));

        PlayerInfo[playerid][pComponent] -= value;
        PlayerInfo[userid][pComponent] += value;

        OnPlayerUpdateAccountsPer(playerid, "pComponent", PlayerInfo[playerid][pComponent]);
        OnPlayerUpdateAccountsPer(userid, "pComponent", PlayerInfo[userid][pComponent]);
	}
	else if(!strcmp(name, "Masker", true))
	{
        if(PlayerInfo[playerid][pMask] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		if(PlayerInfo[userid][pMask] >= 2) return SCM(playerid, COLOR_RED, "ERROR: "W"Orang Yang Anda Beri Sudah Memiliki 2 Masker");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Masker", str, 19036, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Masker", str, 19036, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);

	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));

        PlayerInfo[playerid][pMask] -= value;
        PlayerInfo[userid][pMask] += value;

        OnPlayerUpdateAccountsPer(playerid, "pMask", PlayerInfo[playerid][pMask]);
        OnPlayerUpdateAccountsPer(userid, "pMask", PlayerInfo[userid][pMask]);
	}
	else if(!strcmp(name, "Repairkit", true))
	{
        if(PlayerInfo[playerid][pRepairKit] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");

		if(PlayerInfo[userid][pRepairKit] >= 3) return SCM(playerid, COLOR_RED, "ERROR: "W"Orang Yang Anda Beri Sudah Memiliki 3 Repair Kit");

		format(str, sizeof(str), "Removed_%dx", AmountItem[playerid]);
		ShowItemBox(playerid, "Repairkit", str, 19921, 3);

		format(str, sizeof(str), "Received_%dx", AmountItem[playerid]);
		ShowItemBox(userid, "Repairkit", str, 19921, 3);

	    Inventory_Close(playerid);
	    ApplyAnimation(playerid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);
	    ApplyAnimation(userid, "DEALER", "shop_pay", 4.1, 0, 1, 1, 0, 0, 1);

	    SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s Memberikan %s %d Kepada %s.", Name(playerid), name, value, Name(userid));
	    SendNearbyMessageEx(userid, 20.0, COLOR_PURPLE, "* %s Menerima %s %d Dari %s.", Name(userid), name, value, Name(playerid));

        PlayerInfo[playerid][pRepairKit] -= value;
        PlayerInfo[userid][pRepairKit] += value;

        OnPlayerUpdateAccountsPer(playerid, "pRepairKit", PlayerInfo[playerid][pRepairKit]);
        OnPlayerUpdateAccountsPer(userid, "pRepairKit", PlayerInfo[userid][pRepairKit]);
	}
	return 1;
}
forward OnPlayerUseItem(playerid, itemid, name[]);
public OnPlayerUseItem(playerid, itemid, name[])
{
	if(!strcmp(name, "BackPack"))
	{
		if(BukaBackPack[playerid] == 1) return 1;

		BukaBackPack[playerid] = 1;
		ShowProgressBar(playerid, "Membuka BackPack..", 5);
		SetTimerEx("OpenBackPack", 5000, false, "d", playerid);
		ApplyAnimation(playerid,"INT_HOUSE","wash_up",4.0, 1, 0, 0, 0, 0,1);
		return 1;
	}
	if(!strcmp(name, "Ponsel"))
	{
        Inventory_Close(playerid);
		callcmd::openphone(playerid, "");
	    return 1;
	}
	else if(!strcmp(name, "Radio"))
	{
        Inventory_Close(playerid);
		callcmd::radio(playerid, "");
	    return 1;
	}
	else if(!strcmp(name, "Snack"))
	{
        if(PlayerInfo[playerid][pSnack] < 1) return SCM(playerid,COLOR_RED,"ERROR: "W"Anda tidak memiliki snack");

        ShowItemBox(playerid, "Snack", "Removed_1x", 2821, 3);

        UpdatePlayerHungry(playerid, PlayerInfo[playerid][pHungry]+10);
        PlayerInfo[playerid][pSnack] -= 1;
        OnPlayerUpdateAccountsPer(playerid, "pSnack", PlayerInfo[playerid][pSnack]);

        SCM(playerid, COLOR_SERVER, "INFO: "W"Anda berhasil menggunakan snack");
        SetPlayerChatBubble(playerid, "Memakan snack",COLOR_PURPLE,30.0,5000);

        Inventory_Close(playerid);
        ApplyAnimation(playerid, "FOOD", "EAT_Burger", 4.0, 0, 0, 0, 0, 0,1);
        return 1;
	}
	else if(!strcmp(name, "Sprunk"))
	{
        if(PlayerInfo[playerid][pSprunk] < 1) return SCM(playerid,COLOR_RED,"ERROR: "W"Anda tidak memiliki sprunk");

		ShowItemBox(playerid, "Sprunk", "Removed_1x", 2958, 3);

		UpdatePlayerThirsty(playerid, PlayerInfo[playerid][pThirsty]+10);
        PlayerInfo[playerid][pSprunk] -= 1;
        OnPlayerUpdateAccountsPer(playerid, "pSprunk", PlayerInfo[playerid][pSprunk]);

        SCM(playerid, COLOR_SERVER, "INFO: "W"Anda berhasil menggunakan sprunk");
        SetPlayerChatBubble(playerid, "Meminum sprunk",COLOR_PURPLE,30.0,5000);

        Inventory_Close(playerid);
        ApplyAnimation(playerid, "FOOD", "EAT_Burger", 4.0, 0, 0, 0, 0, 0,1);
        return 1;
	}
	else if(!strcmp(name, "Boombox"))
	{
	    if(PlayerInfo[playerid][pBoombox] < 1) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda tidak memiliki boombox");

        new string[512], Float:BBCoord[4];
        GetPlayerPos(playerid, BBCoord[0], BBCoord[1], BBCoord[2]);
        GetPlayerFacingAngle(playerid, BBCoord[3]);
        SetPVarFloat(playerid, "BBX", BBCoord[0]);
        SetPVarFloat(playerid, "BBY", BBCoord[1]);
        SetPVarFloat(playerid, "BBZ", BBCoord[2]);
        GetPlayerName(playerid,PlayerInfo[playerid][pName],MAX_PLAYER_NAME);
        BBCoord[0] += (2 * floatsin(-BBCoord[3], degrees));
        BBCoord[1] += (2 * floatcos(-BBCoord[3], degrees));
        BBCoord[2] -= 1.0;

        if(GetPVarInt(playerid, "PlacedBB")) return 1;
        foreach(Player, i)
        {
            if(GetPVarType(i, "PlacedBB"))
            {
                if(IsPlayerInRangeOfPoint(playerid, 30.0, GetPVarFloat(i, "BBX"), GetPVarFloat(i, "BBY"), GetPVarFloat(i, "BBZ")))
                {
                    SendClientMessage(playerid, COLOR_RED, "ERROR: "W"Anda tidak dapat meletakkan boombox Anda di radius ini karena boombox sudah ditempatkan dalam radius ini");
                    return 1;
                }
            }
        }

		ShowItemBox(playerid, "Boombox", "Removed_1x", 2226, 3);

        SCM(playerid, COLOR_SERVER, "INFO: "W"Anda berhasil menggunakan boombox");
        SetPlayerChatBubble(playerid, "Mengeluarkan boombox",COLOR_PURPLE,30.0,5000);
        SetPVarInt(playerid, "PlacedBB", CreateDynamicObject(2226, BBCoord[0], BBCoord[1], BBCoord[2], 0.0, 0.0, 0.0, .worldid = GetPlayerVirtualWorld(playerid), .interiorid = GetPlayerInterior(playerid)));
        format(string, 244, "Boombox: %s\n{ffff00}/setbb /pickupbb", GetPlayerNameEx(playerid));
        SetPVarInt(playerid, "BBLabel", _:CreateDynamic3DTextLabel(string, -1, BBCoord[0], BBCoord[1], BBCoord[2]+0.6, 5, .worldid = GetPlayerVirtualWorld(playerid), .interiorid = GetPlayerInterior(playerid)));
        SetPVarInt(playerid, "BBArea", CreateDynamicSphere(BBCoord[0], BBCoord[1], BBCoord[2], 30.0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid)));
        SetPVarInt(playerid, "BBInt", GetPlayerInterior(playerid));
        SetPVarInt(playerid, "BBVW", GetPlayerVirtualWorld(playerid));

        PlayerInfo[playerid][pBoombox] = 0;
        OnPlayerUpdateAccountsPer(playerid, "pBoombox", PlayerInfo[playerid][pBoombox]);

        Inventory_Close(playerid);
        ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0);
        return 1;
	}
	else if(!strcmp(name, "Drugs"))
	{
        if(AmountItem[playerid] < 1) return SCM(playerid, COLOR_RED, "ERROR: "W"Masukan Jumlah Terlebih Dahulu!");
        if(AmountItem[playerid] < 1 || AmountItem[playerid] > 6) return SCM(playerid, COLOR_RED, "ERROR: "W"Hanya dapat menggunakan 1 - 6 gram!");
        if(PlayerInfo[playerid][pDrugs] < AmountItem[playerid]) return SCM(playerid, COLOR_RED, "ERROR: "W"Barang Anda Tidak Mencukupi!");
        if(GetPVarInt(playerid,"Drug_Time")) return SCMF(playerid, COLOR_GREY, "ERROR: "W"Anda harus menunggu %i detik lagi!", GetPVarInt(playerid,"Drug_Time"));

	    new Float: health;

	    GetPlayerHealth(playerid, health);

	    health += AmountItem[playerid] * 10;

        if(health > 160.0) health = 160.0;

	    SetPlayerHealth(playerid, health);
	    
		new Float: armour;
		GetPlayerArmour(playerid, armour);

		armour += AmountItem[playerid] * 2; // Menambah armour sesuai jumlah drugs yang digunakan

		if(armour > 50.0) armour = 50.0; // Batas maksimum armour dari drugs

		SetPlayerArmour(playerid, armour);

        PlayerInfo[playerid][pDrugs] -= AmountItem[playerid];
	    PlayerInfo[playerid][pDrugDep] += AmountItem[playerid];

        GameTextForPlayer(playerid, "~r~euphoria", 4000, 4);
        SetPlayerChatBubble(playerid,"menggunakan obat",COLOR_PURPLE,30.0,10000);
        SetPlayerWeather(playerid, -68);

        SetPVarInt(playerid,"Drug_Time", 120);

        format(format_string, 144, "UPDATE `accounts` SET `pDrugs` = %i, `pDrugDep` = %i WHERE `pID` = %i", PlayerInfo[playerid][pDrugs], PlayerInfo[playerid][pDrugDep], GetPlayerAccountID(playerid));
        mysql_tquery(mMysql, format_string);

        if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) ApplyAnimation(playerid,"SMOKING","M_smk_drag",4.1,0,0,0,0,0,1);
        SCMF(playerid, COLOR_SERVER, "INFO: "W"Anda berhasil menggunakan drugs (%.0f/160)", health);
		Inventory_Close(playerid);
		return 1;
	}
	else if(!strcmp(name, "Perban"))
	{
        new Float:shealth;
        GetPlayerHealth(playerid, shealth);
        if(GetPlayerAnimationIndex(playerid) == 1157) return Send(playerid, COLOR_RED, "ERROR: "W"Anda tidak dapat menggunakan dua perban sekaligus.");
        if(PlayerInfo[playerid][pHeals] < 1) return SCM(playerid, COLOR_RED,"ERROR: "W"Anda tidak memiliki perban, Anda dapat membelinya di toko 24/7.");
        if(shealth >= 100) return Send(playerid, COLOR_RED, "ERROR: "W"Anda tidak dapat menggunakan dalam kondisi normal.");

        new heal24hp = 60;
        new healedhp;
        if((floatround(shealth) + heal24hp) > 100) healedhp = 100 - floatround(shealth);
        else healedhp = heal24hp;

        SetPlayerHealthEx(playerid, (floatround(shealth) + healedhp));
        PlayerInfo[playerid][pHeals] -= 1;
        OnPlayerUpdateAccountsPer(playerid, "pHeals", PlayerInfo[playerid][pHeals]);

		ShowItemBox(playerid, "Perban", "Removed_1x", 11738, 3);

        SCM(playerid, COLOR_SERVER, "INFO: "W"Anda berhasil menggunakan perban");
        SetPlayerChatBubble(playerid, "Menggunakan perban",COLOR_PURPLE,30.0,5000);

        Inventory_Close(playerid);
        ApplyAnimation(playerid,"ped","gum_eat",4.0,0,0,0,0,0,1);
        SetPlayerAttachedObject(playerid,1,11736,6,0.118999,0.020000,0.026000,-93.699874,-4.799996,88.400108,1.000000,1.000000,1.000000);
        SetTimerEx("HealUnFr", 1600, false, "d", playerid);
        return 1;
	}
	else if(!strcmp(name, "Masker"))
	{
		Inventory_Close(playerid);
		callcmd::mask(playerid);
		return 1;
	}
	else if(!strcmp(name, "Repairkit"))
	{
		if(PlayerInfo[playerid][pRepairKit] < 1) return SCM(playerid, COLOR_RED, "ERROR: "W"Anda tidak memiliki repair kit");
		new vehicleid = GetNearestVehicle(playerid);
		if(!vehicleid) return SCM(playerid, COLOR_RED, "ERROR: "W"Tidak ada kendaraan di dekat anda");
		if(IsPlayerInAnyVehicle(playerid)) return SCM(playerid, COLOR_RED, "ERROR: "W"Tidak dapat digunakan dalam kendaraan");

		new Float: health;
		GetVehicleHealth(vehicleid, health);
		if(health == 1000.0) return SCM(playerid, COLOR_RED, "ERROR: "W"Kendaraan ini dalam kondisi utuh");
	    PlayerInfo[playerid][pRepairKit] -= 1;
	    OnPlayerUpdateAccountsPer(playerid, "pRepairKit", PlayerInfo[playerid][pRepairKit]);
		RepairVehicle(vehicleid);
		SCM(playerid, COLOR_SERVER, "INFO: "W"Anda berhasil memperbaiki kendaraan");

		ShowItemBox(playerid, "Repairkit", "Removed_1x", 19921, 3);

		Inventory_Close(playerid);
		return 1;
	}
	else if(!strcmp(name, "Rokok"))
	{
		if(PlayerInfo[playerid][pRokok] < 1)
			return SCM(playerid, COLOR_RED, "ERROR: "W"Anda tidak memiliki rokok.");

        ShowItemBox(playerid, "Rokok", "Removed_1x", 19625, 3);

		Inventory_Close(playerid);

		Ciggar[playerid] += 10;
		PlayerInfo[playerid][pRokok] -= 1;
		OnPlayerUpdateAccountsPer(playerid, "pRokok", PlayerInfo[playerid][pRokok]);

		ApplyAnimation(playerid, "SMOKING", "M_smk_in", 4.0, 0, 0, 0, 0, 0, 1);
		SetPlayerAttachedObject(playerid, 0, 19625, 5, 0.093999, 0.016000, -0.025999, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000);
		SendNearbyMessageEx(playerid, 20.0, COLOR_PURPLE, "* %s lit a cigarette.", GetPName(playerid));
		SCM(playerid, COLOR_SERVER, "INFO: "W"Gunakan {ffff00}'/smokecig' "W"untuk menghisapnya");
	    return 1;
	}
	else if(!strcmp(name, "Ktp"))
	{
        Inventory_Close(playerid);
        
        new atext[512];
	    if(PlayerInfo[playerid][pSex] == 1) atext = "Laki-laki";
        else atext = "Perempuan";
        
        new menikah[512];
	    if(!PlayerInfo[playerid][pBukuNikah]) menikah = "Belum_Kawin";
        else menikah = "Kawin";
        
        new htext[116];
        if(GetPlayerHouse(playerid) != -1) format(htext, sizeof(htext), "%s", GetAreaName(HouseInfo[GetPlayerHouse(playerid)][hEntrancex], HouseInfo[GetPlayerHouse(playerid)][hEntrancey]));
        else if(PlayerInfo[playerid][pHotel] != -1) format(htext, sizeof(htext), "%s", GetAreaName(1304.3055, -1377.3057));
        else htext = "Tunawisma";

        new infojob[512];
        if(PlayerInfo[playerid][pJob] == 0 && PlayerInfo[playerid][pMember] == 0) infojob = "Menganggur";
        else if(PlayerInfo[playerid][pJob] != 0) format(infojob, sizeof(infojob), "%s", NamesJob(playerid));
        else if(PlayerInfo[playerid][pMember] != 0) format(infojob, sizeof(infojob), "%s", FracRank[PlayerInfo[playerid][pMember]][PlayerInfo[playerid][pRank]]);

        PlayerTextDrawSetPreviewModel(playerid, IDentityTD[playerid][7], PlayerInfo[playerid][pSkin]);

        format(evanda, sizeof(evanda), "%s", PlayerInfo[playerid][pName]);
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][16], evanda);

        format(evanda, sizeof(evanda), "%s", atext);
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][17], evanda);

        format(evanda, sizeof(evanda), "%s", PlayerInfo[playerid][pAge]);
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][18], evanda);

        format(evanda, sizeof(evanda), "%s", htext);
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][19], evanda);

        format(evanda, sizeof(evanda), "%s", menikah);
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][20], evanda);

        format(evanda, sizeof(evanda), "%s", infojob);
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][21], evanda);
        
		format(evanda, sizeof(evanda), "%s", date("%dd/%mm/%yyyy",PlayerInfo[playerid][pPassTimes]));
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][22], evanda);
        
        format(evanda, sizeof(evanda), "%s", PlayerInfo[playerid][pName]);
        PlayerTextDrawSetString(playerid, IDentityTD[playerid][23], evanda);

        for(new i = 0; i < 24; i++)
        {
            PlayerTextDrawShow(playerid, IDentityTD[playerid][i]);
        }

        SetTimerEx("HideKtp", 15000, false, "i", playerid);
        return 1;
    }
	else if(!strcmp(name, "Uang"))
	{
	    SCM(playerid, COLOR_RED, "ERROR: "W"Item ini tidak dapat digunakan");
	    return 1;
	}
	else if(!strcmp(name, "Component"))
	{
	    SCM(playerid, COLOR_RED, "ERROR: "W"Item ini tidak dapat digunakan");
	    return 1;
	}
	return 1;
}
stock CreatePlayerTdInventory(playerid)
{
    BukaInventory[playerid] = 0, SelectItem[playerid] = -1, AmountItem[playerid] = 0;

	INVNAME[playerid][0] = CreatePlayerTextDraw(playerid, 118.000, 96.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVNAME[playerid][0], 213.000, 253.000);
	PlayerTextDrawAlignment(playerid, INVNAME[playerid][0], 1);
	PlayerTextDrawColor(playerid, INVNAME[playerid][0], 690964479);
	PlayerTextDrawSetShadow(playerid, INVNAME[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, INVNAME[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, INVNAME[playerid][0], 255);
	PlayerTextDrawFont(playerid, INVNAME[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, INVNAME[playerid][0], 1);

	INVNAME[playerid][1] = CreatePlayerTextDraw(playerid, 125.000, 115.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVNAME[playerid][1], 199.000, 3.000);
	PlayerTextDrawAlignment(playerid, INVNAME[playerid][1], 1);
	PlayerTextDrawColor(playerid, INVNAME[playerid][1], 255);
	PlayerTextDrawSetShadow(playerid, INVNAME[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, INVNAME[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, INVNAME[playerid][1], 255);
	PlayerTextDrawFont(playerid, INVNAME[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, INVNAME[playerid][1], 1);

	INVNAME[playerid][2] = CreatePlayerTextDraw(playerid, 126.000, 115.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVNAME[playerid][2], 165.000, 3.000);
	PlayerTextDrawAlignment(playerid, INVNAME[playerid][2], 1);
	PlayerTextDrawColor(playerid, INVNAME[playerid][2], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, INVNAME[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, INVNAME[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, INVNAME[playerid][2], 255);
	PlayerTextDrawFont(playerid, INVNAME[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, INVNAME[playerid][2], 1);

	INVNAME[playerid][3] = CreatePlayerTextDraw(playerid, 126.000, 105.000, "Atsuko Tadashiu");
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][3], 0.140, 0.898);
	PlayerTextDrawAlignment(playerid, INVNAME[playerid][3], 1);
	PlayerTextDrawColor(playerid, INVNAME[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, INVNAME[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, INVNAME[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, INVNAME[playerid][3], 150);
	PlayerTextDrawFont(playerid, INVNAME[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, INVNAME[playerid][3], 1);

	INVNAME[playerid][4] = CreatePlayerTextDraw(playerid, 324.000, 105.000, "100/300");
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][4], 0.140, 0.699);
	PlayerTextDrawAlignment(playerid, INVNAME[playerid][4], 3);
	PlayerTextDrawColor(playerid, INVNAME[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, INVNAME[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, INVNAME[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, INVNAME[playerid][4], 150);
	PlayerTextDrawFont(playerid, INVNAME[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, INVNAME[playerid][4], 1);

	INVNAME[playerid][5] = CreatePlayerTextDraw(playerid, 295.000, 104.000, "H");
	PlayerTextDrawLetterSize(playerid, INVNAME[playerid][5], 0.200, 0.898);
	PlayerTextDrawAlignment(playerid, INVNAME[playerid][5], 3);
	PlayerTextDrawColor(playerid, INVNAME[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, INVNAME[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, INVNAME[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, INVNAME[playerid][5], 150);
	PlayerTextDrawFont(playerid, INVNAME[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, INVNAME[playerid][5], 1);

    INVINFO[playerid][0] = CreatePlayerTextDraw(playerid, 347.000, 168.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVINFO[playerid][0], 55.000, 117.000);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][0], 1);
	PlayerTextDrawColor(playerid, INVINFO[playerid][0], 690964479);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][0], 255);
	PlayerTextDrawFont(playerid, INVINFO[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][0], 1);

	INVINFO[playerid][1] = CreatePlayerTextDraw(playerid, 352.000, 174.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVINFO[playerid][1], 45.000, 18.000);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][1], 1);
	PlayerTextDrawColor(playerid, INVINFO[playerid][1], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][1], 255);
	PlayerTextDrawFont(playerid, INVINFO[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, INVINFO[playerid][1], 1);

	INVINFO[playerid][2] = CreatePlayerTextDraw(playerid, 352.000, 195.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVINFO[playerid][2], 45.000, 18.000);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][2], 1);
	PlayerTextDrawColor(playerid, INVINFO[playerid][2], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][2], 255);
	PlayerTextDrawFont(playerid, INVINFO[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, INVINFO[playerid][2], 1);

	INVINFO[playerid][3] = CreatePlayerTextDraw(playerid, 352.000, 216.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVINFO[playerid][3], 45.000, 18.000);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][3], 1);
	PlayerTextDrawColor(playerid, INVINFO[playerid][3], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][3], 255);
	PlayerTextDrawFont(playerid, INVINFO[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, INVINFO[playerid][3], 1);

	INVINFO[playerid][4] = CreatePlayerTextDraw(playerid, 352.000, 237.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVINFO[playerid][4], 45.000, 18.000);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][4], 1);
	PlayerTextDrawColor(playerid, INVINFO[playerid][4], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][4], 255);
	PlayerTextDrawFont(playerid, INVINFO[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, INVINFO[playerid][4], 1);

	INVINFO[playerid][5] = CreatePlayerTextDraw(playerid, 352.000, 258.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INVINFO[playerid][5], 45.000, 18.000);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][5], 1);
	PlayerTextDrawColor(playerid, INVINFO[playerid][5], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][5], 255);
	PlayerTextDrawFont(playerid, INVINFO[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, INVINFO[playerid][5], 1);

	INVINFO[playerid][6] = CreatePlayerTextDraw(playerid, 375.000, 179.000, "Jumlah");
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][6], 0.150, 0.898);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][6], 2);
	PlayerTextDrawColor(playerid, INVINFO[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][6], 150);
	PlayerTextDrawFont(playerid, INVINFO[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][6], 1);

	INVINFO[playerid][7] = CreatePlayerTextDraw(playerid, 375.000, 199.000, "Gunakan");
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][7], 0.150, 0.898);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][7], 2);
	PlayerTextDrawColor(playerid, INVINFO[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][7], 150);
	PlayerTextDrawFont(playerid, INVINFO[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][7], 1);

	INVINFO[playerid][8] = CreatePlayerTextDraw(playerid, 375.000, 220.000, "Berikan");
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][8], 0.150, 0.898);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][8], 2);
	PlayerTextDrawColor(playerid, INVINFO[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][8], 150);
	PlayerTextDrawFont(playerid, INVINFO[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][8], 1);

	INVINFO[playerid][9] = CreatePlayerTextDraw(playerid, 375.000, 242.000, "Buang");
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][9], 0.150, 0.898);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][9], 2);
	PlayerTextDrawColor(playerid, INVINFO[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][9], 150);
	PlayerTextDrawFont(playerid, INVINFO[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][9], 1);

	INVINFO[playerid][10] = CreatePlayerTextDraw(playerid, 375.000, 263.000, "Tutup");
	PlayerTextDrawLetterSize(playerid, INVINFO[playerid][10], 0.150, 0.898);
	PlayerTextDrawAlignment(playerid, INVINFO[playerid][10], 2);
	PlayerTextDrawColor(playerid, INVINFO[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, INVINFO[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, INVINFO[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, INVINFO[playerid][10], 150);
	PlayerTextDrawFont(playerid, INVINFO[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, INVINFO[playerid][10], 1);

	INDEXTD[playerid][0] = CreatePlayerTextDraw(playerid, 125.000, 120.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][0], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][0], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][0], 1);

	INDEXTD[playerid][1] = CreatePlayerTextDraw(playerid, 165.000, 120.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][1], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][1], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][1], 1);

	INDEXTD[playerid][2] = CreatePlayerTextDraw(playerid, 205.000, 120.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][2], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][2], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][2], 1);

	INDEXTD[playerid][3] = CreatePlayerTextDraw(playerid, 245.000, 120.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][3], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][3], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][3], 1);

	INDEXTD[playerid][4] = CreatePlayerTextDraw(playerid, 285.000, 120.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][4], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][4], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][4], 1);

	INDEXTD[playerid][5] = CreatePlayerTextDraw(playerid, 125.000, 176.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][5], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][5], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][5], 1);

	INDEXTD[playerid][6] = CreatePlayerTextDraw(playerid, 165.000, 176.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][6], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][6], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][6], 1);

	INDEXTD[playerid][7] = CreatePlayerTextDraw(playerid, 205.000, 176.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][7], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][7], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][7], 1);

	INDEXTD[playerid][8] = CreatePlayerTextDraw(playerid, 245.000, 176.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][8], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][8], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][8], 1);

	INDEXTD[playerid][9] = CreatePlayerTextDraw(playerid, 285.000, 176.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][9], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][9], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][9], 1);

	INDEXTD[playerid][10] = CreatePlayerTextDraw(playerid, 125.000, 232.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][10], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][10], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][10], 1);

	INDEXTD[playerid][11] = CreatePlayerTextDraw(playerid, 165.000, 232.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][11], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][11], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][11], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][11], 1);

	INDEXTD[playerid][12] = CreatePlayerTextDraw(playerid, 205.000, 232.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][12], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][12], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][12], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][12], 1);

	INDEXTD[playerid][13] = CreatePlayerTextDraw(playerid, 245.000, 232.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][13], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][13], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][13], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][13], 1);

	INDEXTD[playerid][14] = CreatePlayerTextDraw(playerid, 285.000, 232.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][14], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][14], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][14], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][14], 1);

	INDEXTD[playerid][15] = CreatePlayerTextDraw(playerid, 125.000, 288.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][15], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][15], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][15], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][15], 1);

	INDEXTD[playerid][16] = CreatePlayerTextDraw(playerid, 165.000, 288.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][16], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][16], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][16], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][16], 1);

	INDEXTD[playerid][17] = CreatePlayerTextDraw(playerid, 205.000, 288.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][17], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][17], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][17], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][17], 1);

	INDEXTD[playerid][18] = CreatePlayerTextDraw(playerid, 245.000, 288.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][18], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][18], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][18], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][18], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][18], 1);

	INDEXTD[playerid][19] = CreatePlayerTextDraw(playerid, 285.000, 288.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, INDEXTD[playerid][19], 39.000, 51.000);
	PlayerTextDrawAlignment(playerid, INDEXTD[playerid][19], 1);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][19], hud_transparant);
	PlayerTextDrawSetShadow(playerid, INDEXTD[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, INDEXTD[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, INDEXTD[playerid][19], 255);
	PlayerTextDrawFont(playerid, INDEXTD[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, INDEXTD[playerid][19], 1);

	MODELTD[playerid][0] = CreatePlayerTextDraw(playerid, 129.000, 129.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][0], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][0], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][0], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][0], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][0], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][0], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][0], 1);

	MODELTD[playerid][1] = CreatePlayerTextDraw(playerid, 169.000, 129.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][1], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][1], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][1], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][1], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][1], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][1], 1);

	MODELTD[playerid][2] = CreatePlayerTextDraw(playerid, 209.000, 129.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][2], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][2], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][2], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][2], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][2], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][2], 1);

	MODELTD[playerid][3] = CreatePlayerTextDraw(playerid, 249.000, 129.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][3], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][3], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][3], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][3], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][3], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][3], 1);

	MODELTD[playerid][4] = CreatePlayerTextDraw(playerid, 289.000, 129.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][4], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][4], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][4], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][4], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][4], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][4], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][4], 1);

	MODELTD[playerid][5] = CreatePlayerTextDraw(playerid, 129.000, 185.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][5], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][5], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][5], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][5], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][5], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][5], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][5], 1);

	MODELTD[playerid][6] = CreatePlayerTextDraw(playerid, 169.000, 185.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][6], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][6], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][6], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][6], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][6], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][6], 1);

	MODELTD[playerid][7] = CreatePlayerTextDraw(playerid, 209.000, 185.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][7], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][7], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][7], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][7], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][7], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][7], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][7], 1);

	MODELTD[playerid][8] = CreatePlayerTextDraw(playerid, 249.000, 185.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][8], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][8], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][8], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][8], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][8], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][8], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][8], 1);

	MODELTD[playerid][9] = CreatePlayerTextDraw(playerid, 289.000, 185.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][9], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][9], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][9], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][9], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][9], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][9], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][9], 1);

	MODELTD[playerid][10] = CreatePlayerTextDraw(playerid, 129.000, 241.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][10], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][10], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][10], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][10], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][10], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][10], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][10], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][10], 1);

	MODELTD[playerid][11] = CreatePlayerTextDraw(playerid, 169.000, 241.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][11], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][11], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][11], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][11], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][11], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][11], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][11], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][11], 1);

	MODELTD[playerid][12] = CreatePlayerTextDraw(playerid, 209.000, 241.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][12], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][12], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][12], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][12], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][12], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][12], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][12], 1);

	MODELTD[playerid][13] = CreatePlayerTextDraw(playerid, 249.000, 241.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][13], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][13], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][13], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][13], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][13], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][13], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][13], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][13], 1);

	MODELTD[playerid][14] = CreatePlayerTextDraw(playerid, 289.000, 241.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][14], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][14], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][14], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][14], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][14], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][14], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][14], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][14], 1);

	MODELTD[playerid][15] = CreatePlayerTextDraw(playerid, 129.000, 297.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][15], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][15], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][15], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][15], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][15], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][15], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][15], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][15], 1);

	MODELTD[playerid][16] = CreatePlayerTextDraw(playerid, 169.000, 297.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][16], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][16], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][16], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][16], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][16], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][16], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][16], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][16], 1);

	MODELTD[playerid][17] = CreatePlayerTextDraw(playerid, 209.000, 297.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][17], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][17], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][17], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][17], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][17], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][17], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][17], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][17], 1);

	MODELTD[playerid][18] = CreatePlayerTextDraw(playerid, 249.000, 297.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][18], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][18], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][18], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][18], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][18], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][18], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][18], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][18], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][18], 1);

	MODELTD[playerid][19] = CreatePlayerTextDraw(playerid, 289.000, 297.000, "_");
	PlayerTextDrawTextSize(playerid, MODELTD[playerid][19], 30.000, 35.000);
	PlayerTextDrawAlignment(playerid, MODELTD[playerid][19], 1);
	PlayerTextDrawColor(playerid, MODELTD[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, MODELTD[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, MODELTD[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, MODELTD[playerid][19], 0);
	PlayerTextDrawFont(playerid, MODELTD[playerid][19], 5);
	PlayerTextDrawSetProportional(playerid, MODELTD[playerid][19], 0);
	PlayerTextDrawSetPreviewModel(playerid, MODELTD[playerid][19], 1212);
	PlayerTextDrawSetPreviewRot(playerid, MODELTD[playerid][19], 0.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, MODELTD[playerid][19], 0, 0);
	PlayerTextDrawSetSelectable(playerid, MODELTD[playerid][19], 1);

	AMOUNTTD[playerid][0] = CreatePlayerTextDraw(playerid, 126.000, 162.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][0], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][0], 1);

	AMOUNTTD[playerid][1] = CreatePlayerTextDraw(playerid, 166.000, 162.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][1], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][1], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][1], 1);

	AMOUNTTD[playerid][2] = CreatePlayerTextDraw(playerid, 206.000, 162.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][2], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][2], 1);

	AMOUNTTD[playerid][3] = CreatePlayerTextDraw(playerid, 246.000, 162.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][3], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][3], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][3], 1);

	AMOUNTTD[playerid][4] = CreatePlayerTextDraw(playerid, 286.000, 162.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][4], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][4], 1);

	AMOUNTTD[playerid][5] = CreatePlayerTextDraw(playerid, 126.000, 218.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][5], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][5], 1);

	AMOUNTTD[playerid][6] = CreatePlayerTextDraw(playerid, 166.000, 218.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][6], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][6], 1);

	AMOUNTTD[playerid][7] = CreatePlayerTextDraw(playerid, 206.000, 218.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][7], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][7], 1);

	AMOUNTTD[playerid][8] = CreatePlayerTextDraw(playerid, 246.000, 218.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][8], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][8], 1);

	AMOUNTTD[playerid][9] = CreatePlayerTextDraw(playerid, 286.000, 218.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][9], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][9], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][9], 1);

	AMOUNTTD[playerid][10] = CreatePlayerTextDraw(playerid, 126.000, 274.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][10], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][10], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][10], 1);

	AMOUNTTD[playerid][11] = CreatePlayerTextDraw(playerid, 166.000, 274.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][11], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][11], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][11], 1);

	AMOUNTTD[playerid][12] = CreatePlayerTextDraw(playerid, 206.000, 274.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][12], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][12], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][12], 1);

	AMOUNTTD[playerid][13] = CreatePlayerTextDraw(playerid, 246.000, 274.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][13], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][13], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][13], 1);

	AMOUNTTD[playerid][14] = CreatePlayerTextDraw(playerid, 286.000, 274.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][14], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][14], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][14], 1);

	AMOUNTTD[playerid][15] = CreatePlayerTextDraw(playerid, 126.000, 330.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][15], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][15], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][15], 1);

	AMOUNTTD[playerid][16] = CreatePlayerTextDraw(playerid, 166.000, 330.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][16], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][16], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][16], 1);

	AMOUNTTD[playerid][17] = CreatePlayerTextDraw(playerid, 206.000, 330.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][17], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][17], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][17], 1);

	AMOUNTTD[playerid][18] = CreatePlayerTextDraw(playerid, 246.000, 330.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][18], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][18], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][18], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][18], 1);

	AMOUNTTD[playerid][19] = CreatePlayerTextDraw(playerid, 286.000, 330.000, "10000x");
	PlayerTextDrawLetterSize(playerid, AMOUNTTD[playerid][19], 0.119, 0.598);
	PlayerTextDrawAlignment(playerid, AMOUNTTD[playerid][19], 1);
	PlayerTextDrawColor(playerid, AMOUNTTD[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, AMOUNTTD[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, AMOUNTTD[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, AMOUNTTD[playerid][19], 150);
	PlayerTextDrawFont(playerid, AMOUNTTD[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, AMOUNTTD[playerid][19], 1);

	NOTIFBOX[playerid][0] = CreatePlayerTextDraw(playerid, 327.000000, 385.500000, "ld_dual:white");
	PlayerTextDrawFont(playerid, NOTIFBOX[playerid][0], 4);
	PlayerTextDrawLetterSize(playerid, NOTIFBOX[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, NOTIFBOX[playerid][0], 34.000000, 34.000000);
	PlayerTextDrawSetOutline(playerid, NOTIFBOX[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, NOTIFBOX[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, NOTIFBOX[playerid][0], 2);
	PlayerTextDrawColor(playerid, NOTIFBOX[playerid][0], 1296911761);
	PlayerTextDrawBackgroundColor(playerid, NOTIFBOX[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, NOTIFBOX[playerid][0], 50);
	PlayerTextDrawUseBox(playerid, NOTIFBOX[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, NOTIFBOX[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, NOTIFBOX[playerid][0], 0);

	NOTIFBOX[playerid][1] = CreatePlayerTextDraw(playerid, 327.000000, 421.000000, "ld_dual:white");
	PlayerTextDrawFont(playerid, NOTIFBOX[playerid][1], 4);
	PlayerTextDrawLetterSize(playerid, NOTIFBOX[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, NOTIFBOX[playerid][1], 34.000000, 14.000000);
	PlayerTextDrawSetOutline(playerid, NOTIFBOX[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, NOTIFBOX[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, NOTIFBOX[playerid][1], 2);
	PlayerTextDrawColor(playerid, NOTIFBOX[playerid][1], 16777215);
	PlayerTextDrawBackgroundColor(playerid, NOTIFBOX[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, NOTIFBOX[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, NOTIFBOX[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, NOTIFBOX[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, NOTIFBOX[playerid][1], 0);

	NOTIFBOX[playerid][2] = CreatePlayerTextDraw(playerid, 344.000000, 424.000000, "Nasi Goreng");
	PlayerTextDrawFont(playerid, NOTIFBOX[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, NOTIFBOX[playerid][2], 0.133331, 0.800000);
	PlayerTextDrawTextSize(playerid, NOTIFBOX[playerid][2], 396.000000, 30.500000);
	PlayerTextDrawSetOutline(playerid, NOTIFBOX[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid, NOTIFBOX[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, NOTIFBOX[playerid][2], 2);
	PlayerTextDrawColor(playerid, NOTIFBOX[playerid][2], 255);
	PlayerTextDrawBackgroundColor(playerid, NOTIFBOX[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, NOTIFBOX[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, NOTIFBOX[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, NOTIFBOX[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, NOTIFBOX[playerid][2], 0);

	NOTIFBOX[playerid][3] = CreatePlayerTextDraw(playerid, 335.000000, 387.000000, "1X");
	PlayerTextDrawFont(playerid, NOTIFBOX[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, NOTIFBOX[playerid][3], 0.133331, 0.800000);
	PlayerTextDrawTextSize(playerid, NOTIFBOX[playerid][3], 396.000000, 30.500000);
	PlayerTextDrawSetOutline(playerid, NOTIFBOX[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid, NOTIFBOX[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, NOTIFBOX[playerid][3], 2);
	PlayerTextDrawColor(playerid, NOTIFBOX[playerid][3], -1);
	PlayerTextDrawBackgroundColor(playerid, NOTIFBOX[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, NOTIFBOX[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, NOTIFBOX[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, NOTIFBOX[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, NOTIFBOX[playerid][3], 0);

	NOTIFBOX[playerid][4] = CreatePlayerTextDraw(playerid, 327.000000, 381.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, NOTIFBOX[playerid][4], 5);
	PlayerTextDrawLetterSize(playerid, NOTIFBOX[playerid][4], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, NOTIFBOX[playerid][4], 35.000000, 38.500000);
	PlayerTextDrawSetOutline(playerid, NOTIFBOX[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, NOTIFBOX[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, NOTIFBOX[playerid][4], 1);
	PlayerTextDrawColor(playerid, NOTIFBOX[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, NOTIFBOX[playerid][4], 0);
	PlayerTextDrawBoxColor(playerid, NOTIFBOX[playerid][4], 255);
	PlayerTextDrawUseBox(playerid, NOTIFBOX[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, NOTIFBOX[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, NOTIFBOX[playerid][4], 0);
	PlayerTextDrawSetPreviewModel(playerid, NOTIFBOX[playerid][4], 1212);
	PlayerTextDrawSetPreviewRot(playerid, NOTIFBOX[playerid][4], -36.000000, 0.000000, -20.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid, NOTIFBOX[playerid][4], 1, 1);

	NAMETD[playerid][0] = CreatePlayerTextDraw(playerid, 128.000, 121.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][0], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][0], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][0], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][0], 1);

	NAMETD[playerid][1] = CreatePlayerTextDraw(playerid, 168.000, 121.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][1], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][1], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][1], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][1], 1);

	NAMETD[playerid][2] = CreatePlayerTextDraw(playerid, 208.000, 121.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][2], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][2], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][2], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][2], 1);

	NAMETD[playerid][3] = CreatePlayerTextDraw(playerid, 248.000, 121.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][3], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][3], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][3], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][3], 1);

	NAMETD[playerid][4] = CreatePlayerTextDraw(playerid, 287.000, 121.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][4], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][4], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][4], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][4], 1);

	NAMETD[playerid][5] = CreatePlayerTextDraw(playerid, 128.000, 176.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][5], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][5], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][5], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][5], 1);

	NAMETD[playerid][6] = CreatePlayerTextDraw(playerid, 168.000, 176.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][6], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][6], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][6], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][6], 1);

	NAMETD[playerid][7] = CreatePlayerTextDraw(playerid, 208.000, 176.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][7], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][7], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][7], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][7], 1);

	NAMETD[playerid][8] = CreatePlayerTextDraw(playerid, 248.000, 176.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][8], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][8], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][8], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][8], 1);

	NAMETD[playerid][9] = CreatePlayerTextDraw(playerid, 287.000, 176.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][9], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][9], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][9], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][9], 1);

	NAMETD[playerid][10] = CreatePlayerTextDraw(playerid, 128.000, 232.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][10], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][10], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][10], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][10], 1);

	NAMETD[playerid][11] = CreatePlayerTextDraw(playerid, 168.000, 232.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][11], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][11], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][11], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][11], 1);

	NAMETD[playerid][12] = CreatePlayerTextDraw(playerid, 208.000, 232.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][12], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][12], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][12], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][12], 1);

	NAMETD[playerid][13] = CreatePlayerTextDraw(playerid, 248.000, 232.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][13], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][13], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][13], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][13], 1);

	NAMETD[playerid][14] = CreatePlayerTextDraw(playerid, 287.000, 232.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][14], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][14], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][14], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][14], 1);

	NAMETD[playerid][15] = CreatePlayerTextDraw(playerid, 128.000, 287.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][15], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][15], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][15], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][15], 1);

	NAMETD[playerid][16] = CreatePlayerTextDraw(playerid, 168.000, 287.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][16], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][16], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][16], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][16], 1);

	NAMETD[playerid][17] = CreatePlayerTextDraw(playerid, 208.000, 287.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][17], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][17], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][17], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][17], 1);

	NAMETD[playerid][18] = CreatePlayerTextDraw(playerid, 248.000, 287.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][18], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][18], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][18], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][18], 1);

	NAMETD[playerid][19] = CreatePlayerTextDraw(playerid, 287.000, 287.000, "Uang");
	PlayerTextDrawLetterSize(playerid, NAMETD[playerid][19], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, NAMETD[playerid][19], 1);
	PlayerTextDrawColor(playerid, NAMETD[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, NAMETD[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, NAMETD[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, NAMETD[playerid][19], 150);
	PlayerTextDrawFont(playerid, NAMETD[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, NAMETD[playerid][19], 1);

	GARISBAWAH[playerid][0] = CreatePlayerTextDraw(playerid, 125.000, 170.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][0], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][0], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][0], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][0], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][0], 1);

	GARISBAWAH[playerid][1] = CreatePlayerTextDraw(playerid, 165.000, 170.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][1], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][1], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][1], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][1], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][1], 1);

	GARISBAWAH[playerid][2] = CreatePlayerTextDraw(playerid, 205.000, 170.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][2], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][2], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][2], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][2], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][2], 1);

	GARISBAWAH[playerid][3] = CreatePlayerTextDraw(playerid, 245.000, 170.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][3], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][3], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][3], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][3], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][3], 1);

	GARISBAWAH[playerid][4] = CreatePlayerTextDraw(playerid, 286.000, 170.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][4], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][4], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][4], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][4], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][4], 1);

	GARISBAWAH[playerid][5] = CreatePlayerTextDraw(playerid, 125.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][5], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][5], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][5], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][5], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][5], 1);

	GARISBAWAH[playerid][6] = CreatePlayerTextDraw(playerid, 165.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][6], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][6], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][6], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][6], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][6], 1);

	GARISBAWAH[playerid][7] = CreatePlayerTextDraw(playerid, 205.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][7], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][7], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][7], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][7], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][7], 1);

	GARISBAWAH[playerid][8] = CreatePlayerTextDraw(playerid, 245.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][8], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][8], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][8], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][8], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][8], 1);

	GARISBAWAH[playerid][9] = CreatePlayerTextDraw(playerid, 286.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][9], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][9], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][9], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][9], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][9], 1);

	GARISBAWAH[playerid][10] = CreatePlayerTextDraw(playerid, 125.000, 282.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][10], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][10], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][10], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][10], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][10], 1);

	GARISBAWAH[playerid][11] = CreatePlayerTextDraw(playerid, 165.000, 282.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][11], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][11], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][11], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][11], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][11], 1);

	GARISBAWAH[playerid][12] = CreatePlayerTextDraw(playerid, 205.000, 282.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][12], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][12], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][12], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][12], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][12], 1);

	GARISBAWAH[playerid][13] = CreatePlayerTextDraw(playerid, 245.000, 282.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][13], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][13], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][13], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][13], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][13], 1);

	GARISBAWAH[playerid][14] = CreatePlayerTextDraw(playerid, 286.000, 282.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][14], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][14], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][14], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][14], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][14], 1);

	GARISBAWAH[playerid][15] = CreatePlayerTextDraw(playerid, 125.000, 338.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][15], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][15], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][15], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][15], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][15], 1);

	GARISBAWAH[playerid][16] = CreatePlayerTextDraw(playerid, 165.000, 338.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][16], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][16], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][16], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][16], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][16], 1);

	GARISBAWAH[playerid][17] = CreatePlayerTextDraw(playerid, 205.000, 338.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][17], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][17], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][17], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][17], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][17], 1);

	GARISBAWAH[playerid][18] = CreatePlayerTextDraw(playerid, 245.000, 338.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][18], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][18], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][18], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][18], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][18], 1);

	GARISBAWAH[playerid][19] = CreatePlayerTextDraw(playerid, 286.000, 338.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, GARISBAWAH[playerid][19], 39.000, 3.000);
	PlayerTextDrawAlignment(playerid, GARISBAWAH[playerid][19], 1);
	PlayerTextDrawColor(playerid, GARISBAWAH[playerid][19], hud_green_transparant);
	PlayerTextDrawSetShadow(playerid, GARISBAWAH[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, GARISBAWAH[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, GARISBAWAH[playerid][19], 255);
	PlayerTextDrawFont(playerid, GARISBAWAH[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, GARISBAWAH[playerid][19], 1);
	return 1;
}
stock BarangMasuk(playerid)
{
    Inventory_Set(playerid, "BackPack", 2919, PlayerInfo[playerid][pStaterpack], 10);
    Inventory_Set(playerid, "Uang", 1212, PlayerInfo[playerid][pCash], 10);
    Inventory_Set(playerid, "Ponsel", 18867, PlayerInfo[playerid][pProducts][0], 30);
    Inventory_Set(playerid, "Radio", 19513, PlayerInfo[playerid][pRadio], 10);
    Inventory_Set(playerid, "Component", 3096, PlayerInfo[playerid][pComponent], 10);
    Inventory_Set(playerid, "Repairkit", 19921, PlayerInfo[playerid][pRepairKit], 30);
    Inventory_Set(playerid, "Boombox", 2226, PlayerInfo[playerid][pBoombox], 10);
    Inventory_Set(playerid, "Masker", 19036, PlayerInfo[playerid][pMask], 20);
    Inventory_Set(playerid, "Snack", 2821, PlayerInfo[playerid][pSnack], 50);
    Inventory_Set(playerid, "Sprunk", 2958, PlayerInfo[playerid][pSprunk], 50);
    Inventory_Set(playerid, "Perban", 11738, PlayerInfo[playerid][pHeals], 30);
    Inventory_Set(playerid, "Drugs", 1580, PlayerInfo[playerid][pDrugs], 10);
    Inventory_Set(playerid, "Rokok", 19625, PlayerInfo[playerid][pRokok], 30);
    Inventory_Set(playerid, "Ktp", 1581, PlayerInfo[playerid][pPassport], 10);
    Inventory_Update(playerid);
}
stock Inventory_Update(playerid)
{
	new str[256], string[256], totalall, quantitybar;
	for(new i = 0; i < MAX_INVENTORY; i++)
	{
	    totalall += InventoryData[playerid][i][invTotalQuantity];
		format(str, sizeof(str), "%.1f/850.0", float(totalall));
		PlayerTextDrawSetString(playerid, INVNAME[playerid][4], str);
		quantitybar = totalall * 199/850;
	    PlayerTextDrawTextSize(playerid, INVNAME[playerid][2], quantitybar, 13.0);
		if(InventoryData[playerid][i][invExists])
		{
			//sesuakian dengan object item kalian
			strunpack(string, InventoryData[playerid][i][invItem]);
			format(str, sizeof(str), "%s", string);
			PlayerTextDrawSetString(playerid, NAMETD[playerid][i], str);
			format(str, sizeof(str), "%dx", InventoryData[playerid][i][invAmount]);
			PlayerTextDrawSetString(playerid, AMOUNTTD[playerid][i], str);
		}
		else
		{
			PlayerTextDrawHide(playerid, AMOUNTTD[playerid][i]);
			PlayerTextDrawHide(playerid, MODELTD[playerid][i]);
			PlayerTextDrawHide(playerid, NAMETD[playerid][i]);
		}
	}
}
stock MenuStore_SelectRow(playerid, row)
{
	SelectItem[playerid] = row;
    PlayerTextDrawHide(playerid,INDEXTD[playerid][row]);
	PlayerTextDrawColor(playerid, INDEXTD[playerid][row], hud_green_transparant);
	PlayerTextDrawShow(playerid,INDEXTD[playerid][row]);
}
stock MenuStore_UnselectRow(playerid)
{
	if(SelectItem[playerid] != -1)
	{
		new row = SelectItem[playerid];
		PlayerTextDrawHide(playerid,INDEXTD[playerid][row]);
		PlayerTextDrawColor(playerid, INDEXTD[playerid][row], hud_transparant);
		PlayerTextDrawShow(playerid,INDEXTD[playerid][row]);
	}

	SelectItem[playerid] = -1;
}

CMD:openinventory(playerid)
{
	if(BukaInventory[playerid] == 1) return 1;
	Inventory_Show(playerid);
	return 1;
}
